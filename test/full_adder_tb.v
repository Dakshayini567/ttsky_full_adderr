`timescale 1ns/1ps
module full_adder_tb;
  reg a;
  reg b;
  reg cin;
  wire sum;
  wire cout;
  full_adder full_adder_test(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
  initial
    begin
      a=0; b=0; cin=0;
  #10 a=0; b=0; cin=1;
  #10 a=0; b=1; cin=0;
  #10 a=0; b=1; cin=1;
  #10 a=1; b=0; cin=0;
  #10 a=1; b=0; cin=1;
  #10 a=1; b=1; cin=0;
  #10 a=1; b=1; cin=1;
      end
  initial
    begin
      $monitor($time,a,b,cin,sum,cout);
    end
endmodule
