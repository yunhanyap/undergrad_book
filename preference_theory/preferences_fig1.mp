prologues:=2; 
beginfig(1);
u:=0.025cm;
color col,loc;
col=(0.,0.,0);
loc=col;
pickup pencircle scaled 1;
path a,b,pp;
loc:=(0.0,0.0,0.0);
a:= (240.0u,1060.0u)--(240.0u,900.0u);
draw a withcolor loc ;
a:= (240.0u,900.0u)--(440.0u,900.0u);
draw a withcolor loc ;

b:=(280.0u,1060.0u).. controls (284.0u,976.0u) and (300.0u,960.0u)..(318.0u,954.0u).. controls (336.0u,948.0u) and (384.0u,944.0u)..(440.0u,940.0u);
draw b;

pp=buildcycle(b,(440.0u,940.0u)..(400.0u,1020.0u),(400.0u,1020.0u)..(280.0u,1060.0u));
fill pp withcolor .9white;
a:= (240.0u,900.0u)--((240.0u,900.0u)+(75/160)*(160.0u,120.0u));
draw a withcolor blue ;
a:= ((240.0u,900.0u)+(75/160)*(160.0u,120.0u))--(400.0u,1020.0u);
draw a withcolor red;
pickup pencircle scaled 4;
draw (240.0u,900.0u)+(75/160)*(160.0u,120.0u);
label.bot(btex $z$ etex,(240.0u,900.0u)+(75/160)*(160.0u,120.0u));
draw (384.0u,944.0u);
label.top(btex $(x,y)$ etex,(384.0u,944.0u));
picture lab; lab=thelabel(btex $B$ etex,(240.0u,900.0u)+(75/160)*(160.0u,120.0u)+(15.0u,50.0u));
unfill bbox lab; draw lab;
label.bot(btex $P^{-}$ etex,(240.0u,900.0u)+(40/160)*(160.0u,120.0u));
label.bot(btex $P^{+} $etex,(240.0u,900.0u)+(125/160)*(160.0u,120.0u));
endfig;
end 
 