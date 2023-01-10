
-- December 7, 2022
-- Computational proof of k=4 in P2xP2
-- decompose the maximal minor ideal of 4x9 Z

S = QQ[x_{1,1},x_{1,2},x_{2,1},x_{2,2},x_{3,1},x_{3,2},x_{4,1},x_{4,2},y_{1,1},y_{1,2},y_{2,1},y_{2,2},y_{3,1},y_{3,2},y_{4,1},y_{4,2}]
X = matrix{
    {x_{1,1},x_{1,2},1},
    {x_{2,1},x_{2,2},1},
    {x_{3,1},x_{3,2},1},
    {x_{4,1},x_{4,2},1}
}

Y = matrix{
    {y_{1,1},y_{1,2},1},
    {y_{2,1},y_{2,2},1},
    {y_{3,1},y_{3,2},1},
    {y_{4,1},y_{4,2},1}
}

rankOnes = apply(4, i -> transpose X^{i} * Y^{i})
Z = matrix(flatten \ entries \ rankOnes)
minors4 = minors(4,Z);
dim minors4
-- 12
degree minors4
-- 6
minors4 == radical minors4;
-- true 
T = decompose minors4;
#T 
--17
scan(T, i-> print toString i)

-- 6 ideals for repeated point pairs 
-- 8 ideals with 3 points equal and corresponding 3 in a line
-- 2 ideals with all 4 points on one side equal
-- 1 ideal with both sides on a line and equal cross-ratios (15 generators) -- T_14

-- check that the last ideal is what it is supposed to be:

bothsidesinaline = ideal( det(X^{0,1,2}), det(X^{0,1,3}), det(Y^{0,1,2}), det(Y^{0,1,3})); 
bothsidesinaline + T_14 == T_14
-- true
-- this shows that T_14 needs the condition that both sides are in a line.


--- now we need to check if T_14 is the same as bothsidesinaline + bracketexpression 

--- for this we make the substitution x_i = (x_{i,1},0,1) and y_i=(y_{i,1},0,1) and calculate 
--- the following:


subZ = sub(Z,{x_{1,2}=>0,x_{2,2}=>0,x_{3,2}=>0,x_{4,2}=>0,y_{1,2}=>0,y_{2,2}=>0,y_{3,2}=>0,y_{4,2}=>0})

-- subZ has only one 4x4 nonzero submatrix which is 
M = subZ_{0,2,6,8}

bracketexp = det(X^{0,3}_{0,2})*det(X^{1,2}_{0,2})*det(Y^{0,2}_{0,2})*det(Y^{1,3}_{0,2}) - det(X^{0,2}_{0,2})*det(X^{1,3}_{0,2})*det(Y^{0,3}_{0,2})*det(Y^{1,2}_{0,2})

subT14 = sub(T_14,{x_{1,2}=>0,x_{2,2}=>0,x_{3,2}=>0,x_{4,2}=>0,y_{1,2}=>0,y_{2,2}=>0,y_{3,2}=>0,y_{4,2}=>0})
G = gens gb subT14
g = G_0_0

ideal(det M) == ideal(bracketexp)

ideal(bracketexp) == ideal(g) 










