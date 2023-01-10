--Rational formula part one

R=QQ[x_{5,1}..x_{6,3},y_{5,1}..y_{6,3}]

Z=matrix{{1, 0, 0, 0, 0, 0, 0, 0, 0},{0, 0, 0, 0, 1, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 1, 1, 1, 1, 1, 1, 1, 1}, {x_{5,1}*y_{5,1},x_{5,1}*y_{5,2}, x_{5,1}*y_{5,3}, x_{5,2}*y_{5,1},x_{5,2}*y_{5,2}, x_{5,2}*y_{5,3}, x_{5,3}*y_{5,1}, x_{5,3}*y_{5,2}, x_{5,3}*y_{5,3}},{x_{6,1}*y_{6,1},x_{6,1}*y_{6,2}, x_{6,1}*y_{6,3}, x_{6,2}*y_{6,1},x_{6,2}*y_{6,2}, x_{6,2}*y_{6,3}, x_{6,3}*y_{6,1}, x_{6,3}*y_{6,2}, x_{6,3}*y_{6,3}}}

Z=sub(Z,{x_{5,1}=>3, x_{5,2}=> 5, x_{5,3}=>1, y_{5,1}=>8, y_{5,2}=>2, y_{5,3}=>1})

I=minors(6,Z);

primes=decompose I;

length primes

----------These 2 components correspond to invalid inputs----------

toString primes_0

toString primes_1

----------These 5 components correspond to repeated point pairs----------

toString primes_2

toString primes_3

toString primes_4

toString primes_5

toString primes_6

----------This component cooresponds to the unique new point pair x_6~(-1/3,7/5,3/17), y_6~(-4/3,2/5,-1/20)----------

toString primes_7

---------------------------------------------------------------------------------------------------------
--Rational formula part two

R=QQ[x_{5,1}..x_{6,3},y_{5,1}..y_{6,3}]

Z=matrix{{1, 0, 0, 0, 0, 0, 0, 0, 0},{0, 0, 0, 0, 1, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 1, 1, 1, 1, 1, 1, 1, 1}, {x_{5,1}*y_{5,1},x_{5,1}*y_{5,2}, x_{5,1}*y_{5,3}, x_{5,2}*y_{5,1},x_{5,2}*y_{5,2}, x_{5,2}*y_{5,3}, x_{5,3}*y_{5,1}, x_{5,3}*y_{5,2}, x_{5,3}*y_{5,3}},{x_{6,1}*y_{6,1},x_{6,1}*y_{6,2}, x_{6,1}*y_{6,3}, x_{6,2}*y_{6,1},x_{6,2}*y_{6,2}, x_{6,2}*y_{6,3}, x_{6,3}*y_{6,1}, x_{6,3}*y_{6,2}, x_{6,3}*y_{6,3}}}

Z=sub(Z,{x_{5,1}=>3, x_{5,2}=> 5, x_{5,3}=>1, x_{6,1}=>-1/3, x_{6,2}=>7/5, x_{6,3}=>3/17})

I=minors(6,Z);

primes=decompose I;

length primes

----------These 2 components correspond to invalid inputs----------

toString primes_0

toString primes_1

----------This component cooresponds to the unique new point pair y_5~(8,2,1), y_6~(-4/3,2/5,-1/20)----------

toString primes_2