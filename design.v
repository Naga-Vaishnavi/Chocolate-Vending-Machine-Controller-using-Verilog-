// Chocolete vending machin
//ps-present state, ns-next state, p-product, r-remaining
module vending_machine(clk,rst,in,out);
  input clk,rst;
  input [5:0]in;
  output reg out; 
  parameter s0=6'b000000,s1=6'b000101,s2=6'b001010,s3=6'b010100;
  reg [2:0]ps,ns;
  reg p,r;
  always@(posedge clk or negedge rst)
    begin
      if(!rst)
        begin
          ps<=0;
          p<=0;
          r<=0;
        end
      else
        ps<=ns;
    end
  
  always@(*)
    case(ps)
      s0:if(in==s1) ns=s1; else if(in==s2) ns=s2; else if(in==s3) ns=s3;
      s1:if(in==s1) ns=s2;
      s2:if(in==s2) ns=s3;
      default:ns=s0;
    endcase
  
  always@(*)
    case(ps)
      s0:if(in==s3)begin p=1;r=0;end
      s2:if(in==s2)begin p=1;r=0; end 
      default:begin p=0;r=0; end 
      endcase
  assign out=p;
      
endmodule
