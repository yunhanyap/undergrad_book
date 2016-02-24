prologues:=2;
beginfig(1);
u:=0.025cm;
color col,loc;
col=(0.,0.,0);
loc=col;
  
%%find terminal coodinate for an arrow perpendicular to the line between
%%q and p
def perpendicular_arrow_endpoint(expr p,q)=
  begingroup
    pair diff,rot_diff,new_endpoint;
    diff=q-p;
    rot_diff= diff rotated -90;
    p+rot_diff
 endgroup
enddef;
%%find terminal coordinate for a line through p with direction q (degrees)
%% having length r
def straight_line_endpoint(expr p,q,r)=
  begingroup
    pair endpoint,endpoint_rotated;
    endpoint=(r,0);
    endpoint_rotated= endpoint rotated q;
    p+endpoint_rotated
  endgroup
enddef;
%% draw a convex indifference curve at p with slope q length r

def draw_indifference_curve(expr p,q,r)=
  begingroup
    pair top_endpoint,bottom_endpoint,base_point,top_rotated,bot_rotated;
    numeric w,t;
    t=q+165;
    w=q+15;
    base_point=(r,0);
    top_rotated= base_point rotated t;
    top_endpoint=p+top_rotated;
    bot_rotated=base_point rotated w;

    bottom_endpoint=p+bot_rotated;

    draw top_endpoint..p{dir q}..bottom_endpoint withcolor green
  endgroup
enddef;



pickup pencircle scaled 1;
tangent_direction:=-55;
numeric lower_x,lower_y,upper_x,upper_y;
pair origin,top_left,bottom_right,top_right,right,up;


lower_x:=200.0u;
lower_y:=860.0u;
upper_x:=450.0u;
upper_y:=960.0u;
origin =(lower_x,lower_y);
top_left = (lower_x, upper_y);
top_right = (upper_x,upper_y);
bottom_right = (upper_x, lower_y);
top_right:=(upper_x,upper_y);
up = (0.0u, 1.0u);
right = (1.0u,0.0u);
%% one's coordinate system - green
drawarrow origin..bottom_right+20right withcolor green;
drawarrow origin..top_left+20up withcolor green;
drawarrow top_right..bottom_right-20up withcolor red;
drawarrow top_right..top_left-20right withcolor red;
%% indifference curves
pair a[];
a[0] = .4[origin,bottom_right];
a[1] = .2[origin,top_left];
a[2] = whatever[a[0],a[0]+up] = whatever[a[1],a[1]+right];
dotlabel.lft (btex etex, a[2]);
label.bot(btex $y$ etex, a[0]);
label.lft(btex $y-d$ etex, a[1]);
draw a[2]--a[1] dashed evenly scaled 1;
draw a[2] -- a[0] dashed evenly scaled 1;
a[3] = .8[origin,top_left];
a[4] = .1[origin,bottom_right];
a[5] = whatever[a[3],a[3]+right]=whatever[a[4],a[4]+up];
draw a[2]--a[5];
a[6]= .5[a[2],a[5]];
label.urt(btex $(c_n,c_a)$ etex, a[6]+5right+5up);
draw_indifference_curve(a[6],-(40),20u);
draw_indifference_curve(a[6],-(220),20u);
a[7] = whatever[a[6],a[6]-up]=whatever[a[2],a[1]];
draw a[6]--a[7];
draw a[2]--a[7];
a[8] = .5[a[6],a[7]];
a[9] = .5[a[2],a[7]];
label.lft(btex $z_2$ etex,a[8]);
label.bot(btex $z_1$ etex,a[9]);

endfig;
end 
 