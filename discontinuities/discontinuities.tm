<TeXmacs|1.0.4>

<style|article>

<\body>
  <\center>
    Dealing with Discontinuities

    Michael Peters

    UBC
  </center>

  The Lagrangian method for solving maximization problems that we have
  studied so far is sometimes the only way to get insight into the solution
  to your problem. Most of the time it is only part of the technique you
  need. The reason is that the constraint sets consumers face often come with
  built in discontinuities of various sorts. You will see these every day.
  Your phone company offers 100 minutes of long distance calling for a fixed
  fee, but if you talk for more than 100 minutes you pay big time. The local
  restaurant runs a burger-beer special $6 for a burger and beer - if you
  want a second beer $5 more. Buy one issue of the Economist magazine, the
  price is about $5, if you buy a years subscription, the price for each
  issue falls to about $2.

  To solve problems like these, you need to use a variety of different
  techniques and put them all together. It is tempting once a problem is
  proposed to write down the Lagrangian, derive all the first order
  conditions, then try to solve. This chapter is a warning that this will
  fail in most of the problems you are likely to encounter. You will need the
  Lagrangian method, but only as part of a larger toolbox.

  Though the 'write down the first order conditions' approach is tempting,
  especially during an exam when time pressure keeps you from being your most
  creative, it is the wrong way to start in most situations. I am a big fan
  of graphical methods for guessing the solution to problems. They are
  usually the most useful at helping you to see the special properties of the
  problem you are trying to solve. In a previous chapter, we solved a
  consumer's problem using Lagrangian methods, where preferences were given
  by

  <\equation>
    <with|mode|text|<with|mode|math|u(x,y)=x<rsup|\<alpha\>>y<rsup|1-\<alpha\>><label|cd>>>
  </equation>

  \ Graphical methods would start with a picture like the one you saw so much
  in your first year course.

  <small-figure|<postscript|discontinuities_fig1.eps||||||>|<label|three>>

  The best bundle for the consumer to choose is the one that lies on the
  highest indifference curve that just touches the budget set. This
  indifference curve could look like the green curve in Figure
  <reference|three>. You have to remember, though, that it could also
  resemble the red curve that touches the budget line at the point
  <with|mode|math|(0,<frac|W|p<rsub|y>>)> or like the blue curve that touches
  the budget line at the point <with|mode|math|(<frac|W|p<rsub|x>>,0)>. These
  are referred to a <em|corner solutions>. In the case where preferences are
  given by (<reference|cd>), we have already explained why corner solutions
  are not possible. If either coordinate of the chosen bundle is zero, then
  overall utility is zero, and the consumer will be able to do strictly
  better by picking <em|any> bundle in her budget set that has strictly
  positive coordinates.

  So the picture, along with this latter insight, tells us the solution has
  to look like the point <with|mode|math|(x<rsup|\<ast\>>,y<rsup|\<ast\>>)>
  in the diagram where the indifference curve is tangent to the budget line.
  If we think of the indifference curve as being a function taking each value
  of <with|mode|math|x> into a different value of <with|mode|math|y>, then
  the solution is going to be at the point where this function has the same
  slope as the budget line.\ 

  The slope of budget line is easy to compute - it is linear so you can just
  use the rise over run formula from high school to get the slope equal to
  <with|mode|math|-<frac|p<rsub|x>|p<rsub|y>>>.<\footnote>
    The rise is <with|mode|math|<frac|W|p<rsub|y>>> while the 'run' is
    <with|mode|math|<frac|W|p<rsub|x>>>.
  </footnote>\ 

  What about the slope of the indifference curve? One way to proceed is to
  find the function explicitly by trying to solve the equation

  <\equation*>
    u(x,y)=u(x<rsup|\<ast\>>,y<rsup|\<ast\>>)
  </equation*>

  for <with|mode|math|y>. A better way is to find the slope of the function
  implicitly by solving the equation

  <\equation*>
    u<rsub|x>(x,y)d x+u<rsub|y>(x,y)d y=0
  </equation*>

  for <with|mode|math|<frac|d y|d x>>. The term
  <with|mode|math|u<rsub|x>(x,y)> represents the amount that utility goes up
  when you increase <with|mode|math|x> a bit, while <with|mode|math|d x> is
  the amount that you are going to change <with|mode|math|x>. We don't know
  or care what <with|mode|math|d x> is exactly. It is going to be very small
  for one thing. In any case the first term gives the impact on utility of
  small changes in <with|mode|math|x>. The second term does the same for
  <with|mode|math|y>. If we pick <with|mode|math|d x> and <with|mode|math|d
  y> so that we move along the indifference curve, then the total change in
  utility will have to be zero, which is what the equal to zero on the right
  hand side says. Solving this gives us the slope of the indifference curve
  at any point equal to

  <\equation*>
    -<frac|u<rsub|x>(x,y)|u<rsub|y>(x,y)>
  </equation*>

  When preferences are given by (<reference|cd>), then this becomes

  <\equation*>
    -<frac|\<alpha\>x<rsup|\<alpha\>-1>y<rsup|1-\<alpha\>>|(1-\<alpha\>)x<rsup|\<alpha\>>y<rsup|(-\<alpha\>)>>=-<frac|\<alpha\>y|(1-\<alpha\>)x>
  </equation*>

  Then we want

  <\equation*>
    -<frac|\<alpha\>y|(1-\<alpha\>)x>=-<frac|p<rsub|x>|p<rsub|y>>
  </equation*>

  and the budget equation <with|mode|math|p<rsub|x>x+p<rsub|y>y=W>. Solving
  this gives the same equation we derived in the last chapter

  <\equation*>
    y<rsup|\<ast\>>=<frac|(1-\<alpha\>)W|p<rsub|y>>
  </equation*>

  The Lagrangian and graphical methods are pretty much interchangeable when
  preferences are given by (<reference|cd>). To see a problem where the
  graphical method works considerably better, suppose that preferences are
  given by <with|mode|math|u(x,y)=a x+b y>. If you remember your first year
  course, preferences that have this kind of representation are such that the
  consumer views goods <with|mode|math|x> and <with|mode|math|y> to be
  <em|perfect substitutes>. Using our approach above, the slope of the
  indifference curve at the point <with|mode|math|(x,y)> is given by

  <\equation*>
    -<frac|u<rsub|x>(x,y)|u<rsub|y>(x,y)>=-<frac|a|b>
  </equation*>

  As soon as you try to draw the indifference curves, you see that their
  slopes are independent of the point <with|mode|math|(x,y)> at which you try
  to evaluate them. In other words, the indifference curves are all straight
  lines. Our picture now looks like Figure <reference|two>

  <small-figure|<postscript|discontinuities_fig2.eps||||||>|<label|two>>

  If the consumer's indifference curves are all flatter than the budget line,
  then the solution to the maximization problem has to occur at the point
  <with|mode|math|(0,<frac|W|p<rsub|y>>)>. Then the consumers indifference
  curves will look like the red line. They are flatter when their slope
  <with|mode|math|-<frac|a|b>> is closer to zero that
  <with|mode|math|-<frac|p<rsub|x>|p<rsub|y>>>, or when
  <with|mode|math|<frac|a|b>\<less\><frac|p<rsub|x>|p<rsub|y>>>. Now we know
  the entire demand curve for the consumer - demand for good
  <with|mode|math|y> is equal to <with|mode|math|<frac|W|p<rsub|y>>> when
  <with|mode|math|<frac|a|b>\<less\><frac|p<rsub|x>|p<rsub|y>>>,
  <with|mode|math|0> when <with|mode|math|<frac|a|b>\<gtr\><frac|p<rsub|x>|p<rsub|y>>>,
  and is anything between <with|mode|math|0> and
  <with|mode|math|<frac|W|p<rsub|y>> > otherwise. You should derive this
  result using Lagrangian methods to see how much more straightforward the
  graphical technique is.

  <section|Nonlinear Pricing>

  The main purpose of this chapter isn't to take you back to things you
  learned in your first year course. The purpose is to show you that the
  Lagrangian technique is not <em|the> way to solve maximization problems, it
  is just one technique that may prove useful. You will encounter problems
  where it doesn't work well quite often in practise. One example is a
  practise called <em|non-linear pricing>. This exotic name means that the
  per unit price that you pay may depend on how much you want to buy. There
  are two ways that this can work - lets look first at the case where the
  marginal price is increasing. It works this way: the price of good
  <with|mode|math|y> is held constant at <with|mode|math|1>. The price for
  each of the first <with|mode|math|n> units of good <with|mode|math|x> is
  <with|mode|math|p>, but if you want to buy more than <with|mode|math|n>
  units, then each additional unit beyond <with|mode|math|n> will cost a
  <em|higher> price <with|mode|math|p+d p>.\ 

  Cable television companies often use this kind of pricing scheme. There is
  a basic package consisting of around 50 channels. Specialty channels can be
  added to the package, but a bundle of specialty channels might involve only
  another 10 channels. The cost of the extra 10 channels will often be about
  as high as the first 50. Apparently, tickets to world cup soccer matches
  also work this way. You can participate in a lottery and win the right to
  buy a pair of tickets to a world cup match. If you want four tickets, you
  have to buy the additional tickets from resellers at much higher prices.

  The budget line our consumer faces is given in Figure
  <reference|kinked-bl>.

  <small-figure|<postscript|discontinuities_fig3.eps||||||>|<label|kinked-bl>>

  The important point in the diagram is the bundle <with|mode|math|(n,W-pn)>.
  The line segment connecting this point with <with|mode|math|(0,W)> has
  slope <with|mode|math|-p>. The line segment connecting this point to
  <with|mode|math|<left|(><frac|W-np|p+d p><right|)>> is steeper and has
  slope <with|mode|math|-p-d p>. The arrows that point outward from the edges
  of the budget set represent a convenient way to illustrate the slope of the
  line segment. Notice that these arrows are perpendicular to the line
  segments that they touch. You can imagine that the arrow labelled
  <with|mode|math|(p,1)> on the upper part of the budget set is itself a
  little vector in <name|<name|<with|mode|math|\<bbb-R\><rsup|2>>>>. The
  <with|mode|math|x> coordinate of this vector is <with|mode|math|p> and the
  <with|mode|math|y> coordinate is <with|mode|math|1> as illustrated. This is
  a convenient way to say that the slope of the line segment that the arrow
  is touching is <with|mode|math|p>.

  Where does this point come from? Well, if our consumer decided to purchase
  exactly <with|mode|math|n> units of good <with|mode|math|x>, she would
  spend <with|mode|math|p n> and have <with|mode|math|W-p n> dollars left
  over to spend on good <with|mode|math|y>. If she decides to go further and
  spend all her money on <with|mode|math|x>, then she will have
  <with|mode|math|W-n p> dollars left over after she buys her first
  <with|mode|math|n> units of good <with|mode|math|x>. This will allow her to
  afford <with|mode|math|<frac|W-n p|p+d p>> more units of good
  <with|mode|math|x>.

  Lets stick with preferences of the form (<reference|cd>) so that we don't
  have to worry corner solutions. Three different solutions to the consumer's
  problem are possible as indicated in Figure <reference|more-solutions>.

  <small-figure|<postscript|discontinuities_fig4.eps||||||>|<label|more-solutions>>

  The highest indifference curve could be tangent on the upper section, the
  lower section, or the indifference curve may not be tangent to either
  section if it just touches the kink as with the green curve in the figure.
  In this case the optimal solution does not have to satisfy the first order
  conditions because the constraint set is not <em|differentiable>.

  Now lets use the special properties of the utility function given by
  (<reference|cd>) to give a complete solution to this problem. We will
  basically whittle the problem down piece by piece until we find a solution.
  It is a bit more complex that simply writing first order conditions, but
  still pretty algorithmic. First, simply ask what the consumer would do if
  she had income <with|mode|math|W> and could buy all she wanted at price
  <with|mode|math|p>. There are two possibilities here, either
  <with|mode|math|<frac|\<alpha\>W|p>\<less\>n> or not. You can see these two
  in Figure <reference|impossible>.

  <small-figure|<postscript|discontinuities_fig5.eps||||||>|<label|impossible>>

  If the tangency occurs on the upper segment of the budget line (the red
  indifference curve), then you are finished. The consumer will simply
  purchase <with|mode|math|<frac|\<alpha\>W|p>> units of good
  <with|mode|math|x> just as she would have without the non-linear price. On
  the other hand if the tangency occurs on the dashed segment of the budget
  line (the green indifference curve), then the consumer would have liked to
  purchase more than <with|mode|math|n> units of good <with|mode|math|x> at
  the original price. This isn't going to be feasible for her, since each
  unit beyond the <with|mode|math|n<rsup|th>> actually costs here
  <with|mode|math|p+d p>.

  In this case, we can try a trick. Lets take the lower segment of the budget
  line and extend it so that it looks like the budget line the consumer would
  face if she could buy all the good <with|mode|math|x> she wants at the
  constant price <with|mode|math|p+d p>. In addition, lets adjust her income
  so that she is able to afford exactly <with|mode|math|n+<frac|W-n p|p+d p>>
  units of good <with|mode|math|x> if she decides to spend all her money on
  good <with|mode|math|x>. This is pretty easy. To find this just solve

  <\equation*>
    <frac|W<rprime|'>|p+d p>=n+<frac|W-n p|p+d p>
  </equation*>

  for <with|mode|math|W<rprime|'>=W+n d p>. Now solve the consumer's problem
  under these new circumstances (using (<reference|cd>)) and you get the
  choice for <with|mode|math|x> to be

  <\equation*>
    <frac|\<alpha\>(W+n d p)|p+d p>
  </equation*>

  If this solution is larger than <with|mode|math|n>, you are finished. As
  you can see from Figure <reference|lower-part>, our consumer can't do any
  better by cutting consumption of good <with|mode|math|x> below
  <with|mode|math|n>.

  <small-figure|<postscript|discontinuities_fig6.eps||||||>|<label|lower-part>>

  On the other hand, if <with|mode|math|<frac|\<alpha\>(W+n d p)|p+d
  p>\<less\>n> (and you have already checked that
  <with|mode|math|<frac|\<alpha\>W|p>\<gtr\>n>), then you are left with one
  remaining possibility, that the solution is right at the kink in the budget
  line with <with|mode|math|x<rsup|\<ast\>>=n>.

  This gives us a pretty complete solution to the problem. The important
  thing to observe is that we used the Lagrangian technique (implicitly
  because we used it to solve for the demands when preferences are given by
  (<reference|cd>)), but only as part of a more complicated algorithm. The
  more complicated algorithm became necessary because the budget set that we
  are dealing with has a kind of discontinuity.

  Here is a picture that very nicely summarizes the information we have
  learned from this process.

  <small-figure|<postscript|discontinuities_fig7.eps||||||>|>

  We have determined that if <with|mode|math|<frac|\<alpha\>W|p>\<leqslant\>n>
  then our consumer will just buy fewer than <with|mode|math|n> units and
  won't have to pay the higher price. This is a ticket buyer who simply buys
  one or two tickets when he wins the world cup lottery. This inequality is
  the same as <with|mode|math|\<alpha\>W\<leqslant\>p n>. So what the diagram
  does it to draw the graph of the function <with|mode|math|\<alpha\>W> and
  <with|mode|math|p n>. The latter, of course, doesn't depend on
  <with|mode|math|\<alpha\>> so the graph is just a horizontal line. The
  point where these two functions intersect is <with|mode|math|<frac|n p|W>>
  as is shown in the diagram.

  We also figured out that if <with|mode|math|<frac|\<alpha\>(W+d p n)|p+d
  p>\<gtr\>n>, then our consumer would buy strictly more than
  <with|mode|math|n> units, paying the lower price <with|mode|math|p> for the
  first <with|mode|math|n> units, then shelling out the higher price for the
  others. This is the soccer fan who buys additional higher priced tickets
  from resellers (scalpers).

  This inequality is the same thing as <with|mode|math|\<alpha\>(W+d p
  n)\<gtr\>n(p+d p)> or <with|mode|math|\<alpha\>W\<gtr\>n p+(1-\<alpha\>)n d
  p>. The figure adds the graph of the function <with|mode|math|n
  p+(1-\<alpha\>)n d p> which is the downward sloping curve. As you can see
  this curve starts out above <with|mode|math|p n> and eventually equals it.
  This curve intersects <with|mode|math|\<alpha\>W> at the point
  <with|mode|math|<frac|p n+n d p|W+n d p>> as marked in the Figure. So in
  the interval between <with|mode|math|<frac|n p|W>> and
  <with|mode|math|<frac|p n+n d p|W+n d p>> our consumer buys exactly
  <with|mode|math|n> units of the good.

  Perhaps from this analysis, you can tell why firms will use non-linear
  prices. The people who choose to buy <with|mode|math|n> or fewer units
  don't care what price you charge for extra units of output, because they
  don't buy any extra. That means that you can raise the price you charge
  your fanatic customers without losing any business from those who are a
  little less fanatical.

  <section|Sign up Fees>

  One common pricing technique is the sign up fee. Long distance phone
  charges work this way - pay a fixed fee for <with|mode|math|100> free
  minutes. Each minute thereafter will cost an extra 5 cents. You may want
  only 50 minutes of long distance service, but if that is what you want, you
  still have to pay the same fixed fee.

  So lets fix notation. As before we will assume that every unit of good
  <with|mode|math|y> has the same per unit price $<with|mode|math|1>. The
  sign up fee for delivery of good <with|mode|math|x> will be
  <with|mode|math|K>, which will provide <with|mode|math|n> units of good
  <with|mode|math|x>. Each additional unit of good <with|mode|math|x >will
  cost <with|mode|math|p>. The budget set the consumer faces in this case is
  given in Figure <reference|fixed-fee>.

  <small-figure|<postscript|discontinuities_fig8.eps||||||>|<label|fixed-fee>>

  Now if the consumer wants to buy only good <with|mode|math|y>, then she can
  afford <with|mode|math|W> units. If her indifference curves look like the
  red curve that cuts through the point <with|mode|math|(0,W)>. Then she will
  do exactly that. If she wants to buy any good <with|mode|math|x> at all,
  she must pay the fixed fee <with|mode|math|K>. This will cause her budget
  set to jump down discontinuously to the point <with|mode|math|(0,W-K>). She
  would never choose this point if she likes good <with|mode|math|x> because
  she can have up to <with|mode|math|n >free units of the good once she has
  paid the fixed fee. So her budget set must also shift discontinuously up to
  the right to the point <with|mode|math|(n,W-K)>. If she wants more than
  <with|mode|math|n> units of good <with|mode|math|x>, then she will choose a
  tangency point on the downward sloping portion of the budget line (whose
  slope is <with|mode|math|-p>).

  Lets suppose first that our consumer has preferences given by
  (<reference|cd>). Then we can use the method we used for the last problem,
  combining the Lagrangian with a systematic scan of the possibilities. To do
  this, lets first pretend that the consumer simply has a fixed income equal
  to <with|mode|math|W-K+n p>, and that she can buy all the good
  <with|mode|math|x> she wants, even small amounts of it, at price
  <with|mode|math|p>. Applying the Lagrangian method with preferences given
  by (<reference|cd>), we get demand equal to <with|mode|math|\<alpha\>(W-K+p
  n)/p>. If this is larger than <with|mode|math|n>, then we are finished and
  have found the solution to the problem. If it is less than
  <with|mode|math|n>, it means the solution is not feasible given the firm's
  pricing scheme. When preferences are given by (<reference|cd>), we know
  that the consumer will never choose <with|mode|math|0> units of good
  <with|mode|math|x>. So if <with|mode|math|\<alpha\>(W-K+p
  n)/p\<leqslant\>n>, our consumer will simply choose <with|mode|math|n>
  units of good <with|mode|math|x>.

  It may be apparent to you that this pricing scheme helps the firm because
  it induces some consumers who would have purchased fewer than
  <with|mode|math|n> units at a constant price <with|mode|math|p> to increase
  the amount they buy to <with|mode|math|n>. Of course, firms always tout
  their pricing schemes as being designed to allow consumers to choose the
  plan that is best suited to their needs. Perhaps this will indicate that
  this typically means best suited to the <em|firms> needs.

  To make the argument in a little stronger way, suppose that our consumer
  has a slightly different utility function given by
  <with|mode|math|u(x,y)=y+log(x)>. This is a special case of the famous
  quasi-linear utility function that is now just about the most widely used
  utility function in economics.<\footnote>
    You may not see this utility function much for a while. It is most widely
    used in the theory of auctions and mechanism design.
  </footnote> Lets use the Lagrangian method to figure out our consumer's
  demand function in this case.

  She is trying to solve the problem

  <\equation*>
    max<rsub|x>y+log(x)
  </equation*>

  subject to the usual constraints

  <\equation*>
    p x+y-W\<leqslant\>0
  </equation*>

  <\equation*>
    -x\<leqslant\>0
  </equation*>

  <\equation*>
    -y\<leqslant\>0
  </equation*>

  The first order conditions are

  <\equation*>
    <frac|1|x>+\<lambda\><rsub|1>p-\<lambda\><rsub|2>=0
  </equation*>

  <\equation*>
    1+\<lambda\><rsub|1>-\<lambda\><rsub|3>=0
  </equation*>

  along with the three complementary slackness conditions. Since
  <with|mode|math|log(0)> is undefined (or equal to
  <with|mode|math|-\<infty\>>), we know our consumer will always choose a
  strictly positive amount of good <with|mode|math|x>. So by the
  complementary slackness condition, <with|mode|math|\<lambda\><rsub|2>> must
  be equal to zero. Lets suppose for the moment, that the optimal
  <with|mode|math|y> is also positive. Then from the first order conditions,
  <with|mode|math|x=<frac|1|p>>. This is an odd property of quasi-linear
  functions, as long as <with|mode|math|W\<gtr\>1>, the consumers demand will
  be independent of her income. Cigarettes are a commodity (I can't really
  call them a good) that have this property for low income.<\footnote>
    Though as income rises cigarette demand eventually falls. Cigarette
    demand is also very insensitive to price changes, at least when income is
    low.
  </footnote>

  So lets look at the entry fee problem using this result. The next figure
  just reproduces the last one with this extra information about
  quasi-linearity.

  <small-figure|<postscript|discontinuities_fig9.eps||||||>|>

  The picture is drawn so that the consumer initially has income
  <with|mode|math|W\<gtr\>1> and so chooses to buy
  <with|mode|math|<frac|1|p>> units of good <with|mode|math|x>. Our
  Lagrangian analysis says that if the fixed fee varies a little bit, the
  consumer continues to purchase exactly <with|mode|math|<frac|1|p> >units of
  good <with|mode|math|x>.

  Then, as we raise the fixed fee <with|mode|math|K>, this will have no
  effect on our consumer's demand for good <with|mode|math|x>. Of course, the
  revenue that the firm gets selling good <with|mode|math|x> to this consumer
  consists of <with|mode|math|p x> and the fixed fee, so the firm's profit is
  rising as it raises the fee. If the firm raises the fixed fee to
  <with|mode|math|W-1>, the consumer's budget line when she pays the fixed
  fee will shift down until it is equal to the blue line in the figure (which
  connects the point <with|mode|math|(0,1)> to the point
  <with|mode|math|(<frac|1|p>,0)>. Then, our consumer will still buy
  <with|mode|math|<frac|1|p>> units of output, but will now give all the rest
  of her income to the firm as well. When demand is insensitive to changes in
  consumer income, an entry fee is a good way for a firm raise its revenues.

  You should make sure you work out on your own what would happen if the firm
  continued to raise the fixed fee beyond <with|mode|math|W-1>.
</body>

<\initial>
  <\collection>
    <associate|font-base-size|10>
    <associate|preamble|false>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-10|<tuple|8|?>>
    <associate|auto-11|<tuple|9|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-3|<tuple|1|?>>
    <associate|auto-4|<tuple|3|?>>
    <associate|auto-5|<tuple|4|?>>
    <associate|auto-6|<tuple|5|?>>
    <associate|auto-7|<tuple|6|?>>
    <associate|auto-8|<tuple|7|?>>
    <associate|auto-9|<tuple|2|?>>
    <associate|cd|<tuple|1|?>>
    <associate|cobb-douglas|<tuple|<uninit>|?>>
    <associate|fixed-fee|<tuple|8|?>>
    <associate|footnote-1|<tuple|1|?>>
    <associate|footnote-2|<tuple|2|?>>
    <associate|footnote-3|<tuple|3|?>>
    <associate|impossible|<tuple|5|?>>
    <associate|kinked-bl|<tuple|3|?>>
    <associate|lower-part|<tuple|6|?>>
    <associate|more-solutions|<tuple|4|?>>
    <associate|three|<tuple|1|?>>
    <associate|two|<tuple|2|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<label|three>|<pageref|auto-1>>

      <tuple|normal|<label|two>|<pageref|auto-2>>

      <tuple|normal|<label|kinked-bl>|<pageref|auto-4>>

      <tuple|normal|<label|more-solutions>|<pageref|auto-5>>

      <tuple|normal|<label|impossible>|<pageref|auto-6>>

      <tuple|normal|<label|lower-part>|<pageref|auto-7>>

      <tuple|normal||<pageref|auto-8>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Strange
      Budget Sets> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>