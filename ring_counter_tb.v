`timescale 1ns/1ps

module ring_counter_tb;

    reg clk;
    reg reset;

    wire [3:0] q;

    // Instantiate Ring Counter
    ring_counter uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        // Generate waveform
        $dumpfile("waveform.vcd");
        $dumpvars(0, ring_counter_tb);

        clk = 0;
        reset = 1;

        // Apply reset
        #12;
        reset = 0;

        // Display counter values
        #3;
        $display("Time = %0t | Ring Counter = %b", $time, q);

        #10;
        $display("Time = %0t | Ring Counter = %b", $time, q);

        #10;
        $display("Time = %0t | Ring Counter = %b", $time, q);

        #10;
        $display("Time = %0t | Ring Counter = %b", $time, q);

        #10;
        $display("Time = %0t | Ring Counter = %b", $time, q);

        #10;
        $display("Time = %0t | Ring Counter = %b", $time, q);

        #20;

        $display("--------------------------------");
        $display("Simulation Completed");
        $display("--------------------------------");

        $finish;

    end

endmodule