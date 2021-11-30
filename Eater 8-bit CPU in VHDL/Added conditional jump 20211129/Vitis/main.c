#include "bitmap.h"
#include "PmodOLEDrgb.h"
#include "sleep.h"
#include "xil_cache.h"
#include "xparameters.h"
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include "xgpio.h"
#include "xstatus.h"

#define GPIO_DEVICE_ID0		XPAR_AXI_GPIO_0_DEVICE_ID
#define GPIO_DEVICE_ID1 	XPAR_AXI_GPIO_1_DEVICE_ID

void EnableCaches();
void DisableCaches();
void OLEDInitialize();
void UpdateClock();
void UpdateClockSpeed();
void UpdateStep();
void OLEDCleanup();
void UpdateOLED();
void DrawStaticText();
void UpdateMemoryAddress();
void UpdateMemoryValue();
void UpdateBus();
void UpdateProgramCounter();
void UpdateInstructionRegister();
void UpdateSum();
void UpdateRegisterA();
void UpdateRegisterB();
void UpdateControl();
void UpdateOutput();
void UpdateDebugInfo();
void UpdateFlags();

//gpio0 ch1
const u32 MASK_PROGRAM_COUNTER	= 31457280;
const u32 MASK_BUS				= 2088960;
const u32 MASK_MEM_VAL			= 8160;
const u32 MASK_MEM_ADDR			= 30;
const u32 MASK_CLOCK			= 1;

//gpio0 ch2
const u32 MASK_OUT				= 4278190080;
const u32 MASK_SUM				= 16711680;
const u32 MASK_REG_B			= 65280;
const u32 MASK_REG_A			= 255;

//gpio1 ch1
const u32 MASK_CONTROL			= 16776960;
const u32 MASK_INSTR_REG		= 255;

//gpio1 ch2
const u32 MASK_STEP				= 939524096;
const u32 MASK_CLKSPD_DELAY		= 134217727;


PmodOLEDrgb oledrgb;
XGpio Gpio0;
XGpio Gpio1;
u32 lastClockSpeed=0;

u32 gpio0_ch1_status=0;
u32 gpio0_ch2_status=0;
u32 gpio1_ch1_status=0;
u32 gpio1_ch2_status=0;


int main(void) {
	OLEDInitialize();
	int status0, status1;
    status0 = XGpio_Initialize(&Gpio0, GPIO_DEVICE_ID0);
    status1 = XGpio_Initialize(&Gpio1, GPIO_DEVICE_ID1);
    Gpio0.IsDual=1;		//automatically seen as dual correctly
    Gpio1.IsDual=1;		//have to manually set to see it as a dual (bug?)
    if (status0 == XST_SUCCESS && status1 == XST_SUCCESS)
    {
        XGpio_SetDataDirection(&Gpio0, 1, 0xffffffff);		//gpio, channel, direction
        XGpio_SetDataDirection(&Gpio0, 2, 0xffffffff);		//gpio, channel, direction
        XGpio_SetDataDirection(&Gpio1, 1, 0xffffffff);		//gpio, channel, direction
        XGpio_SetDataDirection(&Gpio1, 2, 0xffffffff);		//gpio, channel, direction

        DrawStaticText();
        while(1) {UpdateOLED();}	//loop forever
    }
	OLEDCleanup();	//won't ever get here
	return 0;
}
void UpdateOLED()
{
	gpio0_ch1_status = XGpio_DiscreteRead(&Gpio0, 1);		//gpio, channel
	gpio0_ch2_status = XGpio_DiscreteRead(&Gpio0, 2);		//gpio, channel
	gpio1_ch1_status = XGpio_DiscreteRead(&Gpio1, 1);		//gpio, channel
	gpio1_ch2_status = XGpio_DiscreteRead(&Gpio1, 2);		//gpio, channel

	UpdateClock();
	UpdateClockSpeed();
	UpdateProgramCounter();
	UpdateBus();
	UpdateMemoryAddress();
	UpdateMemoryValue();

	UpdateRegisterA();
	UpdateRegisterB();
	UpdateSum();
	UpdateOutput();

	UpdateInstructionRegister();
	UpdateStep();
	UpdateControl();

	UpdateDebugInfo();
	UpdateFlags();
}
void DrawStaticText()
{
	OLEDrgb_SetCursor(&oledrgb, 0, 0);
	OLEDrgb_SetFontColor(&oledrgb, OLEDrgb_BuildRGB(255, 0, 0));
	OLEDrgb_PutString(&oledrgb, "MEM");

	OLEDrgb_SetCursor(&oledrgb, 0, 2);
	OLEDrgb_SetFontColor(&oledrgb, OLEDrgb_BuildRGB(255, 0, 0));
	OLEDrgb_PutString(&oledrgb, "INS");

	OLEDrgb_SetCursor(&oledrgb, 0, 4);
	OLEDrgb_SetFontColor(&oledrgb, OLEDrgb_BuildRGB(255, 0, 0));
	OLEDrgb_PutString(&oledrgb, "CLK");

	OLEDrgb_SetCursor(&oledrgb, 0, 6);
	OLEDrgb_SetFontColor(&oledrgb, OLEDrgb_BuildRGB(255, 0, 0));
	OLEDrgb_PutString(&oledrgb, "CTL");

	OLEDrgb_SetCursor(&oledrgb, 4, 6);
	OLEDrgb_SetFontColor(&oledrgb, OLEDrgb_BuildRGB(255, 255, 0));
	OLEDrgb_PutString(&oledrgb, "D");


	OLEDrgb_SetCursor(&oledrgb, 5, 0);
	OLEDrgb_SetFontColor(&oledrgb, OLEDrgb_BuildRGB(255, 0, 0));
	OLEDrgb_PutString(&oledrgb, "BUS");

	OLEDrgb_SetCursor(&oledrgb, 5, 2);
	OLEDrgb_SetFontColor(&oledrgb, OLEDrgb_BuildRGB(255, 0, 0));
	OLEDrgb_PutString(&oledrgb, "SUM");

	OLEDrgb_SetCursor(&oledrgb, 5, 4);
	OLEDrgb_SetFontColor(&oledrgb, OLEDrgb_BuildRGB(255, 0, 0));
	OLEDrgb_PutString(&oledrgb, "STP");

	OLEDrgb_SetCursor(&oledrgb, 9, 0);
	OLEDrgb_SetFontColor(&oledrgb, OLEDrgb_BuildRGB(255, 0, 0));
	OLEDrgb_PutString(&oledrgb, "CTR");

	OLEDrgb_SetCursor(&oledrgb, 9, 2);
	OLEDrgb_SetFontColor(&oledrgb, OLEDrgb_BuildRGB(255, 0, 0));
	OLEDrgb_PutString(&oledrgb, " A");

	OLEDrgb_SetCursor(&oledrgb, 9, 4);
	OLEDrgb_SetFontColor(&oledrgb, OLEDrgb_BuildRGB(255, 0, 0));
	OLEDrgb_PutString(&oledrgb, " B");

	OLEDrgb_SetCursor(&oledrgb, 9, 6);
	OLEDrgb_SetFontColor(&oledrgb, OLEDrgb_BuildRGB(255, 0, 0));
	OLEDrgb_PutString(&oledrgb, "OUT");

	OLEDrgb_SetCursor(&oledrgb, 7, 7);
	OLEDrgb_SetFontColor(&oledrgb, OLEDrgb_BuildRGB(255, 0, 255));
	OLEDrgb_PutString(&oledrgb, "F");

}
void UpdateClock() {
		if((gpio0_ch1_status&MASK_CLOCK)==0 && lastClockSpeed<14)
		{
			OLEDrgb_DrawRectangle(&oledrgb, 30,32,34,38, OLEDrgb_BuildRGB(0, 0, 255), 1 ,OLEDrgb_BuildRGB(0, 0, 0));
		}
		else if((gpio0_ch1_status&1)==1 && lastClockSpeed<14)
		{
			OLEDrgb_DrawRectangle(&oledrgb, 30,32,34,38, OLEDrgb_BuildRGB(255, 255, 255), 1 ,OLEDrgb_BuildRGB(255, 255, 255));
		}
		else
		{
			OLEDrgb_DrawRectangle(&oledrgb, 30,32,34,38, OLEDrgb_BuildRGB(255, 255, 255), 1 ,OLEDrgb_BuildRGB(255, 255, 255));
		}
}
void UpdateClockSpeed()
{
	u32 clockDelay = gpio1_ch2_status&MASK_CLKSPD_DELAY;
	u32 clockSpeed = (float)1.0/((float)clockDelay/(float)100000000*2);
	lastClockSpeed = clockSpeed;
	OLEDrgb_SetCursor(&oledrgb, 0, 5);
	OLEDrgb_SetFontColor(&oledrgb, OLEDrgb_BuildRGB(0, 0, 255));
	char speed[5]={0};
	itoa(clockSpeed, speed, 10);		//10 is base

	if(clockSpeed<10)
	{
		speed[4]=speed[0];	//TO DO: find a better way to right align
		speed[3]=' ';
		speed[2]=' ';
		speed[1]=' ';
		speed[0]=' ';
		OLEDrgb_PutString(&oledrgb, speed);
	}
	else if(clockSpeed<100)
	{
		speed[4]=speed[1];
		speed[3]=speed[0];
		speed[2]=' ';
		speed[1]=' ';
		speed[0]=' ';
		OLEDrgb_PutString(&oledrgb, speed);
	}
	else if(clockSpeed<1000)
	{
		speed[4]=speed[2];
		speed[3]=speed[1];
		speed[2]=speed[0];
		speed[1]=' ';
		speed[0]=' ';
		OLEDrgb_PutString(&oledrgb, speed);
	}
	else if(clockSpeed<10000)
	{
		speed[4]=speed[3];
		speed[3]=speed[2];
		speed[2]=speed[1];
		speed[1]=speed[0];
		speed[0]=' ';
		OLEDrgb_PutString(&oledrgb, speed);
	}
	else if(clockSpeed<88888)
	{
		speed[4]=speed[4];
		speed[3]=speed[3];
		speed[2]=speed[2];
		speed[1]=speed[1];
		speed[0]=speed[0];
		OLEDrgb_PutString(&oledrgb, speed);
	}
	else
	{
		OLEDrgb_PutString(&oledrgb, "88888");
	}
}
void UpdateFlags()
{
		//CPU flag register
		//Only 2 bits for now
		u32 dbg = gpio1_ch2_status&3221225472;
		dbg = dbg>>30;

		if(dbg&1)		//Carry flag
		{
			OLEDrgb_DrawRectangle(&oledrgb, 64,56,66,62, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
		}
		else
		{
			OLEDrgb_DrawRectangle(&oledrgb, 64,56,66,62, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
		}
		if(dbg&2)		//Zero flag
		{
			OLEDrgb_DrawRectangle(&oledrgb, 67,56,69,62, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
		}
		else
		{
			OLEDrgb_DrawRectangle(&oledrgb, 67,56,69,62, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
		}
}
void UpdateDebugInfo()
{
	u32 currentControlADDR = gpio1_ch1_status&4278190080;
	currentControlADDR = currentControlADDR>>24;

	u32 dbg = gpio1_ch2_status&3221225472;
	dbg = dbg>>30;

	if(currentControlADDR&128)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 41,48,43,54, OLEDrgb_BuildRGB(255,0,255), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 41,48,43,54, OLEDrgb_BuildRGB(255,0,255), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(currentControlADDR&64)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 44,48,46,54, OLEDrgb_BuildRGB(255,0,255), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 44,48,46,54, OLEDrgb_BuildRGB(255,0,255), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(currentControlADDR&32)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 47,48,49,54, OLEDrgb_BuildRGB(255,0,255), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 47,48,49,54, OLEDrgb_BuildRGB(255,0,255), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(currentControlADDR&16)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 50,48,52,54, OLEDrgb_BuildRGB(255,0,255), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 50,48,52,54, OLEDrgb_BuildRGB(255,0,255), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(currentControlADDR&8)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 53,48,55,54, OLEDrgb_BuildRGB(255,0,255), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 53,48,55,54, OLEDrgb_BuildRGB(255,0,255), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(currentControlADDR&4)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 56,48,58,54, OLEDrgb_BuildRGB(255,0,255), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 56,48,58,54, OLEDrgb_BuildRGB(255,0,255), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(currentControlADDR&2)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 59,48,61,54, OLEDrgb_BuildRGB(255,0,255), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 59,48,61,54, OLEDrgb_BuildRGB(255,0,255), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(currentControlADDR&1)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 62,48,64,54, OLEDrgb_BuildRGB(255,0,255), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 62,48,64,54, OLEDrgb_BuildRGB(255,0,255), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(dbg&2)		//Zero flag
	{
		OLEDrgb_DrawRectangle(&oledrgb, 65,48,67,54, OLEDrgb_BuildRGB(255,0,255), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 65,48,67,54, OLEDrgb_BuildRGB(255,0,255), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}

}
void UpdateStep()
{
	//Step
	u32 step = gpio1_ch2_status&MASK_STEP;
	step = step>>27;

	if(step&4)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 46,40,48,46, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 46,40,48,46, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(step&2)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 49,40,51,46, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 49,40,51,46, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(step&1)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 52,40,54,46, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 52,40,54,46, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
}
void UpdateMemoryAddress()
{
	//Memory address

	u32 memAddr = gpio0_ch1_status&MASK_MEM_ADDR;
	memAddr = memAddr>>1;


	if(memAddr&8)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 0,8,2,14, OLEDrgb_BuildRGB(50,50,200), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 0,8,2,14, OLEDrgb_BuildRGB(50,50,200), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(memAddr&4)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 3,8,5,14, OLEDrgb_BuildRGB(50,50,200), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 3,8,5,14, OLEDrgb_BuildRGB(50,50,200), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(memAddr&2)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 6,8,8,14, OLEDrgb_BuildRGB(50,50,200), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 6,8,8,14, OLEDrgb_BuildRGB(50,50,200), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(memAddr&1)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 9,8,11,14, OLEDrgb_BuildRGB(50,50,200), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 9,8,11,14, OLEDrgb_BuildRGB(50,50,200), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
}
void UpdateMemoryValue()
{
	//Memory value

	u32 memVal = gpio0_ch1_status&MASK_MEM_VAL;
	memVal = memVal>>5;


	if(memVal&128)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 12,8,14,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 12,8,14,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(memVal&64)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 15,8,17,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 15,8,17,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(memVal&32)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 18,8,20,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 18,8,20,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(memVal&16)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 21,8,23,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 21,8,23,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(memVal&8)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 24,8,26,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 24,8,26,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(memVal&4)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 27,8,29,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 27,8,29,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(memVal&2)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 30,8,32,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 30,8,32,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(memVal&1)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 33,8,35,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 33,8,35,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
}
void UpdateBus()
{
	//Bus

	u32 bus = gpio0_ch1_status&MASK_BUS;
	bus = bus>>13;

	if(bus&128)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 41,8,43,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 41,8,43,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(bus&64)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 44,8,46,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 44,8,46,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(bus&32)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 47,8,49,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 47,8,49,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(bus&16)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 50,8,52,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 50,8,52,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(bus&8)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 53,8,55,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 53,8,55,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(bus&4)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 56,8,58,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 56,8,58,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(bus&2)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 59,8,61,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 59,8,61,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(bus&1)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 62,8,64,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 62,8,64,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
}
void UpdateProgramCounter()
{
	//Program Counter

	u32 programCounter = gpio0_ch1_status&MASK_PROGRAM_COUNTER;
	programCounter = programCounter>>21;

	//OLEDrgb_DrawRectangle(&oledrgb, 71,8,73,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	//OLEDrgb_DrawRectangle(&oledrgb, 74,8,76,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));

	if(programCounter&8)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 77,8,79,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 77,8,79,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(programCounter&4)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 80,8,82,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 80,8,82,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(programCounter&2)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 83,8,85,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 83,8,85,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(programCounter&1)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 86,8,88,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 86,8,88,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}


	//OLEDrgb_DrawRectangle(&oledrgb, 89,8,91,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	//OLEDrgb_DrawRectangle(&oledrgb, 92,8,94,14, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
}
void UpdateInstructionRegister()
{
	//Instruction register

	u32 instrReg = gpio1_ch1_status&MASK_INSTR_REG;

	if(instrReg&128)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 12,24,14,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 12,24,14,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(instrReg&64)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 15,24,17,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 15,24,17,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(instrReg&32)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 18,24,20,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 18,24,20,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(instrReg&16)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 21,24,23,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 21,24,23,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(instrReg&8)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 24,24,26,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 24,24,26,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(instrReg&4)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 27,24,29,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 27,24,29,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(instrReg&2)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 30,24,32,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 30,24,32,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(instrReg&1)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 33,24,35,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 33,24,35,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
}
void UpdateSum()
{
	//Sum
	u32 sum = gpio0_ch2_status&MASK_SUM;
	sum = sum>>16;

	if(sum&128)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 41,24,43,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 41,24,43,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(sum&64)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 44,24,46,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 44,24,46,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(sum&32)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 47,24,49,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 47,24,49,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(sum&16)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 50,24,52,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 50,24,52,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(sum&8)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 53,24,55,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 53,24,55,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(sum&4)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 56,24,58,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 56,24,58,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(sum&2)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 59,24,61,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 59,24,61,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(sum&1)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 62,24,64,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 62,24,64,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
}
void UpdateRegisterA()
{
	//A register

	u32 registerA = gpio0_ch2_status&MASK_REG_A;

	if(registerA&128)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 71,24,73,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 71,24,73,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(registerA&64)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 74,24,76,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 74,24,76,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(registerA&32)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 77,24,79,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 77,24,79,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(registerA&16)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 80,24,82,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 80,24,82,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(registerA&8)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 83,24,85,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 83,24,85,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(registerA&4)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 86,24,88,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 86,24,88,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(registerA&2)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 89,24,91,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 89,24,91,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(registerA&1)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 92,24,94,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 92,24,94,30, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
}
void UpdateRegisterB()
{
	//B register

	u32 registerB = gpio0_ch2_status&MASK_REG_B;
	registerB = registerB>>8;

	if(registerB&128)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 71,40,73,46, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 71,40,73,46, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(registerB&64)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 74,40,76,46, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 74,40,76,46, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(registerB&32)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 77,40,79,46, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 77,40,79,46, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(registerB&16)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 80,40,82,46, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 80,40,82,46, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(registerB&8)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 83,40,85,46, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 83,40,85,46, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(registerB&4)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 86,40,88,46, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 86,40,88,46, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(registerB&2)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 89,40,91,46, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 89,40,91,46, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(registerB&1)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 92,40,94,46, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 92,40,94,46, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
}
void UpdateControl()
{
	//Control

	u32 control = gpio1_ch1_status&MASK_CONTROL;
	control = control>>8;

	if(control&32768)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 0,56,2,62, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 0,56,2,62, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(control&16384)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 3,56,5,62, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 3,56,5,62, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(control&8192)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 6,56,8,62, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 6,56,8,62, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(control&4096)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 9,56,11,62, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 9,56,11,62, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(control&2048)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 12,56,14,62, OLEDrgb_BuildRGB(0,0,50), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 12,56,14,62, OLEDrgb_BuildRGB(0,0,50), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(control&1024)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 15,56,17,62, OLEDrgb_BuildRGB(0,0,50), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 15,56,17,62, OLEDrgb_BuildRGB(0,0,50), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(control&512)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 18,56,20,62, OLEDrgb_BuildRGB(0,0,50), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 18,56,20,62, OLEDrgb_BuildRGB(0,0,50), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(control&256)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 21,56,23,62, OLEDrgb_BuildRGB(0,0,50), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 21,56,23,62, OLEDrgb_BuildRGB(0,0,50), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(control&128)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 24,56,26,62, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 24,56,26,62, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(control&64)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 27,56,29,62, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 27,56,29,62, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(control&32)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 30,56,32,62, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 30,56,32,62, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(control&16)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 33,56,35,62, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 33,56,35,62, OLEDrgb_BuildRGB(20,20,20), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(control&8)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 36,56,38,62, OLEDrgb_BuildRGB(0,0,50), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 36,56,38,62, OLEDrgb_BuildRGB(0,0,50), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(control&4)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 39,56,41,62, OLEDrgb_BuildRGB(0,0,50), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 39,56,41,62, OLEDrgb_BuildRGB(0,0,50), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(control&2)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 42,56,44,62, OLEDrgb_BuildRGB(0,0,50), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 42,56,44,62, OLEDrgb_BuildRGB(0,0,50), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
	if(control&1)
	{
		OLEDrgb_DrawRectangle(&oledrgb, 45,56,47,62, OLEDrgb_BuildRGB(0,0,50), 1 ,OLEDrgb_BuildRGB(255,255,255));
	}
	else
	{
		OLEDrgb_DrawRectangle(&oledrgb, 45,56,47,62, OLEDrgb_BuildRGB(0,0,50), 1 ,OLEDrgb_BuildRGB(0,0,0));
	}
}
void UpdateOutput()
{
	//Output

	u32 output = gpio0_ch2_status&MASK_OUT;
	output = output>>24;

	char outVal[3];
	itoa(output, outVal, 10);

	if(output<10)
	{
		//shift right two and pad with zeros
		outVal[2]=outVal[0];
		outVal[0]=' ';
		outVal[1]=' ';
	}
	else if(output<100)
	{
		//shift right one and pad with zeros
		outVal[2]=outVal[1];
		outVal[1]=outVal[0];
		outVal[0]=' ';
	}
	else
	{
		itoa(output, outVal, 10);
	}


	OLEDrgb_SetCursor(&oledrgb, 9, 7);
	OLEDrgb_SetFontColor(&oledrgb, OLEDrgb_BuildRGB(0, 255, 0));
	OLEDrgb_PutString(&oledrgb, outVal);

}

void OLEDInitialize() {
   EnableCaches();
   OLEDrgb_begin(&oledrgb, XPAR_PMODOLEDRGB_0_AXI_LITE_GPIO_BASEADDR,
         XPAR_PMODOLEDRGB_0_AXI_LITE_SPI_BASEADDR);
}
void OLEDCleanup() {
   DisableCaches();
}

void EnableCaches() {
#ifdef __MICROBLAZE__
#ifdef XPAR_MICROBLAZE_USE_ICACHE
   Xil_ICacheEnable();
#endif
#ifdef XPAR_MICROBLAZE_USE_DCACHE
   Xil_DCacheEnable();
#endif
#endif
}
void DisableCaches() {
#ifdef __MICROBLAZE__
#ifdef XPAR_MICROBLAZE_USE_DCACHE
   Xil_DCacheDisable();
#endif
#ifdef XPAR_MICROBLAZE_USE_ICACHE
   Xil_ICacheDisable();
#endif
#endif
}
