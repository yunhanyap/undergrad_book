prologues:=2; 
beginfig(1);
u:=0.025cm;
color col,loc;
col=(0.,0.,0);
loc=col;
pickup pencircle scaled 1.0;
%draw a budget line through p direction q to meet axis through origin r
def draw_budget_line(expr p,q,r)=
  begingroup
    pair bse,base_rotated,on_budget_line,on_axis,new_endpoint,top_budget;
    bse=(10.0,0);
    base_rotated=bse rotated q;
    on_budget_line=p+base_rotated;
    on_axis=r+bse;
    new_endpoint=whatever[r,on_axis]=whatever[p,on_budget_line];
    top_budget=1.25[new_endpoint,p];
    draw top_budget--new_endpoint withcolor blue;
 endgroup
enddef;
def get_budget_line_endpoint(expr p,q,r)=
  begingroup
    pair bse,base_rotated,on_budget_line,on_axis,new_endpoint,top_budget;
    bse=(10.0,0);
    base_rotated=bse rotated q;
    on_budget_line=p+base_rotated;
    on_axis=r+bse;
    new_endpoint=whatever[r,on_axis]=whatever[p,on_budget_line];
    new_endpoint
 endgroup
enddef;
%draw an arrow through p perpendicular to direction q of length r
def draw_perp_arrow(expr p,q,r)=
  begingroup
    numeric t;
    pair base_point,base_point_rotated,new_endpoint;
    base_point=(r,0);
    t=q+90;
    base_point_rotated=base_point rotated t;
    new_endpoint=p+base_point_rotated;
    drawarrow p--new_endpoint
 endgroup
enddef;
def draw_reverse_perp_arrow(expr p,q,r)=
  begingroup
    numeric t;
    pair base_point,base_point_rotated,new_endpoint;
    base_point=(r,0);
    t=q+90;
    base_point_rotated=base_point rotated t;
    new_endpoint=p+base_point_rotated;
    drawarrow new_endpoint--p
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
tangent_direction:=-60;
pair origin,top_left,bottom_right;
x_axis=856.0u;
y_axis=240.0u;
origin=(y_axis,x_axis);
top_left=(y_axis,1060.0u);
bottom_right=(520.0u,x_axis);

path a;
loc:=(0.0,0.0,0.0);
%%vertical axis
a:= top_left--origin;
draw a withcolor loc ;
label.top(btex $y$ etex,top_left);
%%horizontal axis
path a;
a:= origin--bottom_right;
draw a withcolor loc ;
label.rt(btex $x$ etex,bottom_right);

%%PPF
pair label_point;
numeric tangent_direction;
tangent_direction=-35;
draw(y_axis,1052.0u)..(320.0u,1040.0u)..(408.0u,1000.0u){dir tangent_direction}..(468.0u,928.0u)..(492.0u,x_axis);
draw_perp_arrow((408.0u,1000.0u),tangent_direction,20.0u);
label_point:=get_perp_arrow_endpoint((408.0u,1000.0u),tangent_direction,20.0u);
label.rt(btex $(p_1+p_2,1)$ etex,label_point);
label.lft(btex $y^*=f(\omega_1+\omega_2-x^*_1-x^*_2)$ etex,(y_axis,1000.u));
label.bot(btex $x^*_1+x^*_2$ etex,(408.0.u,x_axis));
draw (y_axis,1000.0u)--(408.0u,1000.0u) dashed evenly scaled 2;
draw (408.0u,x_axis)--(408.0u,1000.0u) dashed evenly scaled 2;
%%consumer 1
pair label_point,second_label_point,third_label_point;
numeric tangent_direction;
tangent_direction=-60;
pair consumer_one;
consumer_one=(340.0u,1000.0u);
draw_indifference_curve(consumer_one,tangent_direction,40.0u);
draw_perp_arrow(consumer_one,tangent_direction,20.0u);
label_point:=get_perp_arrow_endpoint(consumer_one,tangent_direction,20.0u);
label.rt(btex $(p_1,1)$ etex,label_point);
draw consumer_one--(xpart consumer_one,x_axis) dashed evenly scaled 1.5;
label.bot (btex $x_1^*$ etex,(xpart consumer_one,x_axis));
draw_budget_line(consumer_one,tangent_direction,origin);
second_label_point=get_budget_line_endpoint(consumer_one,tangent_direction,origin);
draw_reverse_perp_arrow(second_label_point,-30,30);
third_label_point=get_perp_arrow_endpoint(second_label_point,-30,30);
label.rt(btex ${{\omega_1}\over{\omega_1+\omega_2}}(p_1y^*+p_2y^*+x^*_1+x^*_2) $ etex,third_label_point);
%%consumer 2
pair label_point;
numeric tangent_direction;
tangent_direction=-70;
pair consumer_two;
consumer_two=(280.0u,1000.0u);
draw_indifference_curve(consumer_two,tangent_direction,40.0u);;
draw_perp_arrow(consumer_two,tangent_direction,20.0u);
label_point:=get_perp_arrow_endpoint(consumer_two,tangent_direction,20.0u);
label.rt(btex $(p_2,1)$ etex,label_point);
draw consumer_two--(xpart consumer_two,x_axis) dashed evenly scaled 1.5;
label.bot (btex $x_2^*$ etex,(xpart consumer_two,x_axis));
draw_budget_line(consumer_two,tangent_direction,origin);
endfig;
end 
 





