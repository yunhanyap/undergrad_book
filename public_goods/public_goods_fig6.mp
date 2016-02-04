prologues:=2; 
beginfig(1);
u:=0.025cm;
color col,loc;
col=(0.,0.,0);
loc=col;
pickup pencircle scaled 1.0;
%draw an arrow through p perpendicular to direction q of length r
def draw_perp_arrow(expr p,q,r)=
  begingroup
    numeric t;
    pair base_point,base_point_rotated,new_endpoint;
    base_point=(r,0);
    t=q+90;
    base_point_rotated=base_point rotated t;
    new_endpoint=p+base_point_rotated;
    drawarrow p--new_endpoint;
 endgroup
enddef;
%%get the endpoint for the arrow
def get_perp_arrow_endpoint(expr p,q,r)=
  begingroup
    numeric t;
    pair base_point,base_point_rotated;
    base_point=(r,0);
    t=q+90;
    base_point_rotated=base_point rotated t;
    p+base_point_rotated
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
     
    draw top_endpoint..p{dir q}..bottom_endpoint
  endgroup
enddef;


numeric x_axis,y_axis;
tangent_direction:=-60;
pair origin,top_left,bottom_right;
x_axis=856.0u;
y_axis=240.0u;
origin=(y_axis,x_axis);
top_left = (y_axis,1060.0u);
bottom_right = (520.0u,x_axis);
path a;
loc:=(0.0,0.0,0.0);
%%vertical axis
a:= (y_axis,1060.0u)--origin;
draw a withcolor loc ;
label.top(btex $y$ etex,(y_axis,1060.0u));
%%horizontal axis
path a;
a:= origin--(520.0u,x_axis);
draw a withcolor loc ;
label.rt(btex $x$ etex,(520.0u,x_axis));

%%PPF
pair label_point;
draw(y_axis,1052.0u)..(320.0u,1040.0u)..(408.0u,1000.0u)..(468.0u,928.0u){dir tangent_direction}..(492.0u,x_axis);
draw_perp_arrow((468.0u,928.0u),tangent_direction,20.0u);
label_point:=get_perp_arrow_endpoint((468.0u,928.0u),tangent_direction,20.0u);
label.rt(btex $(p,1)$ etex,label_point);
label.lft(btex $y=f(\omega_1+\omega_2)$ etex,(y_axis,1052.u));
label.bot(btex $\omega_1+\omega_2$ etex,(492.0.u,x_axis));
%draw (y_axis,928.0u)--(468.0u,928.0u) dashed evenly scaled 2;
label.lft(btex $y^\ast $ etex,(y_axis,928.0u));
%%consumer 1
pair label_point;
%draw_indifference_curve((380.0u,928.0u),90,40.0u);
%draw_indifference_curve((380.0u,928.0u),-40,40.0u);
%draw (380.0u,928.0u)--(380.0u,x_axis) dashed evenly scaled 1.5;
%label.bot (btex $x_1^*$ etex,(380.0u,x_axis));
%label.bot(btex $x_2^* $ etex,(300.0u,x_axis));
pair a[];
a[0] = .6[origin,bottom_right];
a[1] = .3[origin,top_left];
a[2] = .5[origin,top_left];
a[3] = .9[origin,top_left];
draw a[0]--a[1];
draw a[0]--a[2];
draw a[0]--a[3];
a[4] = .3[a[0],a[1]];
a[5] = .4[a[0],a[2]];
a[6] = .5[a[0],a[3]];
a[7] = a[6]+20up+right;
draw a[0]..a[4]..a[5]..a[6]..a[7];
draw_indifference_curve(a[6],-50,40.0u);
draw_indifference_curve(a[4],-20,40.0u);
draw_indifference_curve(a[5],-30,40.0u);
label.bot(btex $\omega_1 $ etex,a[0]);


endfig;
end 
 





