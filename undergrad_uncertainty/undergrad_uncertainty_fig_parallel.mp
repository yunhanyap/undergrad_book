prologues:=2;
beginfig(1);
  u:=0.025cm;
  pair qprimeprime,que,qprime,pee,pprime;
  qprimeprime:=(310.0u,950.0u);
  que:=(268.0u,908.0u);
  qprime:=(372.0u,856.0u);
  pee=1/2[que,qprimeprime];
  pprime=1/2[qprime,qprimeprime];
pickup pencircle scaled 1;
draw (240.0u,1060.0u)--(240.0u,820.0u);
label.lft(btex $q_2$ etex,(240.0u,1060.0u));
draw (240.0u,820.0u)--(540.0u,820.0u);
label.bot(btex $q_1$ etex,(540.0u,820.0u));
draw (240.0u,1040.0u)--(460.0u,820.0u);
label.lft(btex $1$ etex,(240.0u,1040.0u));
label.bot(btex $1$ etex,(460.0u,820.0u));
draw que--qprime;
label.top(btex $q$ etex,que);


label.rt(btex $q^{\prime}$ etex,qprime);



label.rt(btex $\lambda q^{\prime} +(1-\lambda)q^{\prime\prime}=p^{\prime}$ etex,(402.0u,900.0u));
drawarrow (402.0u,900.0u)--pprime dashed evenly scaled 1;
label.lft(btex $q^{\prime\prime}$ etex,qprimeprime);

draw que--qprimeprime dashed evenly scaled 1;
draw qprime--qprimeprime dashed evenly scaled 1;
draw pee--pprime dashed evenly scaled 1;
label.lft(btex $p$ etex,pee);
endfig; 
end;