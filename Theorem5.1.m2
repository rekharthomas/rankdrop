--[k=5]

--Case 1: The x points are not all on a line and the y points are not all on a line

--We split into 2 subcases:

--Case 1a:

--We can assume by homography x_1=(1,0,0), x_2=(0,1,0), and x_3=(0,0,1)

--We can assume by homography y_1=(1,0,0), y_2=(0,1,0), and y_3=(0,0,1)

R=QQ[x_{4,1}..x_{5,3},y_{4,1}..y_{5,3}]

Z=matrix{{1, 0, 0, 0, 0, 0, 0, 0, 0},{0, 0, 0, 0, 1, 0, 0, 0, 0},{0, 0, 0, 0, 0, 0, 0, 0, 1}, {x_{4,1}*y_{4,1},x_{4,1}*y_{4,2}, x_{4,1}*y_{4,3}, x_{4,2}*y_{4,1},x_{4,2}*y_{4,2}, x_{4,2}*y_{4,3}, x_{4,3}*y_{4,1}, x_{4,3}*y_{4,2}, x_{4,3}*y_{4,3}},{x_{5,1}*y_{5,1},x_{5,1}*y_{5,2}, x_{5,1}*y_{5,3}, x_{5,2}*y_{5,1},x_{5,2}*y_{5,2}, x_{5,2}*y_{5,3}, x_{5,3}*y_{5,1}, x_{5,3}*y_{5,2}, x_{5,3}*y_{5,3}}}

I=minors(5,Z,Strategy=>Cofactor);

primes=decompose I;

length primes

-------These 4 components correspond to invalid inputs-------

toString primes_0

toString primes_1

toString primes_2

toString primes_3

-------These 7 components correspond to repeated point pairs-------

toString primes_4

toString primes_5

toString primes_6

toString primes_7

toString primes_8

toString primes_9

toString primes_10

-------These 6 components correspond to the k=3 condition-------

toString primes_11

toString primes_12

toString primes_14

toString primes_17

toString primes_18

toString primes_19

-------These 3 components correspond to the k=4 cross-ratio condition-------

toString primes_13

toString primes_15

toString primes_16

--------------------------------------------------------------------------------------

--Case 1b:

--We can assume by homography x_1=(1,0,0), x_2=(0,1,0), and x_3=(0,0,1)

--We can assume by homography y_1=(1,0,0), y_2=(0,1,0), and y_4=(0,0,1)

R=QQ[x_{4,1}..x_{5,3},y_{3,1}..y_{5,3}]

Z=matrix{{1, 0, 0, 0, 0, 0, 0, 0, 0},{0, 0, 0, 0, 1, 0, 0, 0, 0},{0, 0, 0, 0, 0, 0, y_{3,1}, y_{3,2}, y_{3,3}}, {0,0, x_{4,1}, 0, 0, x_{4,2}, 0, 0, x_{4,3}},{x_{5,1}*y_{5,1},x_{5,1}*y_{5,2}, x_{5,1}*y_{5,3}, x_{5,2}*y_{5,1},x_{5,2}*y_{5,2}, x_{5,2}*y_{5,3}, x_{5,3}*y_{5,1}, x_{5,3}*y_{5,2}, x_{5,3}*y_{5,3}}}

I=minors(5,Z,Strategy=>Cofactor);

primes=decompose I;

length primes

-------These 4 components correspond to invalid inputs-------

toString primes_0

toString primes_1

toString primes_2

toString primes_3

-------These 7 components correspond to repeated point pairs-------

toString primes_4

toString primes_5

toString primes_6

toString primes_7

toString primes_8

toString primes_9

toString primes_10

-------These 4 components correspond to the k=3 condition-------

toString primes_11

toString primes_13

toString primes_15

toString primes_16

-------These 2 components correspond to the k=4 cross-ratio condition-------

toString primes_12

toString primes_14

--------------------------------------------------------------------------------------

--Case 2: We assume that the y points are entirely on a line

--We can assume by homography that the x points all have last coordinate 1 and that x_1=(0,0,1)
--We can assume by homography that the y points all have the form y_i=(m_i,0,1) and that y_1=(0,0,1)

R=QQ[x_{2,1}..x_{5,2},m_2..m_5]

--We use column operations to reduce Z as desired

Z=matrix{{0, 0, 0, 0, 0, 1},{x_{2,1}*m_2, x_{2,2}*m_2, x_{2,1}, x_{2,2}, m_2, 1},{x_{3,1}*m_3, x_{3,2}*m_3, x_{3,1}, x_{3,2}, m_3, 1},{x_{4,1}*m_4, x_{4,2}*m_4, x_{4,1}, x_{4,2}, m_4, 1},{x_{5,1}*m_5, x_{5,2}*m_5, x_{5,1}, x_{5,2}, m_5, 1}}

I=minors(5,Z,Strategy=>Cofactor);

f5=det(matrix{{0,0,1},{x_{3,1},x_{3,2},1},{x_{5,1},x_{5,2},1}})*det(matrix{{x_{2,1},x_{2,2},1},{x_{4,1},x_{4,2},1},{x_{5,1},x_{5,2},1}})*det(matrix{{0,1},{m_4,1}})*det(matrix{{m_2,1},{m_3,1}})-det(matrix{{0,0,1},{x_{4,1},x_{4,2},1},{x_{5,1},x_{5,2},1}})*det(matrix{{x_{2,1},x_{2,2},1},{x_{3,1},x_{3,2},1},{x_{5,1},x_{5,2},1}})*det(matrix{{0,1},{m_3,1}})*det(matrix{{m_2,1},{m_4,1}});

f4=det(matrix{{0,0,1},{x_{3,1},x_{3,2},1},{x_{4,1},x_{4,2},1}})*det(matrix{{x_{2,1},x_{2,2},1},{x_{5,1},x_{5,2},1},{x_{4,1},x_{4,2},1}})*det(matrix{{0,1},{m_5,1}})*det(matrix{{m_2,1},{m_3,1}})-det(matrix{{0,0,1},{x_{5,1},x_{5,2},1},{x_{4,1},x_{4,2},1}})*det(matrix{{x_{2,1},x_{2,2},1},{x_{3,1},x_{3,2},1},{x_{4,1},x_{4,2},1}})*det(matrix{{0,1},{m_3,1}})*det(matrix{{m_2,1},{m_5,1}});

f3=det(matrix{{0,0,1},{x_{5,1},x_{5,2},1},{x_{3,1},x_{3,2},1}})*det(matrix{{x_{2,1},x_{2,2},1},{x_{4,1},x_{4,2},1},{x_{3,1},x_{3,2},1}})*det(matrix{{0,1},{m_4,1}})*det(matrix{{m_2,1},{m_5,1}})-det(matrix{{0,0,1},{x_{4,1},x_{4,2},1},{x_{3,1},x_{3,2},1}})*det(matrix{{x_{2,1},x_{2,2},1},{x_{5,1},x_{5,2},1},{x_{3,1},x_{3,2},1}})*det(matrix{{0,1},{m_5,1}})*det(matrix{{m_2,1},{m_4,1}});

f2=det(matrix{{0,0,1},{x_{3,1},x_{3,2},1},{x_{2,1},x_{2,2},1}})*det(matrix{{x_{5,1},x_{5,2},1},{x_{4,1},x_{4,2},1},{x_{2,1},x_{2,2},1}})*det(matrix{{0,1},{m_4,1}})*det(matrix{{m_5,1},{m_3,1}})-det(matrix{{0,0,1},{x_{4,1},x_{4,2},1},{x_{2,1},x_{2,2},1}})*det(matrix{{x_{5,1},x_{5,2},1},{x_{3,1},x_{3,2},1},{x_{2,1},x_{2,2},1}})*det(matrix{{0,1},{m_3,1}})*det(matrix{{m_5,1},{m_4,1}});

f1=det(matrix{{x_{5,1},x_{5,2},1},{x_{3,1},x_{3,2},1},{0,0,1}})*det(matrix{{x_{2,1},x_{2,2},1},{x_{4,1},x_{4,2},1},{0,0,1}})*det(matrix{{m_5,1},{m_4,1}})*det(matrix{{m_2,1},{m_3,1}})-det(matrix{{x_{5,1},x_{5,2},1},{x_{4,1},x_{4,2},1},{0,0,1}})*det(matrix{{x_{2,1},x_{2,2},1},{x_{3,1},x_{3,2},1},{0,0,1}})*det(matrix{{m_5,1},{m_3,1}})*det(matrix{{m_2,1},{m_4,1}});

J=ideal(f1,f2,f3,f4,f5);

-------Moderate computational time-------

elapsedTime K=radical(J);

K==I
