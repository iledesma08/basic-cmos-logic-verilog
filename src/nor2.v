// nor2.v
// This module implements a NOR gate in Verilog.

module nor2(input a, b, output y);
    assign y = ~(a | b);
endmodule
