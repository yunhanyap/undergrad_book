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
label.llft(btex $0$ etex,origin);
horiz_axis= origin--bottom_right;
draw horiz_axis;
label.llft(btex $0 $ etex,origin);
pair a,b,c,d,e,f,g,h,i;
a=.25[origin,bottom_right];
f=.3[origin,top_left];
c=.8[origin,bottom_right];
b=.5[a,c];
g=.6[origin,top_left];
i=.8[f,g];
d=whatever[f,f+(1u,0)]=whatever[a,a+(0,1u)];
h=whatever[i,i+(1u,0)]=whatever[b,b+(0,1u)];
e=whatever[g,g+(1u,0)]=whatever[c,c+(0,1u)];
dotlabel.bot(btex $W-x$ etex,a);
dotlabel.bot(btex $W$ etex,b);
dotlabel.bot(btex $W+x$ etex,c);
dotlabel.lft(btex $u(W-x)$ etex,f);
dotlabel.lft(btex $u(W+x)$ etex,g);
dotlabel.top(btex $$ etex,d);
dotlabel.top(btex $$ etex,e);
draw a..d dashed evenly scaled 1;
draw c..e dashed evenly scaled 1;
draw d--e;
draw d..h..e dashed evenly scaled 1;
pair expu, wa;
wa=whatever[b,b+(0,1u)]=whatever[d,e];
expu=whatever[b,b+(0,1u)]=whatever[d,d+(1u,0)];
dotlabel.bot(btex $a$ etex,expu);
dotlabel.top(btex $b$ etex,h);
dotlabel.lrt(btex $c$ etex,wa);
dotlabel.lft(btex $d$ etex,d);
dotlabel.rt(btex $e$ etex,e);
endfig;
end

