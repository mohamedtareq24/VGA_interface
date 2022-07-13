module V_sync (
  input  clk,         // clk = H_sync
  output pulse,
  output reg [9:0] line   // 0 -> 628
);


always @( posedge clk) begin
    if (line < 628)
        line <= line + 1 ;
    else
        line  <= 0 ;       
end

assign pulse = (line > (601) && line <= 605) ; 

endmodule //V_sync