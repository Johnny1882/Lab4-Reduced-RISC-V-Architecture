//Creating ALU Mux
//Now create top level design which connects regfile, mux, alu with wires

module ALUMux # (
    parameter Data_Width = 32,

) (
    //Interface signals
    input logic [Data_Width-1:0] regOp2; //Output if mux select is 0
    input logic [Data_Width-1:0] ImmOp; //Output if mux select is 1
    input ALUSrc; //mux select
    output logic [Data_Width-1:0] ALUOp2; //2nd output of ALU
);

ALUOp2 = (ALUsrc) ? regOp2:ImmOp;

endmodule

