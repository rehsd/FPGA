module rehsd_gfx_writer_master_lite_v1_0_M00_AXI #
(
    // Users to add parameters here

    // User parameters ends

    //parameter  C_M_START_DATA_VALUE	= 32'hFF00FFFF,
    //parameter  C_M_TARGET_SLAVE_BASE_ADDR	= 32'h30900000,
    parameter integer C_M_AXI_ADDR_WIDTH	= 32,
    parameter integer C_M_AXI_DATA_WIDTH	= 32,
    parameter integer C_M_TRANSACTIONS_NUM	= 1
)
(
    // ***** Users to add ports here *****
    input wire [31:0] addr_to_write,
    input wire [31:0] color_to_write,
    // ***** User ports ends *************
    

    // Initiate AXI transactions
    input wire  INIT_AXI_TXN,
    // Asserts when ERROR is detected
    output reg  ERROR,
    // Asserts when AXI transactions is complete
    output wire  TXN_DONE,
    // AXI clock signal
    input wire  M_AXI_ACLK,
    // AXI active low reset signal
    input wire  M_AXI_ARESETN,
    // Master Interface Write Address Channel ports. Write address (issued by master)
    output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_AWADDR,
    // Write channel Protection type.
    // This signal indicates the privilege and security level of the transaction,
    // and whether the transaction is a data access or an instruction access.
    output wire [2 : 0] M_AXI_AWPROT,
    // Write address valid. 
    // This signal indicates that the master signaling valid write address and control information.
    output wire  M_AXI_AWVALID,
    // Write address ready. 
    // This signal indicates that the slave is ready to accept an address and associated control signals.
    input wire  M_AXI_AWREADY,
    // Master Interface Write Data Channel ports. Write data (issued by master)
    output wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_WDATA,
    // Write strobes. 
    // This signal indicates which byte lanes hold valid data.
    // There is one write strobe bit for each eight bits of the write data bus.
    output wire [C_M_AXI_DATA_WIDTH/8-1 : 0] M_AXI_WSTRB,
    // Write valid. This signal indicates that valid write data and strobes are available.
    output wire  M_AXI_WVALID,
    // Write ready. This signal indicates that the slave can accept the write data.
    input wire  M_AXI_WREADY,
    // Master Interface Write Response Channel ports. 
    // This signal indicates the status of the write transaction.
    input wire [1 : 0] M_AXI_BRESP,
    // Write response valid. 
    // This signal indicates that the channel is signaling a valid write response
    input wire  M_AXI_BVALID,
    // Response ready. This signal indicates that the master can accept a write response.
    output wire  M_AXI_BREADY,
    // Master Interface Read Address Channel ports. Read address (issued by master)
    output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_ARADDR,
    // Protection type. 
    // This signal indicates the privilege and security level of the transaction, 
    // and whether the transaction is a data access or an instruction access.
    output wire [2 : 0] M_AXI_ARPROT,
    // Read address valid. 
    // This signal indicates that the channel is signaling valid read address and control information.
    output wire  M_AXI_ARVALID,
    // Read address ready. 
    // This signal indicates that the slave is ready to accept an address and associated control signals.
    input wire  M_AXI_ARREADY,
    // Master Interface Read Data Channel ports. Read data (issued by slave)
    input wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_RDATA,
    // Read response. This signal indicates the status of the read transfer.
    input wire [1 : 0] M_AXI_RRESP,
    // Read valid. This signal indicates that the channel is signaling the required read data.
    input wire  M_AXI_RVALID,
    // Read ready. This signal indicates that the master can accept the read data and response information.
    output wire  M_AXI_RREADY
);

// function called clogb2 that returns an integer which has the value of the ceiling of the log base 2
 function integer clogb2 (input integer bit_depth);
     begin
     for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
         bit_depth = bit_depth >> 1;
     end
 endfunction

// TRANS_NUM_BITS is the width of the index counter for number of write or read transaction.
 localparam integer TRANS_NUM_BITS = clogb2(C_M_TRANSACTIONS_NUM-1);

// Example State machine to initialize counter, initialize write transactions, 
// initialize read transactions and comparison of read data with the written data words.
localparam [1:0] IDLE           = 2'b00;   
localparam [1:0] INIT_WRITE     = 2'b01; 

localparam [1:0] WADDR          = 2'b10; 
localparam [1:0] WDATA          = 2'b11; 

reg [1:0] mst_exec_state;
reg [1:0] state_write;

// AXI4LITE signals
//write address valid
reg  	axi_awvalid;
//write data valid
reg  	axi_wvalid;
//read address valid
reg  	axi_arvalid;
//read data acceptance
reg  	axi_rready;
//write response acceptance
reg  	axi_bready;
//write address
reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
//write data
reg [C_M_AXI_DATA_WIDTH-1 : 0] 	axi_wdata;
//read addresss
reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
//Asserts when there is a write response error
wire  	write_resp_error;
//flag that marks the completion of write trasactions. The number of write transaction is user selected by the parameter C_M_TRANSACTIONS_NUM.
reg  	writes_done;
//The error register is asserted when any of the write response error, read response error or the data mismatch flags are asserted.
reg  	error_reg;
//Flag marks the completion of comparison of the read data with the expected read data
reg  	txn_done_reg;
reg  	init_txn_ff;
reg  	init_txn_ff2;
reg  	init_txn_edge;
wire  	init_txn_pulse;


// I/O Connections assignments

//Adding the offset address to the base addr of the slave
//assign M_AXI_AWADDR	= C_M_TARGET_SLAVE_BASE_ADDR + axi_awaddr;
assign M_AXI_AWADDR	= addr_to_write;
//AXI 4 write data
assign M_AXI_WDATA	= axi_wdata;
assign M_AXI_AWPROT	= 3'b001;
assign M_AXI_AWVALID	= axi_awvalid;
//Write Data(W)
assign M_AXI_WVALID	= axi_wvalid;
//Set all byte strobes in this example
assign M_AXI_WSTRB	= 4'b1111;
//Write Response (B)
assign M_AXI_BREADY	= axi_bready;
//Read Address (AR)
//assign M_AXI_ARADDR	= C_M_TARGET_SLAVE_BASE_ADDR + axi_araddr;
assign M_AXI_ARADDR	= addr_to_write;
assign M_AXI_ARVALID	= axi_arvalid;
assign M_AXI_ARPROT	= 3'b001;
//Read and Read Response (R)
assign M_AXI_RREADY	= axi_rready;
//Example design I/O
assign TXN_DONE	= txn_done_reg;
assign init_txn_pulse	= (!init_txn_ff2) && init_txn_ff;


//Generate a pulse to initiate AXI transaction.
always @(posedge M_AXI_ACLK)										      
  begin                                                                        
    // Initiates AXI transaction delay    
    if (M_AXI_ARESETN == 0 )                                                   
      begin                                                                    
        init_txn_ff <= 1'b0;                                                   
        init_txn_ff2 <= 1'b0;                                                   
      end                                                                               
    else                                                                       
      begin  
        init_txn_ff <= INIT_AXI_TXN;
        init_txn_ff2 <= init_txn_ff;                                                                 
      end                                                                      
  end     


  always @(posedge M_AXI_ACLK)										      
  begin                                                                        
    if (M_AXI_ARESETN == 0 || init_txn_pulse)                                                   
      begin                                                                    
        axi_awvalid <= 1'b0;                                                   
        axi_awaddr <= addr_to_write;                                                   
        axi_wvalid <= 1'b0;                                                                                                   
        axi_wdata <= color_to_write;                                                   
        axi_bready <= 1'b0;                                                   
        if (init_txn_pulse) state_write <= IDLE;                                                    
      end                                                                      
    else                                                                       
      begin                                                                    
        case(state_write)                                                
          IDLE:                                                                
            begin                                               
              if (!init_txn_pulse && mst_exec_state == INIT_WRITE)                                                                  
                begin                                                          
                  axi_awvalid <= 1;                                            
                  axi_wvalid <= 1;                                             
                  state_write <= WADDR;                                             
                end                                             
              else                                             
                begin                                                                                       
                  if (M_AXI_BVALID && axi_bready) axi_bready <= 0;                                             
                end                                             
           end                                             


        //--------------------
        //Write Address Channel
        //--------------------

        WADDR:
        begin  
            if (M_AXI_AWREADY && axi_awvalid) begin  
                axi_awvalid <= 0;               //Deassert after address is acknowledged  
                axi_awaddr <= addr_to_write;    // ✅ Ensure correct address  
                axi_wvalid <= 1;                //Prepare for data write  
        
                if (M_AXI_WREADY) begin  
                    axi_wvalid <= 0;                //Deassert after write acknowledgment  
                    axi_bready <= 1;                //Prepare to accept write response  
                    axi_wdata <= color_to_write;    // ✅ Write correct color data  
                    state_write <= IDLE;            //Move to next state  
                end  
                else begin  
                    axi_bready <= 0;  
                    axi_wdata <= color_to_write;  
                    state_write <= WDATA;       // ✅ Ensure proper transition  
                end  
            end  
            else begin  
                if (axi_bready && M_AXI_BVALID) axi_bready <= 0;  
            end  
        end  
                                                  


        //--------------------
        //Write Data Channel
        //--------------------

         WDATA:                                             
            begin  
                if (M_AXI_WREADY && axi_wvalid) begin  
                    axi_wvalid <= 0;                // ✅ Deassert after write acknowledgment  
                    axi_bready <= 1;                // ✅ Prepare to accept response  
                    axi_wdata <= color_to_write;    // ✅ Ensure correct pixel color is written  
                    state_write <= IDLE;            // ✅ Move to next appropriate state  
                end  
                else if (!M_AXI_WREADY) begin  
                    axi_wvalid <= 1;                // ✅ Hold write request until slave is ready  
                    axi_wdata <= color_to_write;    // ✅ Ensure data is stable  
                    state_write <= WDATA;           // ✅ Stay in this state until transaction completes  
                end  
            end  
        endcase										      
      end										      
  end										      

//Flag write errors                                                    
assign write_resp_error = (axi_bready & M_AXI_BVALID & M_AXI_BRESP[1]);



//--------------------------------
//User Logic
//--------------------------------

  //implement master command interface state machine                         
  always @ ( posedge M_AXI_ACLK)                                                    
  begin                                                                             
    if (M_AXI_ARESETN == 1'b0)                                                     
      begin                                                                         
      // reset condition                                                            
        mst_exec_state  <= IDLE;                                            
        txn_done_reg  <= 1'b0;                                                      
        ERROR <= 1'b0;
      end                                                                           
    else                                                                            
      begin                                                                         
       // state transition                                                          
        case (mst_exec_state)                                                       
                                                                                    
          IDLE:                                                             
          // This state is responsible to initiate AXI transaction when init_txn_pulse is asserted 
            if ( init_txn_pulse == 1'b1 )                                     
              begin                                                                 
                mst_exec_state  <= INIT_WRITE;                                      
                ERROR <= 1'b0;
                txn_done_reg <= 1'b0;
              end                                                                   
                                                                                    
          INIT_WRITE:                                                               
            // This state is responsible to issue start_single_write pulse to initiate a write transaction. 
            // Write transactions will be issued until last_write signal is asserted.                          
            // write controller                                                     
            if (writes_done)                                                        
              begin           
                mst_exec_state <= IDLE;
                txn_done_reg <= 1;
                ERROR <= M_AXI_BRESP[1];                                            
              end                                                                   
        endcase                                                                     
    end                                                                             
  end                                                       
                                                                                    
  //Terminal write count                                                            
                                                                                    
  always @(posedge M_AXI_ACLK)                                                      
  begin                                                                             
    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                         
      writes_done <= 1'b0;                                                          
                                                                                    
      //The writes_done should be associated with a bready response                 
    else if (M_AXI_BVALID && axi_bready)                              
      writes_done <= 1'b1;                                                           
  end                                                                               
                                                                         
                                                                             
// Add user logic here

// User logic ends

endmodule