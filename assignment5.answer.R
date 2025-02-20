#define the matrices
A = matrix(1:100, nrow=10)
B = matrix(1:1000, nrow=10)

#Transpose A and B
t(A)
t(B)

#create two vectors (a and b)
a = c(1:2)
b = c(1:4)
#where did these numbers come from?


#multpily matrices by vectors
X = a*A
Y = b*B

#re-assign the vectors a and b to equal the number 
#of rows of the column for the corresponding matrix
a=c(1:10)
b=c(1:100)

#Multiply the matrix by a matrix
A %*% a
B %*% b
#i thought a and b were vectors, not matrices?

#Inverse a matrix
S=matrix(2:5, nrow=2)
#how do you know to do 2:5?

#check det()
det(S)



#i don't understand this logic

