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
label.llft(btex $ -100$ etex,origin);
pair uno;
uno=.95[origin,top_left];
dotlabel.lft(btex $1$ etex,uno);
label.bot(btex $2000$ etex, bottom_right);
pair a,b,c;
a:=.2[origin,bottom_right];
c:=.15[origin,top_left];
b:=whatever[c,c+(1u,0)]=whatever[a,a+(0,1u)];
dotlabel.lft(btex $p_3 $ etex,c);
dotlabel.bot(btex $0$ etex,a);

pair d,e,f,g;
d=.4[origin,bottom_right];
e=whatever[b,b+(1u,0)]=whatever[d,d+(0,1u)];

dotlabel.bot(btex $500$ etex,d);
g:=.6[origin,top_left];
f:=whatever[g,g+(1u,0)]=whatever[d,d+(0,1u)];

dotlabel.lft (btex $p_2+p_3 $ etex,g);
pair h,i,j;
h:=.8[origin,bottom_right];
dotlabel.bot(btex $1000$ etex,h);
i:=whatever[g,g+(1u,0)]=whatever[h,h+(0,1u)];
j:=whatever[uno,uno+(1u,0)]=whatever[h,h+(0,1u)];
pair k;
k=whatever[uno,uno+(1u,0)]=whatever[bottom_right,bottom_right+(0,1u)];

dotlabel.bot(btex $x$ etex,.5[a,d]);
draw origin..b..f..j..k{dir 0};
endfig;
end

