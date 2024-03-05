--Rational formula part one

FF=frac(QQ[x_{5,1}..x_{5,3},y_{5,1}..y_{5,3}])

R=FF[x_{6,1}..x_{6,3},y_{6,1}..y_{6,3}]

Z=matrix{{1, 0, 0, 0, 0, 0, 0, 0, 0},{0, 0, 0, 0, 1, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 1, 1, 1, 1, 1, 1, 1, 1}, {x_{5,1}*y_{5,1},x_{5,1}*y_{5,2}, x_{5,1}*y_{5,3}, x_{5,2}*y_{5,1},x_{5,2}*y_{5,2}, x_{5,2}*y_{5,3}, x_{5,3}*y_{5,1}, x_{5,3}*y_{5,2}, x_{5,3}*y_{5,3}},{x_{6,1}*y_{6,1},x_{6,1}*y_{6,2}, x_{6,1}*y_{6,3}, x_{6,2}*y_{6,1},x_{6,2}*y_{6,2}, x_{6,2}*y_{6,3}, x_{6,3}*y_{6,1}, x_{6,3}*y_{6,2}, x_{6,3}*y_{6,3}}}

Z=sub(Z,{x_{6,1}=>(y_{5,3}-y_{5,2})/(y_{5,3}*x_{5,2}-x_{5,3}*y_{5,2}), x_{6,2}=>(y_{5,3}-y_{5,1})/(y_{5,3}*x_{5,1}-x_{5,3}*y_{5,1}), x_{6,3}=>(y_{5,1}-y_{5,2})/(y_{5,1}*x_{5,2}-x_{5,1}*y_{5,2}), y_{6,1}=>(x_{5,3}-x_{5,2})/(y_{5,3}*x_{5,2}-x_{5,3}*y_{5,2}), y_{6,2}=>(x_{5,3}-x_{5,1})/(y_{5,3}*x_{5,1}-x_{5,3}*y_{5,1}), y_{6,3}=>(x_{5,1}-x_{5,2})/(y_{5,1}*x_{5,2}-x_{5,1}*y_{5,2})})

----------All minors are zero----------

I=minors(6,Z)
---------------------------------------------------------------------------------------------------------
--Rational formula part two

FF=frac(QQ[x_{5,1}..x_{6,3}])

R=FF[y_{5,1}..y_{6,3}]

Z=matrix{{1, 0, 0, 0, 0, 0, 0, 0, 0},{0, 0, 0, 0, 1, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 1, 1, 1, 1, 1, 1, 1, 1}, {x_{5,1}*y_{5,1},x_{5,1}*y_{5,2}, x_{5,1}*y_{5,3}, x_{5,2}*y_{5,1},x_{5,2}*y_{5,2}, x_{5,2}*y_{5,3}, x_{5,3}*y_{5,1}, x_{5,3}*y_{5,2}, x_{5,3}*y_{5,3}},{x_{6,1}*y_{6,1},x_{6,1}*y_{6,2}, x_{6,1}*y_{6,3}, x_{6,2}*y_{6,1},x_{6,2}*y_{6,2}, x_{6,2}*y_{6,3}, x_{6,3}*y_{6,1}, x_{6,3}*y_{6,2}, x_{6,3}*y_{6,3}}}

Z=sub(Z,{y_{5,1}=>(x_{6,3}-x_{6,2})/(x_{5,3}*x_{6,2}-x_{6,3}*x_{5,2}), y_{5,2}=>(x_{6,3}-x_{6,1})/(x_{5,3}*x_{6,1}-x_{6,3}*x_{5,1}), y_{5,3}=>(x_{6,2}-x_{6,1})/(x_{6,1}*x_{5,2}-x_{5,1}*x_{6,2}), y_{6,1}=>(x_{5,3}-x_{5,2})/(x_{5,3}*x_{6,2}-x_{6,3}*x_{5,2}), y_{6,2}=>(x_{5,3}-x_{5,1})/(x_{5,3}*x_{6,1}-x_{6,3}*x_{5,1}), y_{6,3}=>(x_{5,2}-x_{5,1})/(x_{6,1}*x_{5,2}-x_{5,1}*x_{6,2})})


----------All minors are zero----------

I=minors(6,Z);
