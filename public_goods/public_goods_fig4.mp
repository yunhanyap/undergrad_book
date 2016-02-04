prologues:=2; 
beginfig(1);
  u:=0.025cm;
  pair up,right;
  up = (0,u);
  right = (u,0);
color col,loc;
col=(0.,0.,0);
loc=col;
pickup pencircle scaled 1.0;
  pair origin,top_left,bottom_right;
  origin = (856.0u,250.0u);
  top_left = (856.0u,420.u);
  bottom_right = (1056.0u,250.0u);
  draw origin -- bottom_right;
  draw origin -- top_left;
  label.bot(btex $x$ etex, bottom_right);
  label.lft(btex $y$ etex, top_left);
  
  pair second_origin,second_top_left,second_bottom_right, add;
  add = (250.0u,0);
  second_origin = origin + add;
  second_bottom_right = bottom_right + add;
  second_top_left = top_left + add;
  draw second_origin -- second_top_left;
  draw second_origin -- second_bottom_right;
  label.bot (btex $y$ etex, second_bottom_right);
  label.lft (btex $x$ etex, second_top_left);
  pair a[];
  a[0] = .5[origin, bottom_right];
  a[1] = .6[origin, top_left];
  a[2] = .8[origin, top_left];
  a[3] = whatever[a[0],a[0]+up]=whatever[a[1],a[1]+right];
  a[4] = whatever[bottom_right,bottom_right+up] = whatever[a[2],a[2]+right];
  draw origin..a[3]..a[4];
  label.bot(btex $x_0$ etex,a[0]);
  label.lft(btex $y_0$ etex,a[1]);
  draw a[0]--a[3] dashed evenly scaled 1;
  draw a[1] -- a[3] dashed evenly scaled 1;
  label.rt(btex $f(x)$ etex,a[4]);
  pair b[];
  b[0] = .6[second_origin,second_bottom_right];
  b[1] = .35[second_origin,second_top_left];
  b[2] = .9[second_origin,second_top_left];
  b[3] = whatever[b[0],b[0]+up]=whatever[b[1],b[1]+right];
  b[4] = whatever[b[2],b[2]+right] = whatever[second_bottom_right,second_bottom_right+up];
  draw second_origin..b[3]..b[4];
  label.bot(btex $y_0$ etex,b[0]);
  label.lft(btex $x_0$ etex,b[1]);
  draw b[0]--b[3] dashed evenly scaled 1;
  draw b[1] -- b[3] dashed evenly scaled 1;
  label.top (btex $C(y)$ etex, b[4]);
  a[5] = a[0]-20up;
  b[5] = b[0]-20up;
  label.bot(btex Production Function etex,a[5]);
  label.bot(btex Cost Function etex,b[5]);
    
endfig;
end 
 





