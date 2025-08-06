// test_nor2.v
// This module tests the nor2 module by applying various inputs and observing the output.

`timescale 1ns/1ps // Define the time scale for simulation (time unit and time precision)

module test_nor2;
  reg a, b; // Input signals (variables used to hold values and assign them in procedural blocks, like initial)
  wire y; // Output signal (signal type used to connect components, reflects the output of a gate or module)

  nor2 uut (.a(a), .b(b), .y(y)); // Instantiate the nor2 module (instance name is "Unit Under Test" or UUT)
                                  // and connect the 'a' port of the module to the 'a' signal in the testbench,
                                  // the 'b' port to the 'b' signal, and the 'y' port to the 'y' signal.

  initial begin // Simulation start
    $dumpfile("test/waves/nor2.vcd"); // Create a VCD file for waveform output
    $dumpvars(0, test_nor2); // Dump all variables (0) in the test_nor2 module

    a = 0; b = 0; #10; // Apply inputs 0, 0 for 10 nanoseconds
    a = 0; b = 1; #10; // Apply inputs 0, 1 for 10 nanoseconds
    a = 1; b = 0; #10; // Apply inputs 1, 0 for 10 nanoseconds
    a = 1; b = 1; #10; // Apply inputs 1, 1 for 10 nanoseconds

    $finish; // End the simulation
  end
endmodule