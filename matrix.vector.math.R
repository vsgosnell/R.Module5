# R separates between a vector and a matrix, but it does not state 
# whether a vector is a row or column vector. 
# This does have its advantages, and probably some disadvantages as well. 
# If for any reason you need to force the orientation of a vector, 
# then create it as a matrix with one of its dimensions set equal to one.

#create a simple vector
x = 1:4
x

#determine the class of the vector
class(x)
#it is of the class 'integer'

#can convert this vector to a column matrix using matrix():
X = matrix(x, ncol = 1)

#check the class of the matrix
class(X)
#it is of the class 'matrix' and 'array'

X
#displays 1-4 as a matrix


# The ncol argument can be replaced by using the nrow argument if a row vector is required.
# The identity matrix is a diagonal matrix so we use the diag() command to create it.

I3 = diag(3)
I3
#creates a matrix with 1's going diagonally



# We often need to find the transpose of a matrix. 
# The t() command does this.

M = matrix(1:6, nrow = 2)
M
#prints the matrix with 2 columns, numbers printed column-wise

#create the transpose of the matrix
t(M)
#flips it to give two columns instead of two rows
#numbers are now read row-wise



# Matrix and vector calculations
# R uses the standard arithmetic operators on pairs of matrices (or vectors) on an element-by-element basis.
# Addition of a constant to a vector or matrix is effected on all elements

x+2

2+x

# Similarly, we can multiply a vector or matrix by a scalar using:
5*x

x*5

5*X


# It retains the size of the vector or matrix. Also note that pre-multiplying by a scalar is equivalent to post-multiplying by a scalar, as should have been expected. This is of course different to matrix multiplication.
# Matrix operations use different symbols from simple arithmetic operators to distinguish the different results that might be desired.

A = matrix(1:4, nrow = 2)
B = matrix(7:10, nrow = 2)
A*B

# It creates a matrix with elements based on simple multiplication of the paired elements, not those based on proper matrix multiplication. 
# If we want to multiply two matrices, the order is important.

A %*% B

B %*% A


# Multiplying a matrix by a vector is easily achieved, and R will orient the vector to conform to the rules of matrix multiplication as required.
y = c(3,4)
A %*% y

y %*% A



# The inverse of a matrix is used in many statistical procedures. 
# The solve() command inverts a square matrix.

A
solve(A)


# If we want to solve the set of equations, represented in matrix form as Ax = b, 
# we use the solve() command.

A

b = c(5,7)
solve(A, b)



# The det() command is used for finding the determinant of a matrix.
A
det(A)


# The trace of a matrix is not so easily found. 
# There is a command that is called trace() but this is not an algebraic function!!

