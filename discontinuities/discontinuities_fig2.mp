prologues:=2; 
beginfig(1);
u:=0.025cm;
pickup pencircle scaled 1;
pair origin,top_left,bottom_right;
%ulbl point where budget line intersects y axis
%brbl point where budget line intersects x axis
origin=(320u,860u);
top_left=(320u,1060u);
bottom_right=(580u,860u);
path vert_axis,horiz_axis,budget_set;
vert_axis=origin--top_left;
draw vert_axis;
label.lft(btex $y$ etex,(320u,1060u));
label.bot(btex $x$ etex,(580u,860u));
label.llft(btex $0$ etex,origin);
horiz_axis= origin--bottom_right;
draw horiz_axis;
pair ulbl,brbl;
ulbl=7/8[origin,top_left];
brbl=3/4[origin,bottom_right];
draw ulbl--brbl;
label.lft(btex ${W}\over{p_y}$ etex,ulbl);
label.bot(btex ${W}\over{p_x}$ etex,brbl);
director:=angle(brbl-ulbl);
pair tangency,left_wing,right_wing;
tangency:=(1/2)[ulbl,brbl];
left_wing:=(-40u,90u);
right_wing:=(90u,-40u);
draw ulbl--ulbl+right_wing withcolor red;
draw brbl+left_wing--brbl withcolor blue;
endfig;
end

