// 4-bit Ring Counter
// The counter circulates a single '1' through the four bits.

module ring_counter(
    input clk,
    input reset,
    output reg [3:0] q
);

    always @(posedge clk or posedge reset) begin

        if (reset)
            q <= 4'b0001;

        else
            q <= {q[2:0], q[3]};

    end

endmodule