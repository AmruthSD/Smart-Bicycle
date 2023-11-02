module speed(clk,reset,result);
  input clk,reset;
  output [8:0]result;
  reg [8:0] spe;
  always @(posedge clk or posedge reset) begin
    if (reset) begin
      spe <= 9'b0;
    end else begin
      spe <= spe + 18;
    end

  end
  assign result = spe;

endmodule

module distance(clk,reset2,result);
  input clk,reset2;
  output [12:0]result;
  reg [12:0]dist;
  always @(posedge clk or posedge reset2) begin
    if (reset2) begin
      dist <= 13'b0;
    end else begin
      dist <= dist + 5;
    end
  end
  assign result = dist;
endmodule
