prologues:=2; 
beginfig(1);
u:=0.025cm;
pickup pencircle scaled 1;
pair origin,top_left,bottom_right;
origin=(320u,860u);
top_left=(320u,1060u);
bottom_right=(580u,860u);
path vert_axis,horiz_axis,budget_set;
vert_axis=origin--top_left;
draw vert_axis;
label.lft(btex $c_a$ etex,(320u,1060u));
label.bot(btex $c_n$ etex,(580u,860u));
label.llft(btex $0$ etex,origin);
horiz_axis= origin--bottom_right;
draw horiz_axis;
pair ulbl,brbl;
ulbl=7/8[origin,top_left];
brbl=3/4[origin,bottom_right];
draw ulbl--brbl;
pair base_point;
base_point:=(15u,15u);
director:=angle(brbl-ulbl);
pair tangency ;
tangency:=whatever[origin,origin+base_point]=whatever[ulbl,brbl];
pair ndow;
ndow:=(1/2)[tangency,brbl];
dotlabel.urt(btex $(y,y-d)$ etex,ndow);
pair int;
int=(7/8)[origin,tangency];
draw tangency+((tangency-ndow) rotated -15)..tangency{dir director}..tangency+((ndow-tangency) rotated 15) withcolor green;
pair endpoint;
endpoint =origin+1.2*(tangency-origin);
draw origin--endpoint dashed evenly scaled 1;
label.urt(btex $45^o$ etex,endpoint);
draw int+((int-ndow) rotated -30)..int{dir director}..ndow..ndow+((1/4)*(ndow-int) rotated 10) withcolor green;
drawarrow tangency+(base_point rotated -15)--tangency+(2u,2u);
label.rt(btex $(c^\ast,c^\ast)$ etex, tangency+(base_point rotated -15));
endfig;
end

