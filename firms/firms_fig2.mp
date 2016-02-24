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
tangent_direction:=45;
%%vertical left axis
path a;
loc:=(0.0,0.0,0.0);
a:= (200.0u,1100.0u)--(200.0u,860.0u);
linecap:= rounded;
draw a withcolor green ;

%%horizontal bottom
a:= (200.0u,860.0u)--(528.0u,860.0u);
draw a withcolor green ;

%%vertical top
a:= (400.0u,1020.0u)--(400.0u,776.0u);
linecap:= rounded;
draw a withcolor red ;

%%top horizontal
a:= (400.0u,1020.0u)--(116.0u,1020.0u);
linecap:= rounded;
draw a withcolor red ;
%% indifference curves
draw (400.0u,780.0u)--(160.0u,1020.0u) withcolor blue;
draw (240.0u,980.0u)..(280.0u,900.0u){dir -tangent_direction}..(380.0u,845.0u);
draw (160.0u,980.0u)..(240.0u,940.0u){dir -tangent_direction}..(280.0u,850.0u);

%%PPF
draw (200.0u,1095.0u)..(400.0u,1020.0u){dir -tangent_direction}..(450.0u,960.0u){dir -55}..(495.0u,860.0u);
%%dotlabel.lft(btex $c$ etex,(450.0u,960.0u));
label.lft(btex $C$ etex,(200.0u,1095.0u));
label.bot(btex $D$ etex,(495.0u,860.0u));
%%tangents
pickup pencircle scaled 2;
%%to PPF
pair aa,ab;
aa=straight_line_endpoint((400.0u,1020.0u),-tangent_direction,100.0u);
draw (400.0u,1020.u)--aa;

ab=straight_line_endpoint((400.0u,1020.0u),180-tangent_direction,40.0u);
draw (400.0u,1020.u)--ab;
%%price vector pointers
pair ac,ad,ae;
pickup pencircle scaled 1;
ac=perpendicular_arrow_endpoint((400.0u,1020.0u),ab);
drawarrow (400.0u,1020.0u)--ac;
ad=straight_line_endpoint((280.0u,900.0u),180-tangent_direction,40.0u);
ae=perpendicular_arrow_endpoint((280.0u,900.0u),ad);
drawarrow (280.0u,900.0u)--ae;
draw (280.0u,900.0u)--(280.0u,860.0u) dashed evenly scaled 1.5;
draw (280.0u,900.0u)--(200.0u,900.0u) dashed evenly scaled 1.5;
label.bot (btex $x_1 $ etex,(280.0u,860.0u));
label.lft (btex $y_1 $ etex,(200.0u,900.0u));
label.rt (btex $(p,1)$ etex,ae);
label.rt (btex $(p,1)$ etex,ac);
label.lrt (btex $z_1 $ etex,(400.0u,860.0u));
label.lrt (btex $z_2 $ etex,(200.0u,1020.0u));
draw (240.0u,940.0u)--(240.0u,860.0u) dashed evenly scaled 1.5;
label.bot (btex $x{\prime} $ etex,(240.0u,860.0u));
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
 