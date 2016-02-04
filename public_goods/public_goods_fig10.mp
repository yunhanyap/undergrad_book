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
pair origin,up,right;
x_axis=856.0u;
y_axis=240.0u;
origin=(y_axis,x_axis);
up = (0,u);
right = (u,0);

path yaxis,xaxis;
loc:=(0.0,0.0,0.0);
%%vertical axis
yaxis:= (y_axis,1060.0u)--origin;
draw yaxis withcolor loc ;
label.top(btex $y$ etex,(y_axis,1060.0u));
%%horizontal axis
path a;
xaxis:= origin--(520.0u,x_axis);
draw xaxis withcolor loc ;
label.rt(btex $x$ etex,(520.0u,x_axis));

%%PPF
pair label_point;
path ppf,subppf;

ppf = (y_axis,1052.0u)..(320.0u,1040.0u)..(408.0u,1000.0u)..(468.0u,928.0u){dir tangent_direction}..(492.0u,x_axis);
subppf = ppf shifted -90right cutbefore yaxis;
draw ppf;
draw subppf dashed evenly scaled 1;
draw_perp_arrow((468.0u,928.0u),tangent_direction,20.0u);
label_point:=get_perp_arrow_endpoint((468.0u,928.0u),tangent_direction,20.0u);
label.rt(btex $(p,1)$ etex,label_point);
label.lft(btex $y=f(\omega_1+\omega_2)$ etex,(y_axis,1052.u));
label.bot(btex $\omega_1+\omega_2$ etex,(492.0.u,x_axis));
%draw (y_axis,928.0u)--(468.0u,928.0u) dashed evenly scaled 2;
%%consumer 1
pair label_point;
draw_indifference_curve((380.0u,928.0u),tangent_direction,40.0u);;
draw_perp_arrow((380.0u,928.0u),tangent_direction,20.0u);
label_point:=get_perp_arrow_endpoint((380.0u,928.0u),tangent_direction,20.0u);
label.rt(btex $(p,1)$ etex,label_point);
%draw (380.0u,928.0u)--(380.0u,x_axis) dashed evenly scaled 1.5;
label.bot (btex $x_1^*$ etex,(380.0u,x_axis));
%%consumer 2
%pair label_point;
%draw_indifference_curve((300.0u,928.0u),tangent_direction,40.0u);
%draw_perp_arrow((300.0u,928.0u),tangent_direction,20.0u);
%label_point:=get_perp_arrow_endpoint((300.0u,928.0u),tangent_direction,20.0u);
%label.rt(btex $(p,1)$ etex,label_point);
%draw (300.0u,928.0u)--(300.0u,x_axis) dashed evenly scaled 1.5;
label.lft(btex $y^\ast$ etex,(240u,928u));
path flat_line;
flat_line = (240u,928u) -- (380u,928u);
draw  flat_line dashed evenly scaled 1;
%label.bot(btex $x_2^* $ etex,(300.0u,x_axis));
pair intercept;
intercept = xaxis intersectionpoint subppf;
path offer_curve;
offer_curve = intercept .. .9[(240u,928u),(380u,928u)] .. (380u,920u)+50up; 
draw  offer_curve withcolor blue;
pair new_intersection, new_end_point;
new_intersection = offer_curve intersectionpoint flat_line;
new_end_point = 1.4[intercept, new_intersection];
draw intercept -- new_end_point withcolor green;

%draw intercept -- (380u,928u) withcolor red;
endfig;
end 
 





