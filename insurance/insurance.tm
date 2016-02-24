<TeXmacs|1.0.3.9>

<style|article>

<\body>
  <center|Insurance>

  In this chapter we study a very simple model of insurance using the ideas
  and concepts developed in the chapter on risk aversion. You may recall from
  the previous chapter, the concept of a <em|lottery> - a collection of
  outcomes, each of which is assigned as different probability of occurrence.
  We are going to assume that the independence axiom \ holds, and that our
  consumers and decision makers have preferences that are linear in the
  probabilities with which these different outcomes occur.

  Expected utility says that we should start with a list of all possible
  <em|outcomes>. Lets just think of the set of outcomes as a finite set
  <with|mode|math|S> (later on we will refer to them as <em|states>).
  Sometimes we let <with|mode|math|S> refer to the number of outcomes in this
  set. We let <with|mode|math|s> refer to a particular outcome in this set. A
  lottery is a vector of probabilities <with|mode|math|p> consisting of
  <with|mode|math|S> non-negative components, the sum of which must equal
  <with|mode|math|1.> The expected utility theorem says that there is a
  vector of real numbers <with|mode|math|{u<rsub|1>,\<ldots\>,u<rsub|S>}>
  such that two lotteries <with|mode|math|p> and <with|mode|math|q> can be
  ranked in the following way: <with|mode|math|p\<succeq\>q> if and only if

  <\equation*>
    <big|sum><rsub|s=1><rsup|S>p<rsub|s>u<rsub|s>\<geqslant\><big|sum><rsub|s=1><rsup|S>q<rsub|s>u<rsub|s>
  </equation*>

  In most of what we do in economics, including the insurance problem, we fix
  the probabilities <with|mode|math|p> then vary the numbers
  <with|mode|math|u<rsub|s>> in some fashion. This is exactly what we are
  going to do here with the insurance problem.

  On the surface the expected utility theorem doesn't seem to support this
  approach. In fact, it is a very restrictive special case which you can
  understand if you think of the set of outcomes as a continuum and the set
  of lotteries as a set of probability measures on this continuum. At the
  moment, the details of this argument aren't so important. All you need to
  remember is that we will use the expected utility theorem to support the
  arguments here.

  Lets apply these ideas to insurance. We start with a consumer who has an
  income <with|mode|math|y> but who expects to have an accident with some
  probability <with|mode|math|p>. The accident has a known monetary cost
  <with|mode|math|d>. The consumer deals with a competitive insurance company
  which sells policies to many similar consumers and knows the probability
  with which the consumer has an accident.

  A good example might be a farmer whose fields produce a yearly income
  <with|mode|math|y> unless there is a late frost which kills off some of his
  crop. The probability of a late frost is <with|mode|math|p>. A bad example
  would be car insurance. There are a couple of reasons. The first is that
  the probability of an accident is something that a driver has some control
  over. If you are insured against the costs of an accident, there there is
  little incentive to take care. This is referred to as <em|moral hazard>. A
  farmer, on the other hand, has little control over the weather. Drivers
  also have a lot of information about their own accident probability that
  the insurance company doesn't. The weather, on the other hand, is
  unpredictable, but in way that everyone agrees about.

  The insurance company will sell a <em|policy> to the consumer. A policy is
  a premium <with|mode|math|q> and a <em|net> benefit <with|mode|math|b>. The
  net benefit is the difference between the gross benefit <with|mode|math|B>
  and the premium <with|mode|math|q.> The way the insurance policy works is
  that the consumer pays the insurance company <with|mode|math|q> up front.
  Then, if (and only if) the consumer has an accident, the insurance company
  pays the consumer <with|mode|math|B>. Equivalently, if the consumer has an
  accident, the insurance company pays back the premium <with|mode|math|q>
  and gives the consumer and additional <with|mode|math|q> to make up for her
  loss.

  The insurance company is doing this with many different consumers and is
  willing to offer the consumer any policy that breaks even in the sense that
  the companies expected profit from the policy is zero. The expected profit
  to the company from a policy with premium <with|mode|math|q> and net
  benefit <with|mode|math|b> is

  <\equation*>
    (1-p)q-p b
  </equation*>

  \;

  Our consumer has expected utility preferences, so if she buys a policy with
  premium <with|mode|math|q> and net benefit <with|mode|math|b>, her expected
  utility is

  <\equation*>
    (1-p)u(y-q)+q u(y-d+b)
  </equation*>

  The consumer's problem is to buy a policy that maximizes her expected
  utility.

  Lets solve the problem two different ways. First, we use the graphical
  approach. To see this approach, we can convert the problem into something
  that looks exactly like the consumer problems we have already studied.

  <small-figure|<postscript|insurance_fig1.eps||||||>|>

  The horizontal axis in the diagram measures the amount of income the
  consumer enjoys in the event that she does not have an accident. If she
  doesn't buy insurance, this will just be <with|mode|math|y>. If she does
  buy insurance, it will be <with|mode|math|y> less the premium that she
  pays. The vertical axis measures the level of consumption in the event that
  our consumer does have an accident. In this diagram, the consumer's
  <em|endowment> is the point <with|mode|math|(y,y-d)>. The consumer can
  switch from her endowment to the consumption pair
  <with|mode|math|(y-q,y-d+b)> by buying a policy with premium
  <with|mode|math|q> and net benefit <with|mode|math|b>.\ 

  In the diagram, I have drawn this as if it created an entire budget line
  for the consumer. The reasoning is as follows: the insurance company will
  presumably be willing to sell the consumer <em|any> policy that generates
  zero expected profit, i.e., any policy that satisfies
  <with|mode|math|(1-p)q-p b=0>, or <with|mode|math|b=q<frac|1-p|p>>. The set
  of all such policies generates a feasible set that passes through the
  endowment point (since the policy <with|mode|math|(0,0)> obviously gives
  the insurance company zero expected profit) and has slope
  <with|mode|math|-<frac|1-p|p>>.

  The consumer's indifference curves are made up of all the pairs
  <with|mode|math|(c<rsub|n>,c<rsub|a>)> that yield the same level of
  expected utility. So for example, the indifference curve through the
  endowment is given by the set of solutions to

  <\equation>
    (1-p)u(c<rsub|n>)+p u(c<rsub|a>)=(1-p) u(y)+p u(y-d)
  </equation>

  Using the method of total differentials, the slope of the indifference
  curve can be derived by solving

  <\equation>
    (1-p)u<rprime|'>(c<rsub|n>)d c<rsub|n>+p u<rprime|'>(c<rsub|a>)d
    c<rsub|a>=0
  </equation>

  or

  <\equation>
    <frac|d c<rsub|a>|d c<rsub|n>>=-<frac|(1-p)u<rprime|'>(c<rsub|n>)|p
    u<rprime|'>(c<rsub|a>)>
  </equation>

  A very nice property of expected utility preferences is that if
  <with|mode|math|c<rsub|a>=c<rsub|n>>, then
  <with|mode|math|u<rprime|'>(c<rsub|a>)=u<rprime|'>(c<rsub|n>)>. If, in
  addition, the function <with|mode|math|u> is concave (has a decreasing
  first derivative), then the indifference curves will appear as convex
  curves as in the following picture:

  <small-figure|<postscript|insurance_fig2.eps||||||>|>

  Since the slope of every indifference curve is
  <with|mode|math|-<frac|1-p|p>> on the <with|mode|math|45<rsup|o>> line, the
  highest indifference curve to touch the budget set will be the one tangent
  at the <with|mode|math|45<rsup|o>> line. The nice implication is that a
  risk averse consumer who can buy insurance at 'actuarially fair' prices
  (i.e., prices that give the insurance company zero expected profit) will
  buy insurance up to the point where his consumption is the same whether or
  not she has an accident.

  To be complete, lets solve this as well using Lagrangian methods because it
  does provide some insight. First the consumers problem (at least when
  dealing with a fair insurance company) is to maximize

  <\equation>
    (1-p)u(y-q)+p u(y-d+b)
  </equation>

  by choosing a premium and benefit package <with|mode|math|(q,b)> subject to
  the constraint that

  <\equation>
    (1-p )q-p b=0
  </equation>

  Notice that there is nothing here about the premium and benefit being
  positive. It is conceivable that the consumer might want to bet with
  another consumer that she would <em|not> have an accident. In that case,
  she would receive money from the other consumer when she didn't have an
  accident, which coincides with a negative value for <with|mode|math|q>.
  Then, to satisfy the constraint, she would have to pay out in the event
  that she did have an accident.

  Since there are no inequality constraints, our Lagrangian theorem says that
  at the optimal solution, there will be a multiplier
  <with|mode|math|\<lambda\>> such that

  <\equation>
    -(1-p)u<rprime|'>(y-q)+\<lambda\>(1-p)=0
  </equation>

  and

  <\equation>
    p u<rprime|'>(y-d+b)-\<lambda\>p=0
  </equation>

  The probabilities cancel in this expression, so we get
  <with|mode|math|u<rprime|'>(y-q)=u<rprime|'>(y-d+b)=\<lambda\>>. If we
  assume that the marginal utility of income is monotonically declining, then
  this can only occur when <with|mode|math|y-q=y-d+b>.
</body>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|2|?>>
  </collection>
</references>