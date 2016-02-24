prologues:=2; 
beginfig(1);
u:=0.025cm;
pickup pencircle scaled 1;
pair origin,top_left,bottom_right,hdiff,vdiff;
%ulbl point where budget line intersects y axis
%brbl point where budget line intersects x axis
origin=(320u,860u);
top_left=(320u,1060u);
vdiff=top_left-origin;
hdiff=bottom_right-origin;
bottom_right=(580u,860u);
path vert_axis,horiz_axis,budget_set;
vert_axis=origin--top_left;
draw vert_axis;
label.lft(btex $y$ etex,(320u,1060u));
label.bot(btex $x$ etex,(580u,860u));
label.llft(btex $0$ etex,origin);
horiz_axis= origin--bottom_right;
draw horiz_axis;
pair ulbl,brbl,kink,ibl,n,ysub;
ulbl=(3/4)[origin,top_left];
brbl=3/4[origin,bottom_right];
kink=(1/4)[ulbl,brbl];
draw kink--brbl;
n=whatever[kink,kink-vdiff]=whatever[origin,bottom_right];
ysub=whatever[kink,kink-hdiff]=whatever[origin,top_left];
draw ysub--kink dashed evenly scaled 1;

label.bot(btex $n+{{W-K}\over{p}}$ etex,brbl);
label.bot(btex $n$ etex,n);
label.lft(btex $W-K$ etex,ysub);
pair ya,yb,yc;
ya=(1/2)[top_left,ulbl];
dotlabel.lft(btex $W$ etex,ya);
sdirb=angle(brbl-kink);
yb=(1/2)[kink,brbl];
yc=(1/2)[kink,yb];
draw yb+((kink-yb) rotated -15)..yb{dir sdirb}..yb+((brbl-yb) rotated 15) withcolor green;
draw ya{dir (sdirb+5)}..ya+((yc-kink) rotated 10)..ya+((brbl-yb)rotated 20) withcolor red;

endfig;
end

