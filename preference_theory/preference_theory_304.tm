<TeXmacs|1.0.3.9>

<style|article>

<\body>
  <section|Preferences>

  The foundation of all choice theory in economics is something called a
  <with|font-shape|italic|preference relation>. The idea is that if I present
  you with a pair of alternatives, then you could tell me which one you
  prefer, or possibly that you are indifferent between them. The word
  'prefer' has different meanings in different contexts. For example, if I
  ask you whether you would prefer to see a movie or go to a hockey game your
  preference is expressing something about which you would enjoy. If I ask
  you whether you would like to have the Olympics in your local city, your
  preference may express something about what you think is best for everyone,
  or possibly something about what you think you are supposed to say.
  Sometimes you really can't say that one alternative is better than another.
  For example you might be equally happy with a ham sandwich or a tuna
  sandwich. If I allow for that possibility, it is hard to imagine a
  situation where you wouldn't be able to say something.

  If I am trying to think about your choice behavior and how I might
  understand it, I could begin by trying to imagine all the alternatives that
  you could possibly choose. I would collect them together in a big set
  <with|mode|math|X>. Then I could go about choosing different pairs of
  alternatives in <with|mode|math|X> and asking you to express your opinion
  about which of the two you prefer. Eventually (as long as you didn't get
  tired of answering questions) I could learn which alternative you preferred
  among any pair of alternatives in <with|mode|math|X>. This collection of
  information is your preference relation over <with|mode|math|X>.

  The set <with|mode|math|X> could be very general. For example, you might
  have guessed that we are going to be talking about preference relations
  over collections of possible consumption bundles. There is no need to stop
  there. Much of modern microeconomic theory arises from thinking about
  preferences over things like political parties, environmental policies,
  business strategies, location decisions, and so on.

  There are many kinds of preference relations you will encounter if you
  continue studying economics, but the most widely applied reasoning in
  economics assumes that preference relations have two properties - first,
  they must be <with|font-shape|italic|complete> in the sense that for
  <with|font-shape|italic|any> pair of alternatives in <with|mode|math|X>,
  either you prefer one or the other, or are indifferent. There are some
  interesting preference relations that are incomplete, but lets leave that
  for the moment and concentrate on another problem. Your preference relation
  could be 'odd'. For example, suppose you like the Liberals more than the
  Conservatives because they are more socially progressive. You might like
  the NDP more than the Liberals for the same reason. However, you may prefer
  the Conservatives to the NDP because they are more fiscally responsible.
  Ignoring any other parties, then you have just expressed a complete and
  reasonable preference relation over the political parties. It does present
  something of a problem when you are trying to vote. You can't vote
  Conservative because you prefer the Liberals to the Conservatives, you
  can't vote Liberal because you prefer the NDP to the Liberals.
  Unfortunately you can't vote NDP either because you prefer the
  Conservatives to the NDP.<footnote|I suppose this could explain why so many
  people don't vote.>

  We have a word for this kind of preference relation in economics, it is
  called an <with|font-shape|italic|intransitive> preference relation. To put
  is another way, a <with|font-shape|italic|transitive >preference relation
  is one such that for any 3 alternatives <with|mode|math|x>,
  <with|mode|math|y>, and <with|mode|math|z> in <with|mode|math|X>, if
  <with|mode|math|x> is preferred to <with|mode|math|y> and
  <with|mode|math|y> is preferred to <with|mode|math|z>, then it must be the
  case that <with|mode|math|x> is preferred to <with|mode|math|z>. A complete
  transitive preference relation is called a <with|font-shape|italic|rational
  preference relation>.

  In fact, I have just described to you what rationality means in economics.
  A person is said to be rational in a particular economic environment if
  they have a complete and transitive preference relation over the
  alternatives that they face in that environment. In particular, it doesn't
  mean that people are greedy or self interested. It doesn't mean that they
  are super sophisticated calculators. It just means that they can express
  opinions about pairs of alternatives.

  <subsection|Behavior>

  So how do economists go about predicting what people will do? All they say
  is that whatever alternative <with|mode|math|x> is actually chosen from
  <with|mode|math|X>, then there cannot be another alternative in
  <with|mode|math|X> that is preferred to <with|mode|math|x>. It is true that
  in experiments, people sometimes exhibit intransitive preferences (though
  they quickly change their behavior when this is pointed out to them). There
  are also situations in which it seems impossible for people to make a
  choice. For the most part though, assuming that people are rational (have a
  complete transitive preference relation) is pretty innocuous.

  It might also occur to you that if you accept that people are rational
  decision makers, then you can't really get yourself in too much trouble. I
  never said what these preference relations had to look like. To assert that
  an individual chooses the alternative that he or she most prefers is almost
  tautological. The real content of economic theory involves restrictions it
  imposes on <with|mode|math|X> and on the preference relation over
  <with|mode|math|X>. Its failures and successes having nothing to do with
  the assumption of rationality.

  I want to show you the theorem that has transformed economics into a social
  science that is unlike most others. Before this, let me digress on another
  important idea. Introductory economics courses focus on consumption and
  consumption bundles. A consumption bundle is a pair
  <with|mode|math|<left|(>x,y<right|)>> where the first component of this
  vector is some quantity that you consume of one good (just call it good
  <with|mode|math|x> for short), the second component is the quantity you
  consume of the second good. Consumption doesn't generate happiness or
  utility or utils or anything like that. If we follow your first year
  course, and imagine that good <with|mode|math|x> has a price
  <with|mode|math|p> and good <with|mode|math|y> has a price
  <with|mode|math|q>, and that you have <with|mode|math|W> to spend, then the
  consumer is faced with a set of alternatives <with|mode|math|X> which
  consists of all pairs <with|mode|math|<left|(>x,y<right|)>> whose cost is
  less than or equal to <with|mode|math|W>, i.e.,

  <\equation*>
    X\<equiv\><left|{><left|(>x,y<right|)>\<in\><with|math-font|Bbb|R><rsub|+><rsup|2>:p*x+q*y\<leq\>W<right|}>
  </equation*>

  Here <with|mode|math|<with|math-font|Bbb|R><rsub|+><rsup|2>> is the set of
  all vectors with two non-negative components. Read the colon to mean ''such
  that''.

  Well, since we have a set of alternatives, it is pretty safe to assume that
  for any pair of alternatives (a pair of alternatives is a pair of vectors
  <with|mode|math|<left|(>x,y<right|)>> and
  <with|mode|math|<left|(>x<rprime|'>,y<rprime|'><right|)>> here), the
  consumer can express a preference between them. Suppose for the moment that
  we could get the consumer to tell us what his or her preference relation
  is. But now we face a small problem. Suppose the consumer tells us the he
  prefers <with|mode|math|<left|(>x,y<right|)>> to
  <with|mode|math|<left|(>x<rprime|'>,y<rprime|'><right|)>>. Suppose that we
  now look at another budget set <with|mode|math|X<rprime|'>> where prices
  are <with|mode|math|p<rprime|'>> and <with|mode|math|q<rprime|'>>, and
  maybe income is <with|mode|math|W<rprime|'>>. Lets pick this new set so
  that it contains both <with|mode|math|<left|(>x,y<right|)>> and
  <with|mode|math|<left|(>x<rprime|'>,y<rprime|'><right|)>>. Do we really
  need to ask the consumer if he prefers <with|mode|math|<left|(>x,y<right|)>>
  to <with|mode|math|<left|(>x<rprime|'>,y<rprime|'><right|)>> in this new
  set? Of course his preference could well change. People have no use for
  telephones unless other people have telephones. The change in income might
  mean that others can buy phones. The price changes might signal changes in
  quality of the goods that he is buying (suppose <with|mode|math|x> and
  <with|mode|math|y> are stocks or bonds or something like that).

  Now we begin to impose some restrictions of preferences and economic theory
  begins to have some content (of course, we also study what happens when
  preference relations change with prices and income). We are going to assume
  that if <with|mode|math|<left|(>x,y<right|)>> and
  <with|mode|math|<left|(>x<rprime|'>,y<rprime|'><right|)>> are in both
  <with|mode|math|X> and <with|mode|math|X<rprime|'>> and if
  <with|mode|math|<left|(>x,y<right|)>> is preferred to
  <with|mode|math|<left|(>x<rprime|'>,y<rprime|'><right|)>> in the preference
  relation relative to <with|mode|math|X>, then it must also be preferred in
  the preference relation relative to <with|mode|math|X<rprime|'>>.

  The important point is that the assumption that our consumer was rational
  imposed no restriction whatsoever on his behavior. This added assumption
  does restrict what we should expect to see him do. For example, suppose
  that we could run a long series of experiments in which our consumer is
  repeatedly asked to choose something from <with|mode|math|X> and that he
  consistently chooses <with|mode|math|<left|(>x,y<right|)>>. If our
  assumption is true, then it would be highly unlikely that if we had him
  choose repeatedly from <with|mode|math|X<rprime|'>> that he would
  consistently pick <with|mode|math|<left|(>x<rprime|'>,y<rprime|'><right|)>>.<footnote|He
  might do this once if he were indifferent, but would probably not do it
  consistently if he were indifferent.> The predictive content of the theory
  comes from the assumption that his preference relation is independent of
  the prices and income that he faces, not from the assumption that he is
  rational.

  You will see this repeatedly in economics - we will impose restrictions on
  <with|mode|math|X> and the preference relation over it, then make
  predictions (and test them). If you want to argue about economics the idea
  is to understand these restrictions and criticize them. It is a waste of
  time to argue about whether or not consumers are rational.

  <subsection|Indifference Curves>

  So lets continue with first year economics. Since preference relations
  (lets' just say preferences from now on) are assumed to be independent of
  prices and income, we could sensibly take the consumer's preference
  relation and collect together <with|font-shape|italic|all >the consumption
  bundles <with|mode|math|<left|(>x<rprime|'>,y<rsup|\<prime\>><right|)>>
  which are indifferent to some bundle <with|mode|math|<left|(>x,y<right|)>>.<footnote|To
  be formal, we could say that <with|mode|math|<left|(>x,y<right|)>> is
  indifferent to <with|mode|math|<left|(>x<rprime|'>,y<rprime|'><right|)>> if
  <with|mode|math|<left|(>x,y<right|)>> is at least as good as
  <with|mode|math|<left|(>x<rprime|'>,y<rprime|'><right|)>> and at the same
  time <with|mode|math|<left|(>x<rprime|'>,y<rprime|'><right|)>> is at least
  as good as <with|mode|math|<left|(>x,y<right|)>>.> As you remember from
  your first year course, this collection of consumption bundles is called an
  <with|font-shape|italic|indifference curve>. Please note that the
  indifference curve comes directly from the preference relation and has
  nothing to do with utils or satisfaction of anything like that. Since we
  can construct an indifference curve for any consumption bundle, there is
  really a <with|font-shape|italic|family> of indifference curves. Pick two
  indifference curves in this family, say <with|mode|math|C<rsub|1>> and
  <with|mode|math|C<rsub|2>> and choose a bundle
  <with|mode|math|<left|(>x,y<right|)>> from <with|mode|math|C<rsub|1>>
  (which is itself a set) and <with|mode|math|<left|(>x<rsup|\<prime\>>,y<rprime|'><right|)>>
  from <with|mode|math|C<rsub|2>>.

  If <with|mode|math|<left|(>x,y<right|)>> is preferred to
  <with|mode|math|<left|(>x<rprime|'>,y<rsup|\<prime\>><right|)>> then we say
  that the indifference curve <with|mode|math|C<rsub|1>> is
  <with|font-shape|italic|higher than ><with|mode|math|C<rsub|2>>. Then of
  course, any bundle in <with|mode|math|C<rsub|1>> will be preferred to any
  bundle in <with|mode|math|C<rsub|2>>. There isn't much that can be said
  about indifference curves at this point except that when a consumer is
  rational, two distinct indifference curves can't have any point in common.
  To see this suppose that <with|mode|math|C<rsub|1>> is higher than
  <with|mode|math|C<rsub|2>>. Let <with|mode|math|<left|(>x<rsup|\<prime\>\<prime\>>,y<rsup|\<prime\>\<prime\>><right|)>>
  be the point that the curves have in common, with
  <with|mode|math|<left|(>x,y<right|)>> in <with|mode|math|C<rsub|1>> and
  <with|mode|math|<left|(>x<rprime|'>,y<rprime|'><right|)>> in
  <with|mode|math|C<rsub|2>>. Then <with|mode|math|<left|(>x<rprime|'>,y<rprime|'><right|)>>
  is at least as good as <with|mode|math|<left|(>x<rsup|\<prime\>\<prime\>>,y<rsup|\<prime\>\<prime\>><right|)>>
  since both are in <with|mode|math|C<rsub|2>>.
  <with|mode|math|<left|(>x<rsup|\<prime\>\<prime\>>,y<rsup|\<prime\>\<prime\>><right|)>>
  is at least as good as <with|mode|math|<left|(>x,y<right|)>> since both are
  in <with|mode|math|C<rsub|1>>. Now transitivity requires that
  <with|mode|math|<left|(>x<rprime|'>,y<rprime|'><right|)>> be at least as
  good as <with|mode|math|<left|(>x,y<right|)>> which is false if the
  consumer is rational.<footnote|A small digression - this simple argument is
  an example of a line of reasoning that you will see often in economics. If
  you want to show that some property A implies that another property B must
  be true, try to show that if <with|mode|math|B> isn't true, then A can't be
  true either. This is called a proof <with|font-shape|italic|by
  contradiction.> Here we wanted to show that if a preference relation is
  transitive (A) then a pair of indifference curves couldn't cross (B). We
  showed that if the curves did cross, the preference relation couldn't be
  transitive.>

  At this point, we could try to describe graphic properties of the
  indifference curves. If we started to do that, we would end up spending
  considerable time trying to absorb graphic formalism and end up saying what
  we could have said with words. So it is time for me to introduce the
  theorem that makes economics work.

  Write the preference relation as <with|mode|math|\<succeq\>>, meaning that
  <with|mode|math|<left|(>x,y<right|)>\<succeq\><left|(>x<rprime|'>,y<rprime|'><right|)>>
  whenever <with|mode|math|<left|(>x,y<right|)>> is preferred to
  <with|mode|math|<left|(>x<rprime|'>,y<rprime|'><right|)>>. A
  <with|font-shape|italic|utility function> is a relation that converts each
  bundle <with|mode|math|<left|(>x,y<right|)>> into a corresponding utility
  value or number. The utility function <with|mode|math|u> represents the
  preference relation <with|mode|math|\<succeq\>> as long as
  <with|mode|math|u<left|(>x,y<right|)>\<geq\>u<left|(>x<rprime|'>,y<rprime|'><right|)>>
  if and only if <with|mode|math|<left|(>x,y<right|)>\<succeq\><left|(>x<rprime|'>,y<rprime|'><right|)>>.
  If we happened to be able to find a utility function to represent a
  preference relation then we would have a big leg up. To predict what a
  consumer will do so far, we need to scan all pairs of consumption bundles
  until we find a bundle such that no other bundle is preferred to it. This
  makes for a lot of tedious pairwise comparisons. There isn't any obvious
  reason why this sort of reasoning is going to help us understand behavior.
  If preferences are represented by a utility function, we could take the
  function and find the bundle that produced the highest utility number in
  the set of alternatives. That would be relatively easy because we could use
  all the standard mathematical tricks we know about maximizing functions
  (like setting derivatives to zero and so on).

  Yet the utility function yields something far more important. As I
  mentioned above, the content of economic theory doesn't come from the
  rationality assumption. It comes from imposing restrictions on the
  preference relation and the feasible set. It is difficult to formulate
  ideas about preference relations since they are relative complex objects.
  On the other hand, it is much easier to impose and understand restrictions
  on utility functions.

  Assuming that people have utility functions which they maximize is just
  about the last thing we want to do. If we did that, then all the people who
  accuse economists of being irrelevant because they assume that consumers
  are 'rational' would have a good point. We would be guilty of predicting
  behavior by assuming that people do something that they obviously don't.

  So why use a utility function? We need to add one important restriction on
  preference relations, and one simplifying restriction.<footnote|Simplifying
  means that I could make the same argument I am about to make without the
  restriction, but it would take me a lot longer.> The simplifying
  restriction is that our consumer likes more of both goods - i.e., if
  <with|mode|math|<left|(>x,y<right|)>> and
  <with|mode|math|<left|(>x<rprime|'>,y<rprime|'><right|)>> are such that
  <with|mode|math|x\<geq\>x<rsup|\<prime\>>> and
  <with|mode|math|y\<geq\>y<rprime|'>> and at least one of these inequalities
  is strict, then <with|mode|math|<left|(>x,y<right|)>\<succeq\><left|(>x<rprime|'>,y<rprime|'><right|)>>
  but not the other way around. Having more of any good makes the consumer
  strictly better off. For short, lets say that such a preference relation is
  <with|font-shape|italic|monotonic>.

  Now for the important restriction. Let <with|mode|math|B=<left|{><left|(>x<rsup|\<prime\>>,y<rprime|'><right|)>\<in\><with|math-font|Bbb|R><rsub|+><rsup|2>:<left|(>x<rprime|'>,y<rsup|\<prime\>><right|)>\<succeq\><left|(>x,y<right|)><right|}>>
  and <with|mode|math|W=<left|{><left|(>x<rprime|'>,y<rprime|'><right|)>\<in\><with|math-font|Bbb|R><rsub|+><rsup|2>:<left|(>x,y<right|)>\<succeq\><left|(>x<rprime|'>,y<rprime|'><right|)><right|}>>.
  Then both <with|mode|math|B> and <with|mode|math|W> are
  <with|font-shape|italic|closed> sets<footnote|A closed set is one for which
  any convergent sequence of points in the set converges to a point in the
  set.>. If these sets are closed for any
  <with|mode|math|<left|(>x,y<right|)>\<in\><with|math-font|Bbb|R><rsub|+><rsup|2>>
  then the preference relation is said to be
  <with|font-shape|italic|continuous. >Now the following important theorem is
  true:

  <\theorem>
    Let <with|mode|math|\<succeq\>> be a continuous and monotonic rational
    preference relation. Then there exists a utility function
    <with|mode|math|u> which represents the preference relation
    <with|mode|math|\<succeq\>>.
  </theorem>

  <\proof>
    We are going to prove this constructively by actually making up the
    function. First some preliminaries. Let <with|mode|math|Z> represent the
    45<with|mode|math|<rsup|0>> line (i.e., the set of all points in
    <with|mode|math|<with|math-font|Bbb|R><rsub|+><rsup|2>> which have the
    same horizontal and vertical coordinate). Let
    <with|mode|math|<left|(>x,y<right|)>> be any consumption bundle. Let
    <with|mode|math|\<varepsilon\>\<gtr\>0> be a small positive number. The
    bundle <with|mode|math|<left|(>max<left|[>x,y<right|]>+\<varepsilon\>,max<left|[>x,y<right|]>+\<varepsilon\><right|)>>
    is in <with|mode|math|Z> and is strictly preferred to
    <with|mode|math|<left|(>x,y<right|)>> by the fact that preferences are
    monotonic. Similarly <with|mode|math|<left|(>x,y<right|)>> is preferred
    to <with|mode|math|<left|(>min<left|[>x,y<right|]>-\<varepsilon\>,min<left|[>x,y<right|]>-\<varepsilon\><right|)>>
    by monotonicity. So the sets <with|mode|math|B> and <with|mode|math|W>
    are both non-empty. As preferences are continuous, these sets are both
    closed. This lets us deduce that the sets
    <with|mode|math|P<rsup|+>=B\<cap\>Z> and
    <with|mode|math|P<rsup|->=W\<cap\>Z> are both closed as the intersection
    of closed sets. In Figure <reference|g1> the set
    <with|mode|math|P<rsup|+>> is marked in red. It is the intersection of
    the 45<with|mode|math|<rsup|0>> line and the set <with|mode|math|B>
    consisting of all bundles that are preferred to
    <with|mode|math|<left|(>x,y<right|)>>. The set <with|mode|math|P<rsup|->>
    is marked in blue in the figure.

    Now the sets <with|mode|math|P<rsup|+>> and <with|mode|math|P<rsup|->>
    are made up of bundles (in <with|mode|math|<with|math-font|Bbb|R><rsub|+><rsup|2>>)
    that have the same horizontal and vertical component. So we can
    associated each bundle in <with|mode|math|z> with this common component,
    which is just a positive real number. Since each bundle
    <with|mode|math|z\<in\>Z> either has <with|mode|math|z\<succeq\><left|(>x,y<right|)>>
    or <with|mode|math|<left|(>x,y<right|)>\<succeq\>z> by the completeness
    of preferences, (recall that completeness is part of rationality) each
    point in <with|mode|math|z> is either in <with|mode|math|P<rsup|+>> or
    <with|mode|math|P<rsup|->>. Each point in <with|mode|math|P<rsup|+>> or
    <with|mode|math|P<rsup|->> is also in <with|mode|math|Z> by construction,
    so <with|mode|math|Z=P<rsup|+>\<cup\>P<rsup|->>.

    By happy coincidence<footnote|If you believe it is a coincidence, I have
    a bridge to sell you.> <with|mode|math|P<rsup|+>> and
    <with|mode|math|P<rsup|->> share exactly one point in common. Part of the
    argument for this is an arcane point in set theory. Since
    <with|mode|math|P<rsup|+>\<cup\>P<rsup|->> is all of <with|mode|math|Z>,
    if they don't share a common point, then <with|mode|math|P<rsup|->> must
    be the complement of <with|mode|math|P<rsup|+>> in <with|mode|math|Z>.
    Since the complement of a closed set is open, <with|mode|math|P<rsup|->>
    would have to be open which it cannot be. So there must be at least one
    common point. Could there be two? Again, suppose there were, say
    <with|mode|math|z> and <with|mode|math|z<rprime|'>>. They are both in
    <with|mode|math|Z> so they are both on the 45<with|mode|math|<rsup|0>>
    line. If they are distinct then, say,
    <with|mode|math|z\<gtr\>\<gtr\>z<rprime|'>> (meaning each component of
    <with|mode|math|z> is strictly larger than the corresponding component of
    <with|mode|math|z<rprime|'>>). Then by monotonicity
    <with|mode|math|z\<succeq\>z<rprime|'>> but not the other way around.
    Then by transitivity <with|mode|math|<left|(>x,y<right|)>\<succeq\>z<rprime|'>>
    but not the other way around. But this can't be since
    <with|mode|math|z<rprime|'>\<in\>P<rsup|+>>.

    All this work leads to the conclusion that for every bundle
    <with|mode|math|<left|(>x,y<right|)>> we can find a point on the
    45<with|mode|math|<rsup|0>> line which is indifferent to it. Lets call
    the common coordinate of this point the <with|font-shape|italic|utility
    ><with|mode|math|u<left|(>x,y<right|)>> associated with the bundle
    <with|mode|math|<left|(>x,y<right|)>> (this probably emphasizes the point
    that utility is measured as some number of goods, not as utils or
    satisfaction).

    Finally, all we need to do is check that this utility function
    <with|mode|math|u<left|(>x,y<right|)>> actually represents preferences.
    This is pretty straightforward. For example if
    <with|mode|math|u<left|(>x,y<right|)>\<geq\>u<left|(>x<rprime|'>,y<rsup|\<prime\>><right|)>>
    then the <with|mode|math|z> associated with
    <with|mode|math|<left|(>x,y<right|)>> has a bigger common component than
    the <with|mode|math|z<rprime|'>> associated with
    <with|mode|math|<left|(>x<rsup|\<prime\>>,y<rprime|'><right|)>>. Then
    <with|mode|math|<left|(>x,y<right|)>\<succeq\>z> (since
    <with|mode|math|z\<in\>P<rsup|->> for
    <with|mode|math|<left|(>x,y<right|)>>)
    <with|mode|math|\<succeq\>z<rprime|'>> (by monotonicity)
    <with|mode|math|\<succeq\><left|(>x<rprime|'>,y<rprime|'><right|)>>
    (since <with|mode|math|z<rprime|'>\<in\>P<rsup|+>> for
    <with|mode|math|<left|(>x<rprime|'>,y<rprime|'><right|)>>). The other
    direction is just as easy.
  </proof>

  <small-figure|<postscript|preferences_fig1.eps||||||>|The Sets
  <with|mode|math|P<rsup|+>> and <with|mode|math|P<rsup|->><label|g1>>

  So lets' collect our thoughts for a moment. When a consumer chooses a
  bundle from some budget set she picks something such that if we offer her
  some other bundle from the same budget set, she will not want it. If her
  preferences are transitive and complete (and continuous) it will
  <with|font-shape|italic|appear to be the case> that she is choosing a
  bundle to maximize a utility function subject to the budget constraint. In
  the consumer's own mind, there is no such thing as utility, rational
  utility maximization is an implication of simpler properties of consumer
  behavior. Nor is it assumed that there is any numerical way to measure
  happiness or satisfaction. These simply aren't parts of modern
  microeconomic theory.

  <subsection|Economic Modeling>

  Why was this theorem so important? Well it shows first that economic
  methodology itself doesn't rely on grand assumptions about human behavior.
  Of course, when we impose restrictions on the preference relation or the
  set of feasible alternatives, we are making assumptions. These assumptions
  are part of what we call economic <with|font-shape|italic|models>. When we
  formulate an economic model, we try to extract all the implications of the
  restrictions. These restrictions are predictions the model makes. We can
  collect data about the choices consumers actually do make, to check whether
  these predictions are right. When they are wrong, we know we need to
  reformulate the model (or change some of the restrictions).

  The second thing is shows is that we can extract these restrictions using
  some fairly basic mathematical tools, like the theory of optimization (and
  of course, the dreaded calculus). The mathematization of economics occurred
  in the late 50's and has had a remarkable impact on the way economists
  interact. To use mathematics, it is necessary that the concepts, sets, and
  functions involved be very precisely defined. There is no room for
  interpretation (though certainly there is room to fine tune and modify
  concepts). An economic concept must mean the same thing to everyone.

  This has had an impact that you might not expect. Anyone who understands
  basic mathematics should be able to understand the most advanced ideas in
  economic theory. Oddly enough mathematics makes economics very
  inclusive.<footnote|You might like to compare the definition of utility I
  have given above with definitions you will hear for important concepts like
  capitalism or post modernism.> This has had great benefits for economist,
  since other fields have been moving in much the same direction. Computer
  science, biology, ecology, environmental science, all use methods similar
  to those used by economists. The level of interaction among practitioners
  in these different fields is increasing to the enrichment of all.

  Most of this course tries to develop the mathematical and conceptual tools
  you need to formulate and analyze economic models on your own. As we go
  about this, you will see some models that have worked out pretty well in
  the sense that they give very good insight into some pretty applied
  problems. You will also get a chance to see some models that don't work so
  well. These 'failures' give a good deal of insight into how theoretical and
  empirical work interact. Though these applications are important in the
  overall scheme of things, they are not the main focus of the course. It is
  the art of building the models themselves that is the concern here. Once
  you begin to appreciate this approach, your subsequent studies in more
  applied areas will make more sense.
</body>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|1.1|?>>
    <associate|auto-3|<tuple|1.2|?>>
    <associate|auto-4|<tuple|1|?>>
    <associate|auto-5|<tuple|1.3|?>>
    <associate|footnote-1|<tuple|1|?>>
    <associate|footnote-2|<tuple|2|?>>
    <associate|footnote-3|<tuple|3|?>>
    <associate|footnote-4|<tuple|4|?>>
    <associate|footnote-5|<tuple|5|?>>
    <associate|footnote-6|<tuple|6|?>>
    <associate|footnote-7|<tuple|7|?>>
    <associate|footnote-8|<tuple|8|?>>
    <associate|g1|<tuple|1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|The sets <with|mode|<quote|math>|P<rsup|+>> and
      <with|mode|<quote|math>|P<rsup|->>|<pageref|auto-4>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Preferences>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|1.1<space|2spc>Behavior
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-2>>

      <with|par-left|<quote|1.5fn>|1.2<space|2spc>Indifference Curves
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-3>>

      <with|par-left|<quote|1.5fn>|1.3<space|2spc>Economic Modelling
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-5>>
    </associate>
  </collection>
</auxiliary>