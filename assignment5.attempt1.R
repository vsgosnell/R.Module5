# Doing Math assignment 5

# The R code for inverse Matrix: solve(A). 
# This code is the Inverse of A where A is a square matrix.

# Your Assignment:
# Find the value of inverse of a matrix, and determinant of a matrix 
# by using the following values:
# A=matrix(1:100, nrow=10)
# B=matrix(1:1000, nrow=10)
# Post your result and procedure you took on your blog.
# A good start will be:
A <- matrix(1:100, nrow=10)  
B <- matrix(1:1000, nrow=10)

#get the value of the inverse of the matrix
solve(A)
#gives an error bc the matrix is singular

#get the value of the determinant
det(A)
#returns 0 bc the matrix is singular


#not sure what to do, google searches not helping
#the announcement posted in Canvas provides some clarification:

# The first step is setting up your
# Matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL)
# A = matrix(1:100, nrow=10)
# B = matrix(1:1000, nrow=10)
# #Transpose A and B  given a matrix or data.frame x, t returns the transpose of x. 
# t(A)
# t(B)
# create two vectors (a and b)
# Your turn
# 
# multiply matrices by vectors
# Your turn
# re-assign the vectors a and b to equal the number of rows of the column for the corresponding matrix
# Your turn
# Multiply the matrix by a matrix
# Your turn
# Inverse a matrix
# S=matrix(2:5, nrow=2)
# check det()
# det(S)


#set up matrices
A <- matrix(1:100, nrow=10)  
B <- matrix(1:1000, nrow=10)

#create two vectors a and b that transpose A and B
a <- t(A)
b <- t(B)

#multiply matrices by vectors
A %*% a

# re-assign the vectors a and b to equal the number 
# of rows of the column for the corresponding matrix
a <- 10
b <- 100


# Multiply the matrix by a matrix
A %*% B


# inverse a matrix
solve(A)

det(A)
#returns 0
