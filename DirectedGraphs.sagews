︠da81c7b2-00ec-409a-9ecc-23bda4f9f23ai︠
%md
# How to make directed graphs of relations in Sage

Remember that **Sage is really just Python with a lot of extra math built in**. We are going to take advantage of this idea to combine Python and Sage to show how to produce the directed graph for a relation.

Let's play with the relation that's given in the opening of Section 6.2 in your textbook. That relation is on the set $A = \{0, 1, 2, 3\}$ and is defined as follows:
\[ r = \{ (0,0), (0,3), (1,2), (2,1), (3,2), (2,0) \} \]

## Step 1: Represent the relation as a dictionary of lists

Given the relation described as a set, we're going to create a Python dictionary out of it. When you look at $r$ above. notice that the number $0$ is "related" to the numbers $0$ and $3$ because the ordered pairs $(0,0)$ and $(0,3)$ are in the relation. Likewise $1$ is related to $2$ (and nothing else), $2$ is related to $0$ and $1$, and finally $3$ is related to $2$.

So in our Python dictionary we're going to create, the keys in the dictionary are the elements of the base set (in this case 0, 1, 2, 3), and for each key, associate to it the list of items it's related to.

Here's what the dictionary for $r$ above would look like. (Hit Shift-Enter to evaluate the cell.)



︡a690b812-1c00-4343-a5bf-91fec69e2be6︡{"html":"<h1>How to make directed graphs of relations in Sage</h1>\n\n<p>Remember that <strong>Sage is really just Python with a lot of extra math built in</strong>. We are going to take advantage of this idea to combine Python and Sage to show how to produce the directed graph for a relation.</p>\n\n<p>Let&#8217;s play with the relation that&#8217;s given in the opening of Section 6.2 in your textbook. That relation is on the set $A = \\{0, 1, 2, 3\\}$ and is defined as follows:\n\\[ r = \\{ (0,0), (0,3), (1,2), (2,1), (3,2), (2,0) \\} \\]</p>\n\n<h2>Step 1: Represent the relation as a dictionary of lists</h2>\n\n<p>Given the relation described as a set, we&#8217;re going to create a Python dictionary out of it. When you look at $r$ above. notice that the number $0$ is &#8220;related&#8221; to the numbers $0$ and $3$ because the ordered pairs $(0,0)$ and $(0,3)$ are in the relation. Likewise $1$ is related to $2$ (and nothing else), $2$ is related to $0$ and $1$, and finally $3$ is related to $2$.</p>\n\n<p>So in our Python dictionary we&#8217;re going to create, the keys in the dictionary are the elements of the base set (in this case 0, 1, 2, 3), and for each key, associate to it the list of items it&#8217;s related to.</p>\n\n<p>Here&#8217;s what the dictionary for $r$ above would look like. (Hit Shift-Enter to evaluate the cell.)</p>\n"}︡
︠38ccab07-3cf0-459e-a93a-77f662ac8654︠
r = { 0 : [0,3], 1 : [2], 2 : [0,1], 3: [2] }
︡d96a1e6b-9b4a-4ee0-b115-02a107d9adbe︡
︠6f500ee7-1f75-4ba7-aa26-9871071bb2e3i︠
%md
And yes, we just defined a Python object in a Sage notebook because **Sage is Python with extra math.**
︡7da7d002-f16d-4cfc-8d82-a1f215a70661︡{"html":"<p>And yes, we just defined a Python object in a Sage notebook because <strong>Sage is Python with extra math.</strong></p>\n"}︡
︠b8ef9c3b-43c2-435a-8007-eee21e0f1d93i︠
%md

## Step 2: Use Sage to generate the digraph and display it

Sage is just a computer program so it cannot think in terms of pictures; it has to have a data structure to work with. The dictionary you just made is actually how Sage internally represents directed graphs. Actually it's only one such way. [There are others](http://www.math.ucla.edu/~jimc/mathnet_d/sage/reference/sage/graphs/digraph.html), and we will bring those up a little later in the semester. And since **Sage is Python**, this is also how you can represent a digraph in Python as well, and many other computer languages are similar.

So now that you have the dictionary made up for the relation, to convert this into a graph just use the `DiGraph` command:
︡cb9a5130-5d3e-4a8c-a1a9-44a97d50acc4︡{"html":"<h2>Step 2: Use Sage to generate the digraph and display it</h2>\n\n<p>Sage is just a computer program so it cannot think in terms of pictures; it has to have a data structure to work with. The dictionary you just made is actually how Sage internally represents directed graphs. Actually it&#8217;s only one such way. <a href=\"http://www.math.ucla.edu/~jimc/mathnet_d/sage/reference/sage/graphs/digraph.html\">There are others</a>, and we will bring those up a little later in the semester. And since <strong>Sage is Python</strong>, this is also how you can represent a digraph in Python as well, and many other computer languages are similar.</p>\n\n<p>So now that you have the dictionary made up for the relation, to convert this into a graph just use the <code>DiGraph</code> command:</p>\n"}︡
︠45848fa8-47c7-479e-89b4-d2e1ff9f7991︠
g = DiGraph(r)
︡6e6c52e3-1511-4c7d-a578-8810dc356907︡
︠80dd9f77-1035-47e1-b8a8-8cdc2146d768i︠
%md
Nothing appears to have happened. What took place when you hit Shift-Enter in the above cell was that Sage stored the information about the relation/digraph as a variable. Remember that computers don't think in pictures so the `g` we just defined is an abstraction. Check it out:
︡4f046c2f-4174-4fcf-a2ea-c6ec19d6dafd︡{"html":"<p>Nothing appears to have happened. What took place when you hit Shift-Enter in the above cell was that Sage stored the information about the relation/digraph as a variable. Remember that computers don&#8217;t think in pictures so the <code>g</code> we just defined is an abstraction. Check it out:</p>\n"}︡
︠238818ff-33c7-45ce-9f2d-725b24b5baac︠
g
︡cb6fa014-6805-4484-91a3-1567c2ee07bc︡{"stdout":"Looped digraph on 4 vertices\n"}︡
︠631e8299-b5ae-43dd-b82a-48139b4cafe5i︠
%md
If you want to actually **see** the digraph -- and you do! -- then you have to tell Sage to show it to you:
︡51d5d14f-f456-4131-b228-e267c282b303︡{"html":"<p>If you want to actually <strong>see</strong> the digraph &#8211; and you do! &#8211; then you have to tell Sage to show it to you:</p>\n"}︡
︠c9ef92e2-c8a5-48a5-8639-489970fe23d1︠
g.show()
︡7a413136-cc23-4298-9a14-86fe7a613b83︡{"once":false,"file":{"show":true,"uuid":"1154ff34-d36a-4c3e-af6d-436364fb7261","filename":"/projects/50d9e495-8f0f-48df-b03d-b32647544bcb/.sage/temp/compute14a/21947/tmp_cK9La4.png"}}︡
︠f2f8a956-f7be-465e-ae48-4f8d85828a6fi︠
%md
Notice that `show` is a method not a function. Also note that this is not the exact same *looking* visual representation as what is found in the textbook, but it is "the same" in the sense that all the vertices are present and all the right arrows are present. If the above digraph were made out of string, we could move the edges and vertices around to make it look like the one in the book.
︡00f7df82-9379-48d6-98ab-ae8591160236︡{"html":"<p>Notice that <code>show</code> is a method not a function. Also note that this is not the exact same <em>looking</em> visual representation as what is found in the textbook, but it is &#8220;the same&#8221; in the sense that all the vertices are present and all the right arrows are present. If the above digraph were made out of string, we could move the edges and vertices around to make it look like the one in the book.</p>\n"}︡
︠9273f19c-7a91-453f-9b65-d8b5ef330040i︠
%md


## How about another one

Let's define a relation on the set consisting of the states of Michigan, Wisconsin, Indiana, Ohio, Illinois, Kentucky, and Pennsylvania by saying that state $A$ is "related to" state $B$ if $A$ shares a border with $B$. So for example Michigan and Indiana are related and vice versa; Indiana and Kentucky are related; Michigan and Kentucky are not related. To keep things simple let's say that no state shares a border with itself.

Here's what that relation would look like as a dictionary:
︡c12245e3-ed04-4e20-a4c5-1fff0a08fb29︡{"html":"<h2>How about another one</h2>\n\n<p>Let&#8217;s define a relation on the set consisting of the states of Michigan, Wisconsin, Indiana, Ohio, Illinois, Kentucky, and Pennsylvania by saying that state $A$ is &#8220;related to&#8221; state $B$ if $A$ shares a border with $B$. So for example Michigan and Indiana are related and vice versa; Indiana and Kentucky are related; Michigan and Kentucky are not related. To keep things simple let&#8217;s say that no state shares a border with itself. </p>\n\n<p>Here&#8217;s what that relation would look like as a dictionary:</p>\n"}︡
︠3b1c1d18-e7f5-461c-8eba-3827ad41adb9︠
border = { "Michigan" : ["Wisconsin", "Indiana", "Ohio"],
           "Wisconsin" : ["Michigan", "Illinois"],
           "Indiana" : ["Michigan", "Ohio", "Illinois", "Kentucky"],
           "Ohio" : ["Michigan", "Indiana", "Kentucky", "Pennsylvania"],
           "Illinois" : ["Wisconsin", "Indiana", "Kentucky"],
           "Kentucky" : ["Illinois", "Ohio", "Indiana"],
           "Pennsylvania" : ["Ohio"]}
︡b1904df1-b27d-450f-97d5-7b4ad19b86b7︡
︠45c3238e-3055-4221-8824-7b8326abfd63i︠
%md

With this turned into a dictionary, all we need to visualize this as a digraph is to tell Sage to think of the dictionary as a digraph and then display it:
︡7f0656b6-5ade-4101-95a8-dc29fb372c8f︡{"html":"<p>With this turned into a dictionary, all we need to visualize this as a digraph is to tell Sage to think of the dictionary as a digraph and then display it:</p>\n"}︡
︠c7e92253-7f26-442f-964a-c2df39e37c88︠

g = DiGraph(border)
g.show()
︡f6448dff-99bb-414e-bf33-6c05c27d0b98︡{"once":false,"file":{"show":true,"uuid":"244aef86-3d93-4ff0-80c4-44a61a0fe371","filename":"/projects/50d9e495-8f0f-48df-b03d-b32647544bcb/.sage/temp/compute14a/21947/tmp_uVhKzu.png"}}︡
︠475b5eae-8b80-4a1d-aeb7-29b01534db5fi︠
%md

Notice that the edge on the bottom is cut off. You can pass an option to `show()` that might help:
︡171cc031-8fab-4b2f-84fa-f07d46ba6d02︡{"html":"<p>Notice that the edge on the bottom is cut off. You can pass an option to <code>show()</code> that might help:</p>\n"}︡
︠ae70650e-da0b-4eb3-9992-0151ffe60ed6︠
g.show(graph_border = True)
︡9aa61add-fd7b-4bba-848c-d077526bf5fd︡{"once":false,"file":{"show":true,"uuid":"b983d9b9-7f23-4eb1-9185-1b7188394880","filename":"/projects/50d9e495-8f0f-48df-b03d-b32647544bcb/.sage/temp/compute14a/21947/tmp_z0Mi2J.png"}}︡
︠c9d8e97e-ea0e-4dd7-b0c2-4564d59959aei︠

%md

You may or may not agree that this looks better.

This is just the beginning of the awesomeness that is working with graphs in Sage/Python. For a full description of what one can do with graphs in Sage, [watch this 25-minute video](https://vimeo.com/14046039) by William Stein, the creator of Sage. We will be doing a lot of the things William describes in that video at some point during the class.


︡e724e864-b99f-44ae-b1cb-7aeaac57711c︡{"html":"<p>You may or may not agree that this looks better.</p>\n\n<p>This is just the beginning of the awesomeness that is working with graphs in Sage/Python. For a full description of what one can do with graphs in Sage, <a href=\"https://vimeo.com/14046039\">watch this 25-minute video</a> by William Stein, the creator of Sage. We will be doing a lot of the things William describes in that video at some point during the class.</p>\n"}︡
︠11f48153-aed4-45a1-8e9b-95dae4974e7e︠









