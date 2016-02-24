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

pickup pencircle scaled 1;
%%draw lower equilibrium
tangent_direction:=-30;
numeric lower_x,lower_y,upper_x,upper_y;
lower_x:=200.0u;
lower_y:=860.0u;
upper_x:=450.0u;
upper_y:=960.0u;
pair upper_right,lower_left,tangency_point;
upper_right:=(upper_x,upper_y);
lower_left:=(lower_x,lower_y);


%% one's coordinate system - green
path a;
loc:=(0.0,0.0,0.0);
a:= (200.0u,1100.0u)--(200.0u,860.0u);
linecap:= rounded;
draw a withcolor green ;
%%horizontal bottom
a:= (200.0u,860.0u)--(528.0u,860.0u);
draw a withcolor green ;

%% two's coordinate system -red
%%down
a:= upper_right--(450.0u,776.0u);
linecap:= rounded;
draw a withcolor red ;
%%across
a:= upper_right--(116.0u,960.0u);
linecap:= rounded;
draw a withcolor red ;

%% indifference curves
pair aa,ab;
tangency_point_x:=280.0u;
tangency_point_y:=900.0u;
tangency_point:=(tangency_point_x,tangency_point_y);

aa=straight_line_endpoint(tangency_point,tangent_direction,100.0u);
draw tangency_point--aa withcolor blue;

ab=straight_line_endpoint(tangency_point,180+tangent_direction,100.0u);
draw tangency_point--ab withcolor blue;
pair upper_left_curve,upper_right_curve,lower_left_curve,lower_right_curve;
upper_left_curve=tangency_point+(-25.0u,35.0u);
upper_right_curve=tangency_point+(35.0u,-15.0u);
lower_left_curve=tangency_point+(-25.0u,10.0u);
lower_right_curve=tangency_point+(17.0u,-18.0u);

draw upper_left_curve..tangency_point{dir tangent_direction}..upper_right_curve;
draw lower_left_curve..tangency_point{dir tangent_direction}..lower_right_curve;

%%PPF
draw (200.0u,1095.0u)..(400.0u,1020.0u){dir -45}..(450.0u,960.0u){dir -55}..(495.0u,860.0u);
%%dotlabel.lft(btex $c$ etex,(450.0u,960.0u));
label.lft(btex $C$ etex,(200.0u,1095.0u));
label.urt(btex $D$ etex,(495.0u,860.0u));
%%tangents
pickup pencircle scaled 2;
%%to PPF
pair aa,ab;
aa=straight_line_endpoint(upper_right,tangent_direction,100.0u);
draw upper_right--aa;

ab=straight_line_endpoint(upper_right,180+tangent_direction,40.0u);
draw upper_right--ab;
%%price vector pointers
pair ac,ad,ae;
pickup pencircle scaled 1;
ac=perpendicular_arrow_endpoint(upper_right,ab);
drawarrow upper_right--ac;
%%indifference curves
ad=straight_line_endpoint(tangency_point,180+tangent_direction,40.0u);
ae=perpendicular_arrow_endpoint(tangency_point,ad);
drawarrow tangency_point--ae;
draw tangency_point--(lower_x,tangency_point_y) dashed evenly scaled 1.5;
draw tangency_point--(tangency_point_x,lower_y) dashed evenly scaled 1.5;
label.bot (btex $x_1^* $ etex,(tangency_point_x,lower_y));
label.lft (btex $y_1^* $ etex,(lower_x,tangency_point_y));
label.rt (btex $(p\prime,1)$ etex,ae);
label.rt (btex $(p\prime,1)$ etex,ac);
label.lrt (btex $\omega^1_y+\omega^2_y $ etex,(upper_x,lower_y));
label.urt (btex $\omega^1_x+\omega^2_x$ etex,(lower_x,upper_y));
label.top(btex $A'$ etex,ab);
label.rt(btex $B'$ etex,aa);

%%draw upper box
tangent_direction:=-45;
numeric upper_x,upper_y;
upper_x:=400.0u;
upper_y:=1020.0u;
pair upper_right;
upper_right:=(upper_x,upper_y);




%% two's new coordinate system -red
%%across
pair b;
b:=upper_right+(-334.0u,0);
a:= upper_right--b;
linecap:= rounded;
draw a withcolor red ;
%%down
b:=upper_right+(0,-184.0u);
a:= upper_right--b;
linecap:= rounded;
draw a withcolor red ;

%% indifference curves
pair aa,ab,endowment_point;
endowment_point=straight_line_endpoint(tangency_point,180-30,60.0u);
dotlabel.urt(btex $(\omega^1_x,\omega^1_y) $ etex,endowment_point);
aa=straight_line_endpoint(endowment_point,tangent_direction,100.0u);
draw endowment_point--aa withcolor blue;


ab=straight_line_endpoint(endowment_point,180+tangent_direction,100.0u);
draw endowment_point--ab withcolor blue;
pair tangency_point;
tangency_point=straight_line_endpoint(endowment_point,tangent_direction,50.0u);
label.lft(btex $E$ etex,tangency_point);
pair upper_left_curve,upper_right_curve,lower_left_curve,lower_right_curve;
upper_left_curve=tangency_point+(-25.0u,35.0u);
upper_right_curve=tangency_point+(35.0u,-15.0u);
lower_left_curve=tangency_point+(-25.0u,10.0u);
lower_right_curve=tangency_point+(17.0u,-25.0u);

draw upper_left_curve..tangency_point{dir tangent_direction}..upper_right_curve;
draw lower_left_curve..tangency_point{dir tangent_direction}..lower_right_curve;


%%tangents
pickup pencircle scaled 2;
%%to PPF
pair aa,ab;
aa=straight_line_endpoint(upper_right,tangent_direction,100.0u);
draw upper_right--aa;

ab=straight_line_endpoint(upper_right,180+tangent_direction,40.0u);
draw upper_right--ab;
%%price vector pointers
pair ac,ad,ae;
pickup pencircle scaled 1;
ac=perpendicular_arrow_endpoint(upper_right,ab);
drawarrow upper_right--ac;
%%indifference curves
ad=straight_line_endpoint(tangency_point,180+tangent_direction,40.0u);
ae=perpendicular_arrow_endpoint(tangency_point,ad);
%%drawarrow tangency_point--ae;
%%draw tangency_point--(lower_x,tangency_point_y) dashed evenly scaled 1.5;
%%draw tangency_point--(tangency_point_x,lower_y) dashed evenly scaled 1.5;
%%label.bot (btex $x_1^* $ etex,(tangency_point_x,lower_y));
%%label.lft (btex $y_1^* $ etex,(lower_x,tangency_point_y));
%%label.rt (btex $(p\prime,1)$ etex,ae);
label.rt (btex $(p,1)$ etex,ac);
label.lrt (btex $z_1^* $ etex,(upper_x,lower_y));
label.lrt (btex $z_2^* $ etex,(lower_x,upper_y));
label.top(btex $A$ etex,ab);
label.rt(btex $B$ etex,aa);

%reference points
draw(240.0u,940.0u);

draw(260.0u,920.0u);

draw(280.0u,900.0u);

draw(400.0u,780.0u);

draw(160.0u,1020.0u);
endfig;
end 
 