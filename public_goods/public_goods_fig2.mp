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
     
    draw top_endpoint..p{dir q}..bottom_endpoint withcolor green
  endgroup
enddef;


numeric x_axis,y_axis;
tangent_direction:=90;
pair origin;
x_axis=856.0u;
y_axis=240.0u;
origin=(y_axis,x_axis);

path a;
loc:=(0.0,0.0,0.0);
%%vertical axis
a:= (y_axis,1060.0u)--origin;
draw a withcolor loc ;
label.top(btex $x_1$ etex,(y_axis,1060.0u));
%%horizontal axis
path a;
a:= origin--(520.0u,x_axis);
draw a withcolor loc ;
label.rt(btex $x_2$ etex,(520.0u,x_axis));
%indifference curves
numeric first_icurve_x,first_icurve_y,second_icurve_x,second_icurve_y,third_icurve_x,third_icurve_y,upper_line_end_y,lower_line_end_x;
first_icurve_x=280.0u;
first_icurve_y=1000.0u;
third_icurve_x=380.0u;
third_icurve_y=930.0u;
second_icurve_x=first_icurve_x+(third_icurve_x-first_icurve_x)/2;
second_icurve_y=third_icurve_y+(first_icurve_y-third_icurve_y)/2;
upper_line_end_y=first_icurve_y+(first_icurve_y-third_icurve_y)*(first_icurve_x-y_axis)/(third_icurve_x-first_icurve_x);
lower_line_end_x=third_icurve_x+(third_icurve_y-x_axis)*(third_icurve_x-first_icurve_x)/(first_icurve_y-third_icurve_y);
pair first_icurve,second_icurve,third_icurve,perturbed_second_icurve;
first_icurve=(first_icurve_x,first_icurve_y);
second_icurve=(second_icurve_x,second_icurve_y);
third_icurve=(third_icurve_x,third_icurve_y);
perturbed_second_icurve=second_icurve+(10.0u,0);
draw_indifference_curve(first_icurve,tangent_direction,50.0u);
draw_indifference_curve(second_icurve,tangent_direction,50.0u);
draw_indifference_curve(perturbed_second_icurve,tangent_direction,70.0u);
draw_indifference_curve(third_icurve,tangent_direction,50.0u);
draw (y_axis,upper_line_end_y)--(lower_line_end_x,x_axis) dashed evenly scaled 1.5;
label.lft(btex $R_1$ etex,(y_axis,upper_line_end_y));
label.bot(btex $R_1$ etex,(lower_line_end_x,x_axis));

%labels
numeric second_top;
second_top=second_icurve_y+70.0u;
draw first_icurve--(first_icurve_x,x_axis) dashed evenly scaled 2;
draw (second_icurve_x,second_top)--(second_icurve_x,x_axis) dashed evenly scaled 2;
draw third_icurve--(third_icurve_x,x_axis) dashed evenly scaled 2;
label.bot(btex $x^\prime$ etex,(first_icurve_x,x_axis));
label.bot(btex $x^{\prime\prime}$ etex,(second_icurve_x,x_axis));
label.bot(btex $x^{\prime\prime\prime}$ etex,(third_icurve_x,x_axis));
draw second_icurve--(y_axis,second_icurve_y) dashed evenly scaled 1;
label.lft(btex $R_1[x^{\prime\prime}]$ etex,(y_axis,second_icurve_y));

endfig;
end 
 





