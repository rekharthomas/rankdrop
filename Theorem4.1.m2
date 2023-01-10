-*
Theorem 4.1 proof 
*-

-- k = 2 

-------- last coordinate not fixed to 1 ------

R = QQ[x_{1,1}..x_{2,2},y_{1,1}..y_{2,2}]
Z = matrix{{x_{1,1}*y_{1,1},x_{1,1}*y_{1,2},x_{1,2}*y_{1,1},x_{1,2}*y_{1,2}},{x_{2,1}*y_{2,1},x_{2,1}*y_{2,2},x_{2,2}*y_{2,1},x_{2,2}*y_{2,2}}}
I = minors(2,Z);

---- I is not a prime ideal. It has 6 primary components.
primes = decompose I;
length primes

-------The first 4 correspond to invalid inputs
toString primes_0
toString primes_1
toString primes_2
toString primes_3

-------The remaining component corresponds to a repeated point pair
toString primes_4


----------- last coordinate fixed to 1 --------

R = QQ[x_{1,1}..x_{2,1},y_{1,1}..y_{2,1}]
Z = matrix{{x_{1,1}*y_{1,1},x_{1,1},y_{1,1},1},{x_{2,1}*y_{2,1},x_{2,1},y_{2,1},1}}
I = minors(2,Z); --- prime ideal
primes = decompose I;

-----------------------------------------------------------------------------
-----------------------------------------------------------------------------

-- k = 3 

R = QQ[x_{1,1}..x_{3,1},y_{1,1}..y_{3,1}]

--- last coordinate fixed to 1-------
Z = matrix{{x_{1,1}*y_{1,1},x_{1,1},y_{1,1},1},{x_{2,1}*y_{2,1},x_{2,1},y_{2,1},1},{x_{3,1}*y_{3,1},x_{3,1},y_{3,1},1}}
I = minors(3,Z);
primes = decompose I;
length primes

-------The first 3 components correspond to repeated point pairs-------
toString primes_1
toString primes_2
toString primes_3
-------The remaining components correspond to the specified condition------
toString primes_0
toString primes_4


------- last coordinate not set to 1 ------

R = QQ[x_{1,1}..x_{3,2},y_{1,1}..y_{3,2}]
Z = matrix{{x_{1,1}*y_{1,1},x_{1,1}*y_{1,2},x_{1,2}*y_{1,1},x_{1,2}*y_{1,2}},
         {x_{2,1}*y_{2,1},x_{2,1}*y_{2,2},x_{2,2}*y_{2,1},x_{2,2}*y_{2,2}},
         {x_{3,1}*y_{3,1},x_{3,1}*y_{3,2},x_{3,2}*y_{3,1},x_{3,2}*y_{3,2}}}
I = minors(3,Z);
primes = decompose I;
length primes

--- some point is (0:0)

toString primes_0
toString primes_1
toString primes_2
toString primes_3
toString primes_4
toString primes_5

------- the y points are same ----- 

toString primes_6


----- repeated points ------

toString primes_7
toString primes_8
toString primes_9

---- the x points are same ---- 

toString primes_10

------------------------------------------------------------------------------
------------------------------------------------------------------------------

 --- k = 4 

 -----------------------    last coordinate not fixed to 1 ---------

R = QQ[x_{1,1}..x_{4,2},y_{1,1}..y_{4,2}]
Z = matrix{{x_{1,1}*y_{1,1},x_{1,1}*y_{1,2},x_{1,2}*y_{1,1},x_{1,2}*y_{1,2}},{x_{2,1}*y_{2,1},x_{2,1}*y_{2,2},x_{2,2}*y_{2,1},x_{2,2}*y_{2,2}},{x_{3,1}*y_{3,1},x_{3,1}*y_{3,2},x_{3,2}*y_{3,1},x_{3,2}*y_{3,2}},{x_{4,1}*y_{4,1},x_{4,1}*y_{4,2},x_{4,2}*y_{4,1},x_{4,2}*y_{4,2}}}

f = det(matrix{{y_{1,1},y_{1,2}},{y_{3,1},y_{3,2}}})*det(matrix{{y_{2,1},y_{2,2}},{y_{4,1},y_{4,2}}})*det(matrix{{x_{1,1},x_{1,2}},{x_{4,1},x_{4,2}}})*det(matrix{{x_{2,1},x_{2,2}},{x_{3,1},x_{3,2}}})-det(matrix{{x_{1,1},x_{1,2}},{x_{3,1},x_{3,2}}})*det(matrix{{x_{2,1},x_{2,2}},{x_{4,1},x_{4,2}}})*det(matrix{{y_{1,1},y_{1,2}},{y_{4,1},y_{4,2}}})*det(matrix{{y_{2,1},y_{2,2}},{y_{3,1},y_{3,2}}});
f == det(Z)

------------------------- last coordinate fixed to 1 ---------------------------------------

R = QQ[x_{1,1}..x_{4,1},y_{1,1}..y_{4,1}]
Z = matrix{{x_{1,1}*y_{1,1},x_{1,1},y_{1,1},1},{x_{2,1}*y_{2,1},x_{2,1},y_{2,1},1},{x_{3,1}*y_{3,1},x_{3,1},y_{3,1},1},{x_{4,1}*y_{4,1},x_{4,1},y_{4,1},1}}
f = det(matrix{{y_{1,1},1},{y_{3,1},1}})*det(matrix{{y_{2,1},1},{y_{4,1},1}})*det(matrix{{x_{1,1},1},{x_{4,1},1}})*det(matrix{{x_{2,1},1},{x_{3,1},1}})-det(matrix{{x_{1,1},1},{x_{3,1},1}})*det(matrix{{x_{2,1},1},{x_{4,1},1}})*det(matrix{{y_{1,1},1},{y_{4,1},1}})*det(matrix{{y_{2,1},1},{y_{3,1},1}});
f == det(Z)


















