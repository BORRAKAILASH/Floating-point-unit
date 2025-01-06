module tb();
   reg s,s0;
   reg [2:0]c;
   reg [7:0]e,e0;
   reg [22:0]m,m0;
   wire [31:0]op,op0;
   wire [31:0]add1,sub1,mul1,quo1,rem1,sr1;
   
   flu dut(.s(s),.s0(s0),.e(e),.e0(e0),.m(m),.m0(m0),.op(op),.op0(op0),.add1(add1),.sub1(sub1),.mul1(mul1),.quo1(quo1),.rem1(rem1),.sr1(sr1));
   
   initial begin
     c=3'b000;
     s=1'b1;
     e=8'b01101011;
     m=23'b10111011001110001010010;
     s0=1'b0;
     e0=8'b10110011;
     m0=23'b01101111100110010011011;
     #10;

     c=3'b001;
     s=1'b1;
     e=8'b01101011;
     m=23'b10111011001110001010010;
     s0=1'b0;
     e0=8'b10110011;
     m0=23'b01101111100110010011011;
     #10;

     c=3'b010;
     s=1'b1;
     e=8'b01101011;
     m=23'b10111011001110001010010;
     s0=1'b0;
     e0=8'b10110011;
     m0=23'b01101111100110010011011;
     #10;

     c=3'b011;
     s=1'b1;
     e=8'b01101011;
     m=23'b10111011001110001010010;
     s0=1'b0;
     e0=8'b10110011;
     m0=23'b01101111100110010011011;
     #10;

     c=3'b100;
     s=1'b1;
     e=8'b01101011;
     m=23'b10111011001110001010010;
     #10;
     $finish;

   end

   initial begin
     $dumpfile("dump.vcd");
     $dumpvars(0);
   end
    

endmodule