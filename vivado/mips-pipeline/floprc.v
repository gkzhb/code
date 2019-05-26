`timescale 1ns / 1ps

module floprc #(parameter WIDTH = 8)
	(input CLK, RESET, CLEAR,
	input [WIDTH - 1:0] d,
	output [WIDTH - 1:0] q);

	reg [WIDTH - 1:0] dt;
	assign q = dt;

	always @(posedge CLK, posedge RESET)
		if (RESET)
			dt <= 0;
		else
			if (CLEAR)
				dt <= 0;
			else
				dt <= d;
endmodule
