// inverter.v
// This module implements a simple inverter (NOT gate) in Verilog.

module inverter(input a, output y);
    assign y = ~a;
endmodule
