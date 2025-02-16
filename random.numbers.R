# Random Numbers in R
# Generate a random number between 2.0 and 10.0
# If you want to generate a decimal number where any value (including fractional values) 
# between the stated minimum and maximum is equally likely, use the runif function.
# This function generates values from the Uniform distribution.
# Here's how to generate one random number between 2.0 and 10.0:

x1 <- runif(1, 2.0, 10.0)
x1


# If you want to generate multiple random values, don't use a loop.
# You can generate several values at once by specifying the number of 
# values you want as the first argument to runif.
# Here's how to generate 10 values between 2.0 and 10.0:

x2 <- runif(10, 2.0, 10.0)
x2


# Generate a Random (WHOLE) Number
# Generate a random integer between 1 and 10
# This looks like the same exercise as we did in the last one, 
# but now we only want whole numbers, not fractional values.
# For that, we use the sample function:

x3 <- sample(1:10, 1)
x3

# The first argument is a vector of valid numbers to generate 
# (here, the numbers 1 to 10), and the second argument indicates 
# one number should be returned.
# If we want to generate more than one random number, 
# we have to add an additional argument to indicate that repeats are allowed:

x4 <- sample(1:10, 5, replace=T)
x4

