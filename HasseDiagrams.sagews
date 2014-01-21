︠3243eacf-6fb4-491d-a175-4ff54f80e4c6i︠
%md

# How to make a Hasse diagram


## What's the point of a Hasse diagram

A Hasse diagram is a graph that you make for a partially ordered set. Since a partial ordering is just a certain kind of relation, and we already have a method for graphing relations (using digraphs), you might be wondering -- why learn something new? Why not just draw the digraph for the partial ordering and be done?

The answer is simplicity.

+ In a partial ordering, you don't need to draw loops that go from a vertex to itself because that's redundant -- a partial ordering is *reflexive*, so **every** vertex would have a loop, which means there's no point in drawing them.
+ In a partial ordering, you don't need to "complete the triangle" anywhere. If point $A$ is related to point $B$ and $B$ is related to $C$ then $A$ and $C$ are automatically related because partial orderings are *transitive*. It's implied that there is an edge from $A$ to $C$, so again there is no point in drawing it.
+ If you have two different points, say $A$ and $B$, and $A$ is related to $B$, then it cannot be the case that $B$ is related back to $A$. This is because if $B$ *were* related back to $A$, the *antisymmetry* of the relation would mean that $A$ and $B$ are *equal*. And that's not the case because they're different. So, there's no point in indicating *direction*.

So a Hasse diagram is an *un*directed graph in which there's an edge -- just a line segment, not an arrow -- between two vertices if either vertex is related to the other. For an analogy -- digraphs are like the relationships in Twitter, where one person can follow another but not vice versa, whereas Hasse diagrams are more like Facebook where the following has to be mutual. The fact that we don't have to draw so many arrows makes the Hasse diagram much simpler. Your textbook shows this, in Example 6.3.2.

## Making Hasse diagrams in Sage

Making undirected graphs in Sage -- a Hasse diagram is an example of such a thing -- is pretty much the same process as making a directed graph. In fact both directed and undirected graphs are represented as dictionaries.

+ The keys of the dictionary are the vertices, or points in the set on which the relation works.
+ The value for each key is a list that contains all the points that are connected to the key.

Let's do an example, the one that is in Example 6.3.2 and Figure 6.3.3. This is a relation on the set $A = \{1, 2, 3,4, 5\}$ and as a *set*, the relation is given by:

\[ \{(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (1, 3), (1, 4), (1, 5), (1, 2), (3, 4), (3, 5), (4, 5), (2, 5) \} \]

As a *dictionary*, that relation would be:


︡22428c67-7e80-4f80-b1ce-35eb46413abe︡{"html":"<h1>How to make a Hasse diagram</h1>\n\n<h2>What&#8217;s the point of a Hasse diagram</h2>\n\n<p>A Hasse diagram is a graph that you make for a partially ordered set. Since a partial ordering is just a certain kind of relation, and we already have a method for graphing relations (using digraphs), you might be wondering &#8211; why learn something new? Why not just draw the digraph for the partial ordering and be done?</p>\n\n<p>The answer is simplicity.</p>\n\n<ul>\n<li>In a partial ordering, you don&#8217;t need to draw loops that go from a vertex to itself because that&#8217;s redundant &#8211; a partial ordering is <em>reflexive</em>, so <strong>every</strong> vertex would have a loop, which means there&#8217;s no point in drawing them.</li>\n<li>In a partial ordering, you don&#8217;t need to &#8220;complete the triangle&#8221; anywhere. If point $A$ is related to point $B$ and $B$ is related to $C$ then $A$ and $C$ are automatically related because partial orderings are <em>transitive</em>. It&#8217;s implied that there is an edge from $A$ to $C$, so again there is no point in drawing it.</li>\n<li>If you have two different points, say $A$ and $B$, and $A$ is related to $B$, then it cannot be the case that $B$ is related back to $A$. This is because if $B$ <em>were</em> related back to $A$, the <em>antisymmetry</em> of the relation would mean that $A$ and $B$ are <em>equal</em>. And that&#8217;s not the case because they&#8217;re different. So, there&#8217;s no point in indicating <em>direction</em>.</li>\n</ul>\n\n<p>So a Hasse diagram is an <em>un</em>directed graph in which there&#8217;s an edge &#8211; just a line segment, not an arrow &#8211; between two vertices if either vertex is related to the other. For an analogy &#8211; digraphs are like the relationships in Twitter, where one person can follow another but not vice versa, whereas Hasse diagrams are more like Facebook where the following has to be mutual. The fact that we don&#8217;t have to draw so many arrows makes the Hasse diagram much simpler. Your textbook shows this, in Example 6.3.2.</p>\n\n<h2>Making Hasse diagrams in Sage</h2>\n\n<p>Making undirected graphs in Sage &#8211; a Hasse diagram is an example of such a thing &#8211; is pretty much the same process as making a directed graph. In fact both directed and undirected graphs are represented as dictionaries.</p>\n\n<ul>\n<li>The keys of the dictionary are the vertices, or points in the set on which the relation works.</li>\n<li>The value for each key is a list that contains all the points that are connected to the key.</li>\n</ul>\n\n<p>Let&#8217;s do an example, the one that is in Example 6.3.2 and Figure 6.3.3. This is a relation on the set $A = \\{1, 2, 3,4, 5\\}$ and as a <em>set</em>, the relation is given by:</p>\n\n<p>\\[ \\{(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (1, 3), (1, 4), (1, 5), (1, 2), (3, 4), (3, 5), (4, 5), (2, 5) \\} \\]</p>\n\n<p>As a <em>dictionary</em>, that relation would be:</p>\n"}︡
︠244531f5-077a-4afd-bd1e-985c0cec60ea︠
s_dict = { 1 : [1, 2, 3, 4, 5],
           2 : [2, 5],
           3 : [3, 4, 5],
           4 : [4, 5],
           5 : [5] }
︡42b4ffa8-1c86-4ea5-bb63-220c0cc64747︡
︠cb9608d3-0679-4d04-a83c-372c1820e24di︠
%md

Now, to produce the Hasse diagram, we use some Sage magic -- **there is a built-in Sage function for this**  that will do all the pruning out of excess edges that we need. However, it doesn't come for free. We have to load the function using a module. Watch:
︡bd593fb2-a9be-436a-8d64-e4bc8b5b76c6︡{"html":"<p>Now, to produce the Hasse diagram, we use some Sage magic &#8211; <strong>there is a built-in Sage function for this</strong>  that will do all the pruning out of excess edges that we need. However, it doesn&#8217;t come for free. We have to load the function using a module. Watch:</p>\n"}︡
︠670b48ea-de11-47be-a1af-146c857e6131︠

from sage.combinat.posets.hasse_diagram import HasseDiagram
︡e86f7f2b-b3f4-461d-8918-c2da3365435d︡
︠6d02116f-eb31-4d10-be84-1fc6e74564c9i︠
%md

That line tells Sage: *I need to use a function that's not in the standard feature set. So go to the `sage.combinat.posets.hasse_diagram` package out in the warehouse and bring me the function `HasseDiagram`.*

We'll be importing special functions quite often, so get used to that syntax. Now, the function we want is available:
︡95482e5c-0f79-4ad9-9963-1bc791a3a40f︡{"html":"<p>That line tells Sage: <em>I need to use a function that&#8217;s not in the standard feature set. So go to the <code>sage.combinat.posets.hasse_diagram</code> package out in the warehouse and bring me the function <code>HasseDiagram</code>.</em></p>\n\n<p>We&#8217;ll be importing special functions quite often, so get used to that syntax. Now, the function we want is available:</p>\n"}︡
︠8e1f07f3-3faa-4ffa-8be9-b029e2a358e8︠
H = HasseDiagram(s_dict)
H.show()
︡8a4fb294-dac2-4780-ac19-a4fced86aa32︡{"once":false,"file":{"show":true,"uuid":"c8930af1-3b26-483a-8ecf-a171a2cf6921","filename":"/projects/50d9e495-8f0f-48df-b03d-b32647544bcb/.sage/temp/compute14a/19404/tmp_Wo6438.png"}}︡
︠14aa3c21-b61f-4f14-8365-e7e47ca28d9fi︠

%md

Notice that this is not the exact same visual representation as in figure 6.3.3. Any ideas on why?
︡d6a84600-a281-40bf-8f2f-1e6194a75cf7︡{"html":"<p>Notice that this is not the exact same visual representation as in figure 6.3.3. Any ideas on why?</p>\n"}︡
︠5b571f8c-deb2-4ded-9159-454192679901︠









