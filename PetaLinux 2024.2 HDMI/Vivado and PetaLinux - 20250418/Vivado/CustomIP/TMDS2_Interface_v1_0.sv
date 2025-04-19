// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


`ifndef TMDS2_Interface_v1_0
`define TMDS2_Interface_v1_0

package parameter_structs;

  typedef struct packed {
      bit    portEnabled;
      integer    portWidth;
  }portConfig;

  typedef struct packed {
    // <typeName> <LogicalName> = {<enablement>, <width>}
    portConfig AWID;
    portConfig AWADDR;
    portConfig AWLEN;
    portConfig AWLOCK;
    portConfig AWUSER;
    portConfig WID;
    portConfig WDATA;
    portConfig WSTRB;
    portConfig WUSER;
    portConfig BID;
    portConfig BUSER;
    portConfig ARID;
    portConfig ARADDR;
    portConfig ARLEN;
    portConfig ARLOCK;
    portConfig ARUSER;
    portConfig RID;
    portConfig RDATA;
    portConfig RUSER;
  }TMDS2_Interface_v1_0_port_configuration;

  parameter TMDS2_Interface_v1_0_port_configuration TMDS2_Interface_v1_0_default_port_configuration = '{AWID:'{1, -1}, AWADDR:'{1, -1}, AWLEN:'{1, -1}, AWLOCK:'{1, -1}, AWUSER:'{1, -1}, WID:'{1, -1}, WDATA:'{1, -1}, WSTRB:'{1, -1}, WUSER:'{1, -1}, BID:'{1, -1}, BUSER:'{1, -1}, ARID:'{1, -1}, ARADDR:'{1, -1}, ARLEN:'{1, -1}, ARLOCK:'{1, -1}, ARUSER:'{1, -1}, RID:'{1, -1}, RDATA:'{1, -1}, RUSER:'{1, -1}};

endpackage

interface TMDS2_Interface_v1_0 #(parameter_structs::TMDS2_Interface_v1_0_port_configuration port_configuration)();
  logic [port_configuration.AWID.portWidth-1:0] AWID = 0;           // Write address ID
  logic [port_configuration.AWADDR.portWidth-1:0] AWADDR = 0;       // Write address
  logic [port_configuration.AWLEN.portWidth-1:0] AWLEN = 0;         // Burst length
  logic [2:0] AWSIZE;                                                // Burst size
  logic [1:0] AWBURST = 1;                                          // Burst type
  logic [port_configuration.AWLOCK.portWidth-1:0] AWLOCK = 0;       // Lock type
  logic [3:0] AWCACHE = 3;                                          // Cache type
  logic [2:0] AWPROT = 0;                                           // Protection type
  logic [3:0] AWREGION = 0;                                         // Write address slave region
  logic [3:0] AWQOS = 0;                                            // Transaction Quality of Service token
  logic [port_configuration.AWUSER.portWidth-1:0] AWUSER = 0;       // Write address user sideband
  logic AWVALID = 0;                                                // Write address valid
  logic AWREADY = 0;                                                // Write address ready
  logic [port_configuration.WID.portWidth-1:0] WID = 0;             // Write ID tag
  logic [port_configuration.WDATA.portWidth-1:0] WDATA = 0;         // Write data
  logic [port_configuration.WSTRB.portWidth-1:0] WSTRB = 1;         // Write strobes
  logic WLAST = 0;                                                  // Write last beat
  logic [port_configuration.WUSER.portWidth-1:0] WUSER = 0;         // Write data user sideband
  logic WVALID = 0;                                                 // Write valid
  logic WREADY = 0;                                                 // Write ready
  logic [port_configuration.BID.portWidth-1:0] BID = 0;             // Response ID
  logic [1:0] BRESP = 0;                                            // Write response
  logic [port_configuration.BUSER.portWidth-1:0] BUSER = 0;         // Write response user sideband
  logic BVALID = 0;                                                 // Write response valid
  logic BREADY = 0;                                                 // Write response ready
  logic [port_configuration.ARID.portWidth-1:0] ARID = 0;           // Read address ID
  logic [port_configuration.ARADDR.portWidth-1:0] ARADDR = 0;       // Read address
  logic [port_configuration.ARLEN.portWidth-1:0] ARLEN = 0;         // Burst length
  logic [2:0] ARSIZE;                                                // Burst size
  logic [1:0] ARBURST = 1;                                          // Burst type
  logic [port_configuration.ARLOCK.portWidth-1:0] ARLOCK = 0;       // Lock type
  logic [3:0] ARCACHE = 3;                                          // Cache type
  logic [2:0] ARPROT = 0;                                           // Protection type
  logic [3:0] ARREGION = 0;                                         // Read address slave region
  logic [3:0] ARQOS = 0;                                            // Quality of service token
  logic [port_configuration.ARUSER.portWidth-1:0] ARUSER = 0;       // Read address user sideband
  logic ARVALID = 0;                                                // Read address valid
  logic ARREADY = 0;                                                // Read address ready
  logic [port_configuration.RID.portWidth-1:0] RID = 0;             // Read ID tag
  logic [port_configuration.RDATA.portWidth-1:0] RDATA = 0;         // Read data
  logic [1:0] RRESP = 0;                                            // Read response
  logic RLAST = 0;                                                  // Read last beat
  logic [port_configuration.RUSER.portWidth-1:0] RUSER = 0;         // Read user sideband
  logic RVALID = 0;                                                 // Read valid
  logic RREADY = 0;                                                 // Read ready

  modport MASTER (
    input AWREADY, WREADY, BID, BRESP, BUSER, BVALID, ARREADY, RID, RDATA, RRESP, RLAST, RUSER, RVALID, 
    output AWID, AWADDR, AWLEN, AWSIZE, AWBURST, AWLOCK, AWCACHE, AWPROT, AWREGION, AWQOS, AWUSER, AWVALID, WID, WDATA, WSTRB, WLAST, WUSER, WVALID, BREADY, ARID, ARADDR, ARLEN, ARSIZE, ARBURST, ARLOCK, ARCACHE, ARPROT, ARREGION, ARQOS, ARUSER, ARVALID, RREADY
    );

  modport SLAVE (
    input AWID, AWADDR, AWLEN, AWSIZE, AWBURST, AWLOCK, AWCACHE, AWPROT, AWREGION, AWQOS, AWUSER, AWVALID, WID, WDATA, WSTRB, WLAST, WUSER, WVALID, BREADY, ARID, ARADDR, ARLEN, ARSIZE, ARBURST, ARLOCK, ARCACHE, ARPROT, ARREGION, ARQOS, ARUSER, ARVALID, RREADY, 
    output AWREADY, WREADY, BID, BRESP, BUSER, BVALID, ARREADY, RID, RDATA, RRESP, RLAST, RUSER, RVALID
    );

  modport MONITOR (
    input AWID, AWADDR, AWLEN, AWSIZE, AWBURST, AWLOCK, AWCACHE, AWPROT, AWREGION, AWQOS, AWUSER, AWVALID, AWREADY, WID, WDATA, WSTRB, WLAST, WUSER, WVALID, WREADY, BID, BRESP, BUSER, BVALID, BREADY, ARID, ARADDR, ARLEN, ARSIZE, ARBURST, ARLOCK, ARCACHE, ARPROT, ARREGION, ARQOS, ARUSER, ARVALID, ARREADY, RID, RDATA, RRESP, RLAST, RUSER, RVALID, RREADY
    );

endinterface // TMDS2_Interface_v1_0

`endif