// test_inverter.v
// This module tests the inverter module by applying various inputs and observing the output.

`timescale 1ns/1ps // Define the time scale for simulation (time unit and time precision)

module test_inverter;
  reg a; // Input signal (variable used to hold a value and assign it in procedural blocks, like initial)
  wire y; // Output signal (signal type used to connect components, reflects the output of a gate or module)

  inverter uut (.a(a), .y(y)); // Instantiate the inverter module (instance name is "Unit Under Test" or UUT) 
                               // and connect the 'a' port of the module to the 'a' signal in the testbench and 'y' port to the 'y' signal.

  initial begin // Simulation start
    $dumpfile("test/waves/inverter.vcd"); // Create a VCD file for waveform output
    $dumpvars(0, test_inverter); // Dump all variables (0) in the test_inverter module

    a = 0; #10; // Apply input 0 for 10 nanoseconds
    a = 1; #10; // Apply input 1 for 10 nanoseconds
    a = 0; #10; // Apply input 0 for 10 nanoseconds

    $finish; // End the simulation
  end
endmodule
