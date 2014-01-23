︠1ed1a234-0394-447c-89ae-ca380076cf84i︠
%md

# Assignment 2 solutions

Here are some solutions for Assignment 2. Be aware that **there is more than one way to do most things** and so my solutions could be different than your solutions, and yet they may both be correct.

I'm going to be doing all of this work in a single Sage worksheet, to illustrate that you can do text, Sage, and Python all in one document. This is the direction we will be going for future assignments. If at any time you see a text cell and need to see the source code that created it, just double-click on it. And if you see some Sage or Python code and want to evaluate it, put your cursor in the cell where the code appears and hit Shift-Enter to execute.

## Problem 1 (Perfunctory Python Practice)

NOTE: The following Python code is correct. But apparently there is an issue with running the `raw_input` command inside a Sage worksheet that I was not aware of before. So, to test this out you can copy and paste, and then put it in a `*.py` file or run it inside an iPython notebook.
︡d627c28d-1767-4c67-81b7-71e0ad40aa58︡{"html":"<h1>Assignment 2 solutions</h1>\n\n<p>Here are some solutions for Assignment 2. Be aware that <strong>there is more than one way to do most things</strong> and so my solutions could be different than your solutions, and yet they may both be correct.</p>\n\n<p>I&#8217;m going to be doing all of this work in a single Sage worksheet, to illustrate that you can do text, Sage, and Python all in one document. This is the direction we will be going for future assignments. If at any time you see a text cell and need to see the source code that created it, just double-click on it. And if you see some Sage or Python code and want to evaluate it, put your cursor in the cell where the code appears and hit Shift-Enter to execute.</p>\n\n<h2>Problem 1 (Perfunctory Python Practice)</h2>\n\n<p>NOTE: The following Python code is correct. But apparently there is an issue with running the <code>raw_input</code> command inside a Sage worksheet that I was not aware of before. So, to test this out you can copy and paste, and then put it in a <code>*.py</code> file or run it inside an iPython notebook.</p>\n"}︡
︠abda5a28-454d-44bc-9958-bfbf74efd9bf︠
age = int(raw_input("How old are you in years? >"))

# There are 31557600 seconds in a year:
age_in_seconds = age * 31557600
print "You are %d seconds old." % age_in_seconds
︡1073ce13-ebda-49f6-890e-f22829f67ad8︡{"stdout":"How old are you in years? >"}︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/50d9e495-8f0f-48df-b03d-b32647544bcb/.sagemathcloud/sage_server.py\", line 680, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\nEOFError: EOF when reading a line\n"}︡
︠9ad87e47-afdd-4f95-81f6-e768dbb232a0i︠

%md

## Problem 2 (Python logic)

### Part (a)
︡e7c4d839-13cd-43ed-abcd-91cff595c0d1︡{"html":"<h2>Problem 2 (Python logic)</h2>\n\n<h3>Part (a)</h3>\n"}︡
︠4272532f-a04d-4d50-a6e2-094ec0a8ddfb︠
# Define the variables:

p = (3 < 4)
q = (3 == 4)
r = (5 > 2)

# Now test to see if the statement (p ^ q) v r is true:
(p and q) or r
︡de9bd0dd-a676-44b8-a3df-76238278b284︡{"stdout":"True\n"}︡
︠06353a1a-08bc-4f2d-a80d-0dfc8b22ffbci︠
%md

### Part (b)

The essential concept here is that the implication $A \rightarrow B$ is logically equivalent to the disjunction $\neg A \vee B$. Therefore $(p \wedge q) \rightarrow r$ is equivalent to $\neg (p \wedge q) \vee r$, which we can write entirely using Python's logical operators.
︡70a43893-cccc-41e0-93ef-97a47c3ce796︡{"html":"<h3>Part (b)</h3>\n\n<p>The essential concept here is that the implication $A \\rightarrow B$ is logically equivalent to the disjunction $\\neg A \\vee B$. Therefore $(p \\wedge q) \\rightarrow r$ is equivalent to $\\neg (p \\wedge q) \\vee r$, which we can write entirely using Python&#8217;s logical operators.</p>\n"}︡
︠7899204c-5876-47e3-8370-116b8f60dcbc︠
# Note that p, q, and r are already defined above; you may need to re-execute the cell above to get Sage/Python to recognize them.

not (p and q) or r
︡870c2b43-bb2a-40b3-a954-f34733169066︡{"stdout":"True\n"}︡
︠c62cdd5a-8341-45b5-a786-2258ea104e99i︠
%md

## Problem 3 (Matrix Magic)

The Sage command `fibonacci` produces the Fibonacci numbers. **You do not need to write Python code to create these numbers. Use Sage built-in functions whenever possible.** Examples:
︡7f31f0af-2f9a-463e-94ea-c488ae91f111︡{"html":"<h2>Problem 3 (Matrix Magic)</h2>\n\n<p>The Sage command <code>fibonacci</code> produces the Fibonacci numbers. <strong>You do not need to write Python code to create these numbers. Use Sage built-in functions whenever possible.</strong> Examples:</p>\n"}︡
︠768cfa9a-24d6-49b5-80a1-cb4f7346e02f︠
fibonacci(1)
fibonacci(2)
fibonacci(3)
fibonacci(4)
fibonacci(5)
fibonacci(6)
︡1949709f-3a3d-4601-aa51-ff5ce76499af︡{"stdout":"1\n"}︡{"stdout":"1\n"}︡{"stdout":"2\n"}︡{"stdout":"3\n"}︡{"stdout":"5\n"}︡{"stdout":"8\n"}︡
︠4b8bd6a9-3053-4bf2-927d-1c5960ab4d2ei︠
%md

### Part (a)

Here's a simple implementation of a loop that generates the list of the first 100 Fibonaccis. *Note*: We are in a Sage notebook but we are writing Python code here.
︡13fbac53-47cc-49a9-b613-e85f82430e65︡{"html":"<h3>Part (a)</h3>\n\n<p>Here&#8217;s a simple implementation of a loop that generates the list of the first 100 Fibonaccis. <em>Note</em>: We are in a Sage notebook but we are writing Python code here.</p>\n"}︡
︠1b739573-fb66-41e8-886a-708ff31ede3f︠
fib_list = [ ]
for i in range(100):
    fib_list.append(fibonacci(i))
︡7964a0d0-7665-4c01-a4b2-09189d88baaa︡
︠f915472b-b478-4103-9183-125654bb2575i︠
%md
The list has been generated, but to see it, we need to tell Python to print it:
︡306eb53e-03e7-483a-b405-8e7a446fbcdd︡{"html":"<p>The list has been generated, but to see it, we need to tell Python to print it:</p>\n"}︡
︠eb7e2c94-9b32-487e-bc9d-20be5214ff04︠
print(fib_list)
︡98d9165c-8b4b-441c-b71d-fddeb50aafcd︡{"stdout":"[0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, 2971215073, 4807526976, 7778742049, 12586269025, 20365011074, 32951280099, 53316291173, 86267571272, 139583862445, 225851433717, 365435296162, 591286729879, 956722026041, 1548008755920, 2504730781961, 4052739537881, 6557470319842, 10610209857723, 17167680177565, 27777890035288, 44945570212853, 72723460248141, 117669030460994, 190392490709135, 308061521170129, 498454011879264, 806515533049393, 1304969544928657, 2111485077978050, 3416454622906707, 5527939700884757, 8944394323791464, 14472334024676221, 23416728348467685, 37889062373143906, 61305790721611591, 99194853094755497, 160500643816367088, 259695496911122585, 420196140727489673, 679891637638612258, 1100087778366101931, 1779979416004714189, 2880067194370816120, 4660046610375530309, 7540113804746346429, 12200160415121876738, 19740274219868223167, 31940434634990099905, 51680708854858323072, 83621143489848422977, 135301852344706746049, 218922995834555169026]\n"}︡
︠abc43e39-9ed6-47ec-9490-84ccb517c1e6i︠
%md
Here is a bit of magic that generates the same list in one line. It uses a construct called a [list comprehension](http://carlgroner.me/Python/2011/11/09/An-Introduction-to-List-Comprehensions-in-Python.html). You do not need to know this, but you might consider taking time to learn about comprehensions because they are awesome, save lots of space and time, and are a neat programming application of set builder notation.
︡f6d6271c-00c0-42df-a34a-5078ae89898f︡{"html":"<p>Here is a bit of magic that generates the same list in one line. It uses a construct called a <a href=\"http://carlgroner.me/Python/2011/11/09/An-Introduction-to-List-Comprehensions-in-Python.html\">list comprehension</a>. You do not need to know this, but you might consider taking time to learn about comprehensions because they are awesome, save lots of space and time, and are a neat programming application of set builder notation.</p>\n"}︡
︠c57ed199-43c0-4a3e-b455-d943514a17b5︠
# Go in and add the line "print awesome_fib_list" after this line in order to see the list.
awesome_fib_list = [fibonacci(i) for i in range(100)]
︡c3ef5912-197b-43c2-8508-439323f83f0f︡
︠5a868638-30f1-4aad-b6d3-b3746616797ci︠
%md

### Part (b)
︡9847f1cd-b142-4635-9a5a-1492179606ac︡{"html":"<h3>Part (b)</h3>\n"}︡
︠e37bfccc-b1cb-4f4f-8fb8-0239f397d15d︠
B = matrix([[1,1],[1,0]])
for i in range(10):
    show(B^i)
︡75c5d36e-f66e-443b-85ec-0895f39950c9︡{"tex":{"tex":"\\left(\\begin{array}{rr}\n1 & 0 \\\\\n0 & 1\n\\end{array}\\right)","display":true}}︡{"tex":{"tex":"\\left(\\begin{array}{rr}\n1 & 1 \\\\\n1 & 0\n\\end{array}\\right)","display":true}}︡{"tex":{"tex":"\\left(\\begin{array}{rr}\n2 & 1 \\\\\n1 & 1\n\\end{array}\\right)","display":true}}︡{"tex":{"tex":"\\left(\\begin{array}{rr}\n3 & 2 \\\\\n2 & 1\n\\end{array}\\right)","display":true}}︡{"tex":{"tex":"\\left(\\begin{array}{rr}\n5 & 3 \\\\\n3 & 2\n\\end{array}\\right)","display":true}}︡{"tex":{"tex":"\\left(\\begin{array}{rr}\n8 & 5 \\\\\n5 & 3\n\\end{array}\\right)","display":true}}︡{"tex":{"tex":"\\left(\\begin{array}{rr}\n13 & 8 \\\\\n8 & 5\n\\end{array}\\right)","display":true}}︡{"tex":{"tex":"\\left(\\begin{array}{rr}\n21 & 13 \\\\\n13 & 8\n\\end{array}\\right)","display":true}}︡{"tex":{"tex":"\\left(\\begin{array}{rr}\n34 & 21 \\\\\n21 & 13\n\\end{array}\\right)","display":true}}︡{"tex":{"tex":"\\left(\\begin{array}{rr}\n55 & 34 \\\\\n34 & 21\n\\end{array}\\right)","display":true}}︡
︠b019bcb6-e28d-4cfc-80b6-5f83a010f1eci︠
%md
The first matrix above is $B^0$, the second is $B^1$, and so on. It appears that the entries of $B^i$ are the Fibonacci numbers. Specfically, in $B^i$, the $(1,1)$-entry (top left) is `fibonacci(i+1)`; the $(2,2)$-entry (lower right) is `fibonacci(i-1)`; and the remaining entries are `fibonacci(i)`.

Just to check this:
︡e93afcca-2c74-4b44-b17a-d3cb10c36284︡{"html":"<p>The first matrix above is $B^0$, the second is $B^1$, and so on. It appears that the entries of $B^i$ are the Fibonacci numbers. Specfically, in $B^i$, the $(1,1)$-entry (top left) is <code>fibonacci(i+1)</code>; the $(2,2)$-entry (lower right) is <code>fibonacci(i-1)</code>; and the remaining entries are <code>fibonacci(i)</code>. </p>\n\n<p>Just to check this:</p>\n"}︡
︠c5b9b840-cc5b-4515-8eac-5d71e24d15b7︠
print [fibonacci(5), fibonacci(4), fibonacci(3)]
show(B^4)
︡34097eb6-b20a-4e1e-97e1-723bb6d9bd60︡{"stdout":"[5, 3, 2]\n"}︡{"tex":{"tex":"\\left(\\begin{array}{rr}\n5 & 3 \\\\\n3 & 2\n\\end{array}\\right)","display":true}}︡
︠25772815-ceae-4b5e-a9d1-c398229aba70︠









