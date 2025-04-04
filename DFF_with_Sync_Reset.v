module Rising_Edge_DFF_with_Sync_Reset(
	input D,
	input clk,
	input Sync_Reset,
	output reg Q
);

always @(posedge clk)
begin

	if(Sync_Reset == 1'b1)
		Q <= 1'b0;
	else
		Q <= D;
	
end

endmodule

module Falling_Edge_DFF_with_Sync_Reset(
	input D,
	input clk,
	input Sync_Reset,
	output reg Q
);

always @(negedge clk)
begin

	if(Sync_Reset == 1'b1)
		Q <= 1'b0;
	else
		Q <= D;
	
end

endmodule
