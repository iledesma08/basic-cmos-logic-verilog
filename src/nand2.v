// nand2.v
// This module implements a NAND gate in Verilog.

module nand2(input a, b, output y);
    assign y = ~(a & b);
endmodule
