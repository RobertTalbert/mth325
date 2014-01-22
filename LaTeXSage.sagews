︠e83cea33-03bf-4458-835b-70288b56a1cdi︠
%md

# Introduction

This is a brief example of how to use $\LaTeX$ in a Sage worksheet to create a combination of Sage calculations, text, and formatted math. Double-click on any text cell to see the original code. Note:

+ In $\LaTeX$, all mathematics is encased inside single dollar signs. For example, `$a^2 + b^2 = c^2$` produces $a^2 + b^2 = c^2$. And `x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}` produces $x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$.
+ $\LaTeX$ uses certain commands to produce special symbols like the square root sign or special formatting like fractions. For information on symbols, [click here](http://www.artofproblemsolving.com/Wiki/index.php/LaTeX:Symbols). For information on typesetting fractions and the like, [click here](http://www.artofproblemsolving.com/Wiki/index.php/LaTeX:Commands).




︡6e17683c-9382-4d32-885a-3a97db594654︡{"html":"<h1>Introduction</h1>\n\n<p>This is a brief example of how to use $\\LaTeX$ in a Sage worksheet to create a combination of Sage calculations, text, and formatted math. Double-click on any text cell to see the original code. Note:</p>\n\n<ul>\n<li>In $\\LaTeX$, all mathematics is encased inside single dollar signs. For example, <code>$a^2 + b^2 = c^2$</code> produces $a^2 + b^2 = c^2$. And <code>x = \\frac{-b \\pm \\sqrt{b^2 - 4ac}}{2a}</code> produces $x = \\frac{-b \\pm \\sqrt{b^2 - 4ac}}{2a}$.</li>\n<li>$\\LaTeX$ uses certain commands to produce special symbols like the square root sign or special formatting like fractions. For information on symbols, <a href=\"http://www.artofproblemsolving.com/Wiki/index.php/LaTeX:Symbols\">click here</a>. For information on typesetting fractions and the like, <a href=\"http://www.artofproblemsolving.com/Wiki/index.php/LaTeX:Commands\">click here</a>.</li>\n</ul>\n"}︡
︠5abf5ac8-8156-4c1b-a861-455fb4739ed0i︠
%md

# Matrices

Of immediate concern to you is how to typeset matrices. Matrices are tricky in a Sage worksheet, and if you know how to create a $\LaTeX$ document -- which is different than just using $\LaTeX$ commands here and there in a Sage worksheet -- then you'd be well advised to stay out of Sage entirely and do everything in $\LaTeX$. Matrices are easy in $\LaTeX$ but I won't talk about those here.

If you don't know $\LaTeX$ then you can fake it in Sage by interspersing Sage calculations with text cells. I'm going to give an example here of what I mean.

## Example

I'm going to prove that if $A$ and $B$ are diagonal $3 \times 3$ matrices, then $AB = BA$. (Side note: See how I am using $\LaTeX$ commands here for the little stuff. Again, double-click on this cell and you will see the source code.)

Define the two matrices first:


︡bfef3dfc-1bca-4bb6-82a7-3fe995b25fe7︡{"html":"<h1>Matrices</h1>\n\n<p>Of immediate concern to you is how to typeset matrices. Matrices are tricky in a Sage worksheet, and if you know how to create a $\\LaTeX$ document &#8211; which is different than just using $\\LaTeX$ commands here and there in a Sage worksheet &#8211; then you&#8217;d be well advised to stay out of Sage entirely and do everything in $\\LaTeX$. Matrices are easy in $\\LaTeX$ but I won&#8217;t talk about those here.</p>\n\n<p>If you don&#8217;t know $\\LaTeX$ then you can fake it in Sage by interspersing Sage calculations with text cells. I&#8217;m going to give an example here of what I mean. </p>\n\n<h2>Example</h2>\n\n<p>I&#8217;m going to prove that if $A$ and $B$ are diagonal $3 \\times 3$ matrices, then $AB = BA$. (Side note: See how I am using $\\LaTeX$ commands here for the little stuff. Again, double-click on this cell and you will see the source code.) </p>\n\n<p>Define the two matrices first:</p>\n"}︡
︠2c130ac9-411a-4cd1-b7e9-71410637963c︠
# Comment: This is now a different cell, and it's a Sage cell and not a text cell.

# Comment: To introduce symbolic variables in Sage, you have to declare them first. The following tells Sage that the letters a,b,c,x,y,z from here on out are symbols and not variables that hold numeric values.
var('a b c x y z')

# Defining the two matrices by hand:
A = matrix([[a, 0, 0], [0, b, 0], [0, 0, c]])
B = matrix([[x, 0, 0], [0, y, 0], [0, 0, z]])
show(A)
show(B)
︡45750ccb-0e32-4d4d-9788-2474881929c7︡{"stdout":"(a, b, c, x, y, z)\n"}︡{"tex":{"tex":"\\left(\\begin{array}{rrr}\na & 0 & 0 \\\\\n0 & b & 0 \\\\\n0 & 0 & c\n\\end{array}\\right)","display":true}}︡{"tex":{"tex":"\\left(\\begin{array}{rrr}\nx & 0 & 0 \\\\\n0 & y & 0 \\\\\n0 & 0 & z\n\\end{array}\\right)","display":true}}︡
︠887379f5-d622-4be3-8f3b-4b00b585bb62i︠
%md
(Side note: I'm back to a text cell. Double click on me to see the source code.)

Now let's multiply $AB$ and $BA$ and see what happens:
︡53b1cfc5-ea40-4436-9790-d84916be3379︡{"html":"<p>(Side note: I&#8217;m back to a text cell. Double click on me to see the source code.) </p>\n\n<p>Now let&#8217;s multiply $AB$ and $BA$ and see what happens:</p>\n"}︡
︠45db4470-f337-4ce2-ba68-6bafb046d2e7︠
# Comment: Back to a Sage cell again.
show(A*B)
show(B*A)
︡aa807da9-7c27-4a02-adba-560efcf77f89︡{"tex":{"tex":"\\left(\\begin{array}{rrr}\na x & 0 & 0 \\\\\n0 & b y & 0 \\\\\n0 & 0 & c z\n\\end{array}\\right)","display":true}}︡{"tex":{"tex":"\\left(\\begin{array}{rrr}\na x & 0 & 0 \\\\\n0 & b y & 0 \\\\\n0 & 0 & c z\n\\end{array}\\right)","display":true}}︡
︠b5c3979e-ae4d-400e-ba4c-2dc4bc2e6277i︠
%md
(Back to a text cell again.) These are clearly equal, so we're done!

*Proof related note*: This is **not** a proof that $AB = BA$ for **all** matrices or even for all diagonal matrices. Just for $3 \times 3$ diagonal matices. 
︡99450c6f-3b19-4270-841b-540e534b1d39︡{"html":"<p>(Back to a text cell again.) These are clearly equal, so we&#8217;re done!</p>\n\n<p><em>Proof related note</em>: This is <strong>not</strong> a proof that $AB = BA$ for <strong>all</strong> matrices or even for all diagonal matrices. Just for $3 \\times 3$ diagonal matices.</p>\n"}︡
︠e8cac9df-f584-46a5-b473-6c37d6e600bfi︠
%md

# Comments about all this


Bottom line:

+ Using a Sage worksheet to weave text with math is important and we'll be doing a lot of that this semester, so maybe you should try it.
+ But if you have a writeup that doesn't require calculations -- it's just typing and typesetting -- you might consider learning $\LaTeX$ for real and using that instead. SageMath Cloud does actually allow you to make $\LaTeX$ documents, so you can keep your Sage, Python, and $\LaTeX$ work all in the same project.
︡672eccb3-094c-4481-b667-e4e954111b40︡{"html":"<h1>Comments about all this</h1>\n\n<p>Bottom line: </p>\n\n<ul>\n<li>Using a Sage worksheet to weave text with math is important and we&#8217;ll be doing a lot of that this semester, so maybe you should try it. </li>\n<li>But if you have a writeup that doesn&#8217;t require calculations &#8211; it&#8217;s just typing and typesetting &#8211; you might consider learning $\\LaTeX$ for real and using that instead. SageMath Cloud does actually allow you to make $\\LaTeX$ documents, so you can keep your Sage, Python, and $\\LaTeX$ work all in the same project.</li>\n</ul>\n"}︡
︠8f9ed37c-4d41-4342-8d66-31fc4ed39e61︠









