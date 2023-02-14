module mux_test;
reg a,b,select;
wire y ;
mux_beh mux1(a,b,select,y);      
initial
begin
select=0;a=0;b=0;
#100 select=0;a=0;b=1;
#100 select=0;a=1;b=0;
#100 select=0;a=1;b=1;
#100 select=1;a=0;b=0;
#100 select=1;a=0;b=1;
#100 select=1;a=1;b=0;
#100 select=1;a=1;b=1;
end
initial
begin
$monitor($time,"a=%b,b=%b,select=%b,y=%b",a,b,select,y);
end
endmodule
 