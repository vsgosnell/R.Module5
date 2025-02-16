# Define Matrix A (10x10) with values from 1 to 100
A <- matrix(1:100, nrow=10)

# Calculate the determinant of A
det_A <- det(A)

# Check if A is invertible and calculate inverse if possible
if (det_A != 0) {
  inverse_A <- solve(A)
} else {
  inverse_A <- NULL
}

# Print results
print(paste("Determinant of A:", det_A))
if (is.null(inverse_A)) {
  print("Matrix A is not invertible")
} else {
  print("Inverse of A:")
  print(inverse_A)
}







# Define Matrix B (10x100) with values from 1 to 1000
B <- matrix(1:1000, nrow=10)

# Load the MASS package for ginv() function
install.packages("MASS")  
# Run this line if MASS is not installed
library(MASS)

# Calculate the Moore-Penrose pseudo-inverse of B
pseudo_inverse_B <- ginv(B)

# Print the pseudo-inverse of B
print("Pseudo-inverse of Matrix B:")
print(pseudo_inverse_B)


