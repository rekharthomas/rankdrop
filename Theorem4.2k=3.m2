
-- November 29, 2022
-- Computational proof of Theorem 4.2
-- decompose the maximal minor ideal of 3x9 Z

S = QQ[x_{1,1},x_{1,2},x_{2,1},x_{2,2},x_{3,1},x_{3,2},y_{1,1},y_{1,2},y_{2,1},y_{2,2},y_{3,1},y_{3,2}]
X = matrix{
    {x_{1,1},x_{1,2},1},
    {x_{2,1},x_{2,2},1},
    {x_{3,1},x_{3,2},1}
}

Y = matrix{
    {y_{1,1},y_{1,2},1},
    {y_{2,1},y_{2,2},1},
    {y_{3,1},y_{3,2},1}
}

rankOnes = apply(3, i -> transpose X^{i} * Y^{i})
Z = matrix(flatten \ entries \ rankOnes)
minors3 = minors(3,Z);
dim minors3
-- 8
degree minors3
-- 3
minors3 == radical minors3 
-- true 
T = decompose minors3;
#T 
-- 5 
scan(T, i-> print toString i)

-- the first 3 are repeated points (3 possibilities)
-- ideal(y_{2, 2}-y_{3, 2},y_{2, 1}-y_{3, 1},x_{2, 2}-x_{3, 2},x_{2, 1}-x_{3, 1}) 
-- ideal(y_{1, 2}-y_{3, 2},y_{1, 1}-y_{3, 1},x_{1, 2}-x_{3, 2},x_{1, 1}-x_{3, 1})
-- ideal(y_{1, 2}-y_{2, 2},y_{1, 1}-y_{2, 1},x_{1, 2}-x_{2, 2},x_{1, 1}-x_{2, 1})

-- the next 2 are 3 points coincide and the corresponding points are in a line 
-- ideal(y_{2, 2}-y_{3, 2},y_{2, 1}-y_{3, 1},y_{1, 2}-y_{3, 2},y_{1, 1}-y_{3, 1},x_{1, 2}*x_{2, 1}-x_{1, 1}*x_{2, 2}-x_{1, 2}*x_{3, 1}+x_{2, 2}*x_{3, 1}+x_{1, 1}*x_{3, 2}-x_{2, 1}*x_{3, 2})
-- ideal(x_{2, 2}-x_{3, 2},x_{2, 1}-x_{3, 1},x_{1, 2}-x_{3, 2},x_{1, 1}-x_{3, 1},y_{1, 2}*y_{2, 1}-y_{1, 1}*y_{2, 2}-y_{1, 2}*y_{3, 1}+y_{2, 2}*y_{3, 1}+y_{1, 1}*y_{3, 2}-y_{2, 1}*y_{3, 2})

-- check that last polynomial in the last 2 ideals are determinants [123]
T_3_4 == det X
T_3_4 == -(det X) 
-- true 

T_4_4 == det Y 
T_4_4 == -(det Y)
-- true
