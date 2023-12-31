`include "defines.v"

module  if_id(
    input wire clk,
    input   wire rst,
    input wire [31:0] inst_i,
    input wire [31:0] inst_addr_i,
    output wire [31:0] inst_addr_o,
    output wire [31:0] inst_o
);

    // always @(posedge clk) begin
    //     if(rst == 1'b0)
    //         inst_o <= `INST_NOP;     //NOP
    //     else
    //         inst_o <= inst_i;
    
    // end
    dff_set #(32) dff1(clk, rst,`INST_NOP,inst_i,inst_o);

    dff_set #(32) dff2(clk, rst,32'b0,inst_addr_i,inst_addr_o);



endmodule