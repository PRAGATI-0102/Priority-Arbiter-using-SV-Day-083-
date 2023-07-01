`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2023 10:14:08 PM
// Design Name: 
// Module Name: priority_arbiter_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module priority_arbiter_tb();

    localparam PORTS = 4;

      logic[PORTS-1:0] req;
      logic[PORTS-1:0] gnt;
    
      priority_arbiter #(PORTS) dut (.*);
    
      initial 
      begin
        for (int i=0; i<32; i=i+1) 
        begin
          req = $urandom_range(0, 2**PORTS-1);
          #5;
        end
      end
endmodule
