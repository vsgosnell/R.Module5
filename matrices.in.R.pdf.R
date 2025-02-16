# Matrices in R pdf
# there are several approaches to create a vector in R
# can use the concatenate function to make an ordered list of numbers

vec <- c(1.9, -2.8, 5.6, 0, 3.4, -4.2)
vec

#can then use the colon : operator to make a sequence of integers
vec <- -2:5
vec

# can make the sequence run the other way
vec <- 5:-2
vec


# can use the sequence function
# have to give starting, ending, and increment value
vec <- seq(-3.1, 2.2, by = 0.1)
vec



# Note that R wraps the vector around to four rows, and at the beginning of each row gives
# you the position in the vector of the first element of the row. 
# We can run a sequence backward, from a larger value to a smaller value, 
# but we must use a negative increment value.

# We can use the replicate function to a get a vector whose elements are all the same
vec <- rep(1,8)
vec
#gives a vector with 1 replicated 8 times


# can concatenate two vectors to make a larger vector
vec <- c(rep(2,4), 1:3, c(8,1,9))
vec



# can take one of the columns from a data table and make it a vector
vec <- Data$ACT
#this requires the dataset Data from problem 1.19 of the text
#not sure which text tho, this came from a pdf


# if we want to know how many elements are in a vector, we use the length function
length(vec)

# if we want to reference an element in a vector, use square brackets []
vec[5]
#gives the 5th element of the vector


# If we want to reference a consecutive subset of the vector, 
# we use the colon operator within the square brackets
vec[2:7]
# gives elements 2-7 of the vector



# To create a matrix in R, we may use the matrix function. 
# We need to provide a vector containing the elements of the matrix, 
# and specify either the number of rows or the number of columns of the matrix. 
# This number should divide evenly into the length of the vector, or we will get a warning. 
# For example, to make a 2 x 3 matrix named M consisting of the integers 1 through 6, we can do this:

M <- matrix(1:6, nrow = 2)
M

M <- matrix(1:6, ncol = 3)
M
#produces the same matrix as above

# Note that R filled in the matrix column-by-column. 
# If we prefer to fill in the matrix row-by-row, we must activate the byrow setting
M <- matrix(1:6, ncol = 3, byrow = T)
M
#fills by rows instead of columns


# obtain the transpose of the matrix
t(M)
#flips the rows and columns, and now counting by columns


# To add or subtract two matrices (or vectors) which have the same number of rows and
# columns, we use the plus and minus symbols

A + B
A - B


# To multiply two matrices with compatible dimensions (i.e., the number of columns of the
# first matrix equals the number of columns of the second matrix), 
# we use the matrix multiplication operator %*%

A %*% B
# If we just use the multiplication operator *, R will multiply the corresponding elements
# of the two matrices, provided they have the same dimensions. 
# But this is not the way to multiply matrices


# Likewise, to multiply two vectors to get their scalar (inner) product, 
# we use the same operator

a %*% b
# Technically, we should use the transpose of a. 
# But R will transpose a for us rather than giving us an error message.
# this does in fact give an error: Error in a %*% b : non-conformable arguments
# probably bc a and b are not defined?




# To create the identity matrix for a desired dimension, we use the diagonal function
I <- diag(5)
I
# This gives us a 5 x 5 identity matrix



# To find the determinant of a square matrix N, use the determinant function
det(N)

# To obtain the inverse N-1 of an invertible square matrix N, we use the solve function
solve(N)

# If the matrix is singular (not invertible), or almost singular, we get an error message.



# In linear regression, we must evaluate the equation b = (X'X)-1X'Y 
# to obtain the estimated regression parameters. 
# Here Y is the vector of the values of the response variable, 
# and X is the design matrix consisting of a column of ones 
# and a column for the values of each predictor variable. 
# If X and Y have already been created in R, then we can evaluate the equation in R like so:

b <- solve( t(X) %*% X ) %*% t(X) %*% Y
# Then the vector b will contain the estimated regression coefficients.

