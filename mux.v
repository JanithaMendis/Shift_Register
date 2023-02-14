module  mux_F( B,R,select,y);
input [7:0]B,R;
input select;
output reg [7:0] y;
always @ (select, B , R)
begin
if (select == 0)
begin
y = B;
end
else
begin
y = R ;
end
end
endmodule
 