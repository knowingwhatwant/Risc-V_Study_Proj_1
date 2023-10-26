module ifetch(
    //from pc
    input wire[31:0] pc_addr_i,
    //from rom
    input wire[31:0] rom_inst_i,
    //to rom 
    output wire[31:0] if2rom_addr_o,        //取指令rom地址
    //to if_id
    output wire [31:0] inst_addr_o ,         //指令地址
    output wire [31:0] inst_o               //指令
);

    assign if2rom_addr_o = pc_addr_i;       //to rom

    assign inst_addr_o = pc_addr_i;         //to if_id

    assign inst_o = rom_inst_i;             //to if_id





endmodule





