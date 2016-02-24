prologues:=2;
beginfig(1);
u:=0.025cm;
pickup pencircle scaled 1;
draw (280.0u,1040.0u)--(280.0u,900.0u);
draw (280.0u,900.0u)--(460.0u,900.0u);
draw (280.0u,1020.0u)--(400.0u,900.0u);
draw (308.0u,1012.0u)..(344.0u,960.0u)..(420.0u,934.0u) withcolor green;
draw (348.0u,924.0u)..(376.0u,908.0u)..(400u,900u) withcolor green;
label.top (btex $I$ etex,(308u,1012u));
label.rt (btex $I$ etex,(420u,934u));
label.top (btex $I^{\prime}$ etex,(348u,924u));
label.lft(btex $i_r$ etex,(280u,1040u));
label.bot(btex $i_s$ etex,(460u,900u));
label.lft(btex $w$ etex,(280u,1020u));
label.bot(btex $w$ etex,(400u,900u));
endfig;
end