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
ulbl=7/8[origin,top_left];
brbl=3/4[origin,bottom_right];
kink=(1/2)[ulbl,brbl];
ibl=brbl-(50u,0);
draw ulbl--kink;
draw kink--ibl;
n=whatever[kink,kink-vdiff]=whatever[origin,bottom_right];
ysub=whatever[kink,kink-hdiff]=whatever[origin,top_left];
label.lft(btex $W$ etex,ulbl);
label.bot(btex ${W}\over{p}$ etex,brbl);
label.bot(btex $n+{{W-np}\over{p+dp}}$ etex,ibl);
label.bot(btex $n$ etex,n);
label.lft(btex $W-pn$ etex,ysub);
pair ya,yb;
ya=(1/2)[ulbl,kink];
yb=(1/2)[kink,ibl];
sdira=angle(brbl-kink);
sdirb=angle(ibl-kink);
sdirc=angle(ibl-ulbl);
draw yb+((kink-yb) rotated -15)..yb{dir sdirb}..yb+((ibl-yb) rotated 15) withcolor green;
pair xstar;
xstar=whatever[ibl,kink]=whatever[ulbl,ulbl+hdiff];
draw kink--xstar dashed evenly scaled 1;
endfig;
end

