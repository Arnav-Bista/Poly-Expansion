# Poly-Expansion
Performs Polynomial expansion, with the number of variables you want to any power you want.

(X<sub>1</sub> + X<sub>2</sub> +  X<sub>3</sub> +  X<sub>4</sub> + ..... +  X<sub>m</sub>)<sup>n</sup> <-- Expands this into its individual elements.

The code, in essence, does expansion.

# Example
poly_expand(3,2) returns:

(a + b + c)<sup>2</sup>
which is: (a<sup>2</sup> + b<sup>2</sup> + c<sup>2</sup> + 2ab + 2bc + 2ac)

However, since you cannot write superscripts in julia, it instead returns something similar:

`["2ac", "bb", "2ab", "aa", "cc", "2bc"]`

# Usage
you can use `include("poly_expansion.jl")` to import the function into your code. The file should be in the same directory.


`poly_expand()` takes in 2 parameters and has one default paramenter.

`poly_expand(number of variables, power)`

+ Number of variables, or m, is self explanatory
+ power is the power you want to raise the variables to

# Why?
Why is a valid question. There are already tools such as WolframAlpha which will return the results in Latex. I built this software to solve a complex problem which I encountered in Machine Learning. To improve prediction outcome and accuracy, I needed to have a polynomial function. However, I ran into a problem as I had 12 different features and I couldn't apply the binomial theorm. 

The multinomial theorm was a possible soluition, but it required me to generate all the possible combinations of numbers that add up to the power. For Example:

`x + y + z = n`

I couldn't think of a way to efficiently do it, so I made this instead. With this program, I can match each feature of my ML program to a letter. 
Such as X<sub>1</sub> -> a. Then I can simply multiply each of the variables, along with their coefficients. 

Why not directly implement it with numbers? Then I couldn't have checked weather the output was accurate or not. 

Well you can use it for the same ML problem I had, or just to check the mathematical identities.
