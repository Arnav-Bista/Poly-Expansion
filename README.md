# Poly-Expansion
Performs Polynomial expansion, with the number of variables you want to any power you want.

(X<sub>1</sub> + X<sub>2</sub> +  X<sub>3</sub> +  X<sub>4</sub> + ..... +  X<sub>m</sub>)<sup>n</sup> <-- Expands this into its individual elements.

The code, in essence, does expansion.

# Example
poly_expand(3,2) returns:

(a + b + c)<sup>2</sup>
which is: (a<sup>2</sup> + 2ab + 2ac + b<sup>2</sup> + 2bc + c<sup>2</sup>)
However, since you cannot write superscripts in julia, it instead returns something similar:

("aa","2ab","2ac","bb","2bc","cc") in a vector

# Usage
you can use `include("poly_expand.jl")` to import the function into your code.


`poly_expand()` takes in 2 parameters and has one default paramenter.

`poly_expand(number of variables, power, show)`

+ Number of variables, or m, is self explanatory
+ power is the power you want to raise the variables to
+ show is a default parameter set to false. If set to true, it prints initial input and final output before returning. 
