`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2023 10:08:09 PM
// Design Name: 
// Module Name: priority_arbiter
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


module priority_arbiter #(
  parameter PORTS = 4
)(
    input       wire[PORTS-1:0] req,
    output      wire[PORTS-1:0] gnt   
);
  // Port[0] has highest priority
  assign gnt[0] = req[0];

  genvar i;
  for (i=1; i<PORTS; i=i+1) begin
    assign gnt[i] = req[i] & ~(|gnt[i-1:0]);
  end
endmodule
