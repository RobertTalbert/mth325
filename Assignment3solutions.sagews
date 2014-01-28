︠1ad82439-8a7c-49d2-89a1-689041c88721i︠
%md

# Assignment 3 solutions

## Problem 1

In this problem we assume that $A,B$, and $C$ are square matrices of the same size and investigate the truth of some mathematical claims.

#### (a) Is $A + B = B + A$?

This statement is **always true**. To prove this, consider what it means to add two matrices together. According to the definition in the textbook, the $(i,j)$ entry of $A+B$ is the $(i,j)$ entry of $A$ plus the $(i,j)$ entry of $B$:

$$(A + B)_{ij} = A_{ij} + B_{ij}$$

Since the two individual entries are just numbers, their addition is commutative:

$$A_{ij} + B_{ij} = B_{ij} + A_{ij} $$

But the last expression is $(B+A)_{ij}$. So, since the $(i,j)$ entries of $A+B$ and $B+A$ are equal for all $i$ and $j$, it means that $A+B$ and $B+A$ are equal.

#### (b) Is $A + (B + C) = (A+B)+C$?

This statement is **always true**. Again we go back to the definition of matrix addition. The $(i,j)$-entry of $A + (B+C)$ is:

$$(A + (B+C))_{ij} = A_{ij} + (B_{ij} + C_{ij})$$

Since the individual entries of the matrices are just regular numbers, their addition is associative:

$$A_{ij} + (B_{ij} + C_{ij}) = (A_{ij} + B_{ij}) + C_{ij}$$

The last is true for all $i$ and $j$, so $A + (B+C) = (A + B) + C$.


#### (c) Is $AB = BA$?

This statement is **sometimes true (but not always)**. Example of where this equality is true:


︡eb68d3f6-2cdd-4bd9-8076-9d826e5c394f︡{"html":"<h1>Assignment 3 solutions</h1>\n\n<h2>Problem 1</h2>\n\n<p>In this problem we assume that $A,B$, and $C$ are square matrices of the same size and investigate the truth of some mathematical claims.</p>\n\n<h4>(a) Is $A + B = B + A$?</h4>\n\n<p>This statement is <strong>always true</strong>. To prove this, consider what it means to add two matrices together. According to the definition in the textbook, the $(i,j)$ entry of $A+B$ is the $(i,j)$ entry of $A$ plus the $(i,j)$ entry of $B$:</p>\n\n<p>$$(A + B)_{ij} = A_{ij} + B_{ij}$$</p>\n\n<p>Since the two individual entries are just numbers, their addition is commutative:</p>\n\n<p>$$A_{ij} + B_{ij} = B_{ij} + A_{ij} $$</p>\n\n<p>But the last expression is $(B+A)_{ij}$. So, since the $(i,j)$ entries of $A+B$ and $B+A$ are equal for all $i$ and $j$, it means that $A+B$ and $B+A$ are equal.</p>\n\n<h4>(b) Is $A + (B + C) = (A+B)+C$?</h4>\n\n<p>This statement is <strong>always true</strong>. Again we go back to the definition of matrix addition. The $(i,j)$-entry of $A + (B+C)$ is:</p>\n\n<p>$$(A + (B+C))_{ij} = A_{ij} + (B_{ij} + C_{ij})$$</p>\n\n<p>Since the individual entries of the matrices are just regular numbers, their addition is associative:</p>\n\n<p>$$A_{ij} + (B_{ij} + C_{ij}) = (A_{ij} + B_{ij}) + C_{ij}$$</p>\n\n<p>The last is true for all $i$ and $j$, so $A + (B+C) = (A + B) + C$.</p>\n\n<h4>(c) Is $AB = BA$?</h4>\n\n<p>This statement is <strong>sometimes true (but not always)</strong>. Example of where this equality is true:</p>\n"}︡
︠1eb6d8a4-87e5-4e97-958c-6132907b416b︠
A = matrix([[1,0], [0,2]])
B = matrix([[3,0], [0,4]])
A*B
B*A
︡5be2a813-a4d1-4d27-a30f-7a607d487db4︡{"stdout":"[3 0]\n[0 8]\n"}︡{"stdout":"[3 0]\n[0 8]\n"}︡
︠b845bcfd-9b1a-4dd8-b36a-5ea45f41d783i︠
%md
And here's an example where $AB \neq BA$:
︡62435eba-5315-499e-8966-2c933d51b87d︡{"html":"<p>And here&#8217;s an example where $AB \\neq BA$:</p>\n"}︡
︠f0dd81a5-427b-4b59-b3ed-1b705c50b025︠
A = matrix([[1,2], [3,4]])
B = matrix([[5,6], [7,8]])
A*B
B*A
︡1a043311-bc31-428a-95fa-11b0b1b1409d︡{"stdout":"[19 22]\n[43 50]\n"}︡{"stdout":"[23 34]\n[31 46]\n"}︡
︠2dc57a48-2aa9-44b6-a60f-dc3d0122983di︠
%md

#### (d) If $AC = BC$, is $A = B$?

This statement is **sometimes true (but not always)**. Example where this is true:
︡0a95efe7-74ad-4be6-9d2e-6bc16b9b8fdc︡{"html":"<h4>(d) If $AC = BC$, is $A = B$?</h4>\n\n<p>This statement is <strong>sometimes true (but not always)</strong>. Example where this is true:</p>\n"}︡
︠fa4d183b-733b-4260-832f-488922fe24bf︠
A = matrix.identity(2)
B = matrix.identity(2)   # It's obvious that A = B here.
C = matrix([[1,2], [3,4]])
︡0d453d00-7cd6-4708-af54-2fac3ba17b1f︡
︠8155a6e9-e882-4ef9-8b28-a673c42749cf︠
A*C
B*C
︡af139165-145c-42c2-94fb-179c172b7152︡{"stdout":"[1 2]\n[3 4]\n"}︡{"stdout":"[1 2]\n[3 4]\n"}︡
︠e37aab4c-39fb-41a1-b2e4-b8b510c1fdc6i︠

%md
But this statement can also be false:
︡19759005-6e76-4221-92e5-64ee86ee4333︡{"html":"<p>But this statement can also be false:</p>\n"}︡
︠09eb1107-d97f-455a-a023-3c5fc0c09b09︠
A = matrix([[1,0], [0,0]])
B = matrix([[0,0], [1,0]])  # Here we see that A does not equal B.
C = matrix([[0,0], [0,1]])

A*C
B*C
︡eeb11d33-5aac-4fb1-9831-436f4bd85dfc︡{"stdout":"[0 0]\n[0 0]\n"}︡{"stdout":"[0 0]\n[0 0]\n"}︡
︠925be1a2-4d48-4fe7-b27d-f0083791b9d8i︠
%md
So even though $AC$ and $BC$ are the same, it doesn't necessarily mean that $A=B$.
︡4d8df9f0-897d-41b3-9b9b-cfd68080664e︡{"html":"<p>So even though $AC$ and $BC$ are the same, it doesn&#8217;t necessarily mean that $A=B$.</p>\n"}︡
︠e1b69774-9464-4861-bc9d-8556fef1f3c3i︠
%md
#### (e) Is $(A+B)^2 = A^2 + 2AB + B^2$?

This statement is **sometimes true (but not always)**. Example where this is true:
︡c74ad8ec-60f8-48be-9e1c-5044b6fd09c5︡{"html":"<h4>(e) Is $(A+B)^2 = A^2 + 2AB + B^2$?</h4>\n\n<p>This statement is <strong>sometimes true (but not always)</strong>. Example where this is true:</p>\n"}︡
︠d3ca1448-0a70-4aae-a0f3-131401df8db5︠
A = matrix([[1,0], [0,2]])
B = matrix([[3,0], [0,4]])
(A+B)^2
︡6d247708-8d5f-4cf8-888b-eb101c0408c2︡{"stdout":"[16  0]\n[ 0 36]\n"}︡
︠10607873-9a34-4350-a142-afe5369b7c51︠
A^2 + 2*A*B + B^2
︡87433b47-b19b-4783-bee5-3245ac95bb12︡{"stdout":"[16  0]\n[ 0 36]\n"}︡
︠ba0e96c2-e872-4ad1-a2bb-4c5fb7bf0984i︠
%md
Example where this is NOT true:
︡9022ec98-259d-4a48-9272-a34f03677b7b︡{"html":"<p>Example where this is NOT true:</p>\n"}︡
︠b6b4af19-f320-43ae-b321-b73432d8f156︠

A = matrix([[1,2], [3,4]])
B = matrix([[5,6], [7,8]])
(A+B)^2
A^2 + 2*A*B + B^2
︡f97c4481-654f-411c-8732-a77de9d0cdb9︡{"stdout":"[116 144]\n[180 224]\n"}︡{"stdout":"[112 132]\n[192 228]\n"}︡
︠ebc41d2a-a98a-4f51-b3ed-55e05e3a2f74i︠
%md
If you're paying attention, you'll notice that these are the same examples from part (c). The reason that this statement doesn't always work is because matrix multiplication isn't commutative. In general, the FOIL method applied to matrices would give us

$$(A+B)^2 = A^2 + AB + BA + B^2$$

But the middle two terms are not always equal, hence it doesn't always simplify to $2AB$.
︡27fe6f5e-efbb-47c5-a79c-efa39b372d58︡{"html":"<p>If you&#8217;re paying attention, you&#8217;ll notice that these are the same examples from part (c). The reason that this statement doesn&#8217;t always work is because matrix multiplication isn&#8217;t commutative. In general, the FOIL method applied to matrices would give us</p>\n\n<p>$$(A+B)^2 = A^2 + AB + BA + B^2$$</p>\n\n<p>But the middle two terms are not always equal, hence it doesn&#8217;t always simplify to $2AB$.</p>\n"}︡
︠5502ad55-a5e1-4fcd-805a-4a78b4d25495i︠
%md

## Problem 2

Here's the basic Python function:
︡b553660e-77d3-4a34-9f1a-03e30f2e9ddb︡{"html":"<h2>Problem 2</h2>\n\n<p>Here&#8217;s the basic Python function:</p>\n"}︡
︠e427ddf7-53b9-4d9b-a57d-a1592e23691f︠

def problem2(n):
    if n % 2 == 0:   # <- Checks to see if n is divisible by 2. The % operator is "mod".
        return n/2
    else:
        return 3*n + 1
︡dfde9ce1-b0dd-4aee-9bd4-146af332a339︡
︠8086023c-9f4b-4c48-8ba0-f0bf07213ec9i︠
%md
Let's check to make sure this works:
︡29520ac9-a3e0-470d-ab3e-41aa8a5c1eca︡{"html":"<p>Let&#8217;s check to make sure this works:</p>\n"}︡
︠599badde-7049-4df0-802f-2df3a62f79ac︠
problem2(20)
problem2(5)
︡f61f2846-3c4e-4ae6-aea5-75e8922c1c36︡{"stdout":"10\n"}︡{"stdout":"16\n"}︡
︠7979fe96-159c-4c91-9474-d47fc40db56ai︠
%md
Here's the extension of this function that was given for bonus credit. Notice that I'm using the function I defined above in this new function. Reuse your code! It saves time and space.
︡c69d424f-0f64-4b4a-9548-a5ddb1a962c8︡{"html":"<p>Here&#8217;s the extension of this function that was given for bonus credit. Notice that I&#8217;m using the function I defined above in this new function. Reuse your code! It saves time and space.</p>\n"}︡
︠1257cb7a-896c-4584-b6ff-57d1e0c8f7dc︠
def problem2bc(n):
    target_list = [ n ]        # Initialize the output list with the input integer.
    while n != 1:              # Loop through the following process until we hit 1:
        n = problem2(n)            # Find the next number in the sequence
        target_list.append(n)      # Stick it at the end of the list
    return target_list
︡6eee7659-86f2-4b16-9838-2df59f23ed5a︡
︠a6438d52-0a66-4283-86d1-dee380f79499i︠
%md
Let's check this a few times. You can check the outputs easily by hand as well, but it's hard to predict how long these lists will be!
︡f531c904-02de-473d-8532-a2554e94c7a3︡{"html":"<p>Let&#8217;s check this a few times. You can check the outputs easily by hand as well, but it&#8217;s hard to predict how long these lists will be!</p>\n"}︡
︠c90d1b05-de7f-4bd2-ae61-a12f94b07cf3︠
problem2bc(5)
︡d166a1bd-bd42-40c8-ab43-b9cfcb49ecf7︡{"stdout":"[5, 16, 8, 4, 2, 1]\n"}︡
︠6bd43337-7581-47d8-8c03-9c6946bba9ea︠
problem2bc(15)
︡49231ebc-4952-41be-b95c-b51f9a877f61︡{"stdout":"[15, 46, 23, 70, 35, 106, 53, 160, 80, 40, 20, 10, 5, 16, 8, 4, 2, 1]\n"}︡
︠fba8fa84-e454-4646-b2da-ee8b5a6af457i︠
%md
If you managed to prove that *every* output list terminates in a 1, then you will become famous, because this is one of the most famous unsolved problems in discrete mathematics, known as the [Collatz conjecture](http://mathworld.wolfram.com/CollatzProblem.html). It even has [its own xkcd comic](http://xkcd.com/710/).
︡31050b19-4741-4d21-be90-ea15e259c2cc︡{"html":"<p>If you managed to prove that <em>every</em> output list terminates in a 1, then you will become famous, because this is one of the most famous unsolved problems in discrete mathematics, known as the <a href=\"http://mathworld.wolfram.com/CollatzProblem.html\">Collatz conjecture</a>. It even has <a href=\"http://xkcd.com/710/\">its own xkcd comic</a>.</p>\n"}︡
︠8238707c-bb5c-46ba-b021-59ef88ec23f2i︠
%md

## Problem 3

As indicated in class, this won't run in Sage because of the `raw_input` command. But here is the Python code that you can copy/paste and run for yourself elsewhere:

    def dict_maker():

        # Set up empty dictionary to start with:
        network = { }

        # Prompt user to enter a name, or quit:

        # The "while True" sets up an infinite loop that can only be broken by entering a "Q".
        while True:

            person = raw_input("Enter a person in the network, or hit Q to quit: ")
            if person == "Q":
                break

            # Here's where we actually get around to building the dictionary:
            else:

                # Take the user's space-separated input: 
                likes = raw_input("Enter in a space-separated list of people this person likes: ")
                
                # split() turns the input into a list, and then network[person] assigns the result to the key "person". 
                network[person] = likes.split()
        return network


︡50bf4b49-6369-4c71-ab26-d26acb5b378f︡{"html":"<h2>Problem 3</h2>\n\n<p>As indicated in class, this won&#8217;t run in Sage because of the <code>raw_input</code> command. But here is the Python code that you can copy/paste and run for yourself elsewhere:</p>\n\n<pre><code>def dict_maker():\n\n    # Set up empty dictionary to start with:\n    network = { }\n\n    # Prompt user to enter a name, or quit:\n\n    # The \"while True\" sets up an infinite loop that can only be broken by entering a \"Q\".\n    while True:\n\n        person = raw_input(\"Enter a person in the network, or hit Q to quit: \")\n        if person == \"Q\":\n            break\n\n        # Here's where we actually get around to building the dictionary:\n        else:\n\n            # Take the user's space-separated input: \n            likes = raw_input(\"Enter in a space-separated list of people this person likes: \")\n\n            # split() turns the input into a list, and then network[person] assigns the result to the key \"person\". \n            network[person] = likes.split()\n    return network\n</code></pre>\n"}︡
︠387a2a56-70f6-449a-a897-bc71fe2802c5︠









