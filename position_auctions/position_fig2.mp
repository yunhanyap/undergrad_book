prologues:=2;
u:=0.025cm;
beginfig(1);
pickup pencircle scaled 1;
%vertical axis
pair origin,top_left,bottom_right,x_dir,y_dir,top_right;
x_dir:=(1u,0);
y_dir:=(0,1u);
origin:=(280.0u,820.0u);
top_left:=(280.0u,1100.0u);
bottom_right:=(684.0u,820.0u);
top_right:=whatever[top_left,top_left+x_dir]=whatever[bottom_right,bottom_right+y_dir];
%axis
draw top_left--origin;
draw origin--bottom_right;
%values
pair a[];
a[1]:=(1/5)[origin,bottom_right];
a[2]:=(2/5)[origin,bottom_right];
a[3]:=(3/5)[origin,bottom_right];
a[4]:=a[3]+10*x_dir;

%right side
pair b[];
b[1]:=(1/4)[bottom_right,top_right];
b[2]:=(3/10)[bottom_right,top_right];
b[3]:=(1/2)[bottom_right,top_right];
%prices
pair c[];
c[1]:=(1/3)[a[1],a[2]];
c[2]:=(1/3)[a[2],a[3]];
c[3]:=(1/3)[a[3],a[4]];
%draw
draw a[1]--b[1] dashed evenly scaled 1 withcolor blue;
draw a[2]--b[2] dashed evenly scaled 1 withcolor red;
draw (a[3]-30*x_dir)--b[3] dashed evenly scaled 1 withcolor green;
%intersections
b[4]=whatever[a[1],b[1]]=whatever[c[2],b[2]];
b[5]=whatever[c[2],b[2]]=whatever[c[3],b[3]];
%values
pair v[];
v[1]=a[1];
v[2]=a[2];
v[3]=a[3]-30*x_dir;
v[4]=a[4];
dotlabel.bot(btex $v_4$ etex,v[1]);
dotlabel.bot(btex $v_3$ etex,v[2]);
dotlabel.bot(btex $v_2$ etex,v[3]);
dotlabel.bot(btex $v_1$ etex,v[4]);
label.rt(btex $v$ etex,bottom_right);
label.lft(btex $V$ etex,top_left);
endfig;
end 
 
