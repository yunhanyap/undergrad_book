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
pair origin,up,down;
x_axis=856.0u;
y_axis=240.0u;
origin=(y_axis,x_axis);
up:=(0,u);
right:=(u,0);

path a;
loc:=(0.0,0.0,0.0);
%%vertical axis
a:= (y_axis,1060.0u)--origin;
draw a withcolor loc ;
label.top(btex $y$ etex,(y_axis,1060.0u));
%%horizontal axis
path aa;
aa:= origin--(520.0u,x_axis);
draw aa withcolor loc ;
label.rt(btex $x$ etex,(520.0u,x_axis));
pair bottom_right,top_left;
bottom_right:=(520.0u,x_axis);
top_left:=(y_axis,1060.0u);
%%PPF
pair label_point;
path ppf;
ppf := (y_axis,1052.0u)..(320.0u,1040.0u)..(408.0u,1000.0u)..(468.0u,928.0u){dir tangent_direction}..(492.0u,x_axis);
draw ppf;
draw_perp_arrow((468.0u,928.0u),tangent_direction,20.0u);
label_point:=get_perp_arrow_endpoint((468.0u,928.0u),tangent_direction,20.0u);
label.rt(btex $(p,1)$ etex,label_point);
label.lft(btex $y=f(\omega_1+\omega_2)$ etex,(y_axis,1052.u));
label.bot(btex $\omega_1+\omega_2$ etex,(492.0.u,x_axis));
draw (y_axis,928.0u)--(468.0u,928.0u) dashed evenly scaled 2;

label.lft(btex $f(\omega_1+\omega_2-x^\ast_2) $ etex,(y_axis,1052u -15u));
path b;
b:= (y_axis,x_axis+40u)--(492u,x_axis+40u);
path shifted_ppf;
shifted_ppf := ppf shifted (380u-468u,0) cutbefore a;
pair c[];
c[0]:= shifted_ppf intersectionpoint b;
c[1]:=whatever[c[0],c[0]+up]=whatever[origin,bottom_right];
path vert;
vert:=c[1]--c[0];
draw shifted_ppf cutafter vert;
label.bot(btex $\omega_1$ etex,c[1]);
c[2]=whatever[c[0],c[0]-right]=whatever[origin,top_left];
%label.lft(btex$f(\omega_2-x^\ast_2)$ etex,c[2]);
%draw c[0]--c[2] dashed evenly scaled 1;

%%consumer 1 indifference curve
pair label_point;
draw_indifference_curve((380.0u,928.0u),tangent_direction,40.0u);;
draw_perp_arrow((380.0u,928.0u),tangent_direction,20.0u);
label_point:=get_perp_arrow_endpoint((380.0u,928.0u),tangent_direction,20.0u);
label.rt(btex $(p,1)$ etex,label_point);
draw (380.0u,928.0u)--(380.0u,x_axis) dashed evenly scaled 1.5;
label.bot (btex $x_1^*$ etex,(380.0u,x_axis));
%% consumer 1 budget line

%%consumer 2
pair label_point;
draw_indifference_curve((300.0u,928.0u),tangent_direction,40.0u);
draw_perp_arrow((300.0u,928.0u),tangent_direction,20.0u);
label_point:=get_perp_arrow_endpoint((300.0u,928.0u),tangent_direction,20.0u);
label.rt(btex $(p,1)$ etex,label_point);
draw (300.0u,928.0u)--(300.0u,x_axis) dashed evenly scaled 1.5;
dotlabel.bot(btex $x_2^* $ etex,(300.0u,x_axis));
endfig;
end 
 





