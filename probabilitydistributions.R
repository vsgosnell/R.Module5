#example of categorical data using histogram
set.seed(121343)
u <- rnorm(100)
hist(u)


#probability distributions
# a variable is a symbol [A, B, x, y, etc.]
# that can take on any specified set of values
# when the value of a variable is the outcome of
# a statistical experiment, that variable is a random variable
# uppercase represents variable and lowercase denotes one of its values
# ex./ X represents random variable X
# P(X) represents the probability of X
# P(X = x) refers to the probability that the random variable X
# is equal to a particular value, denoted by x

# By prefixing a "d" to the function name, you can get probability density values (pdf). 
# By prefixing a "p", you can get cumulative probabilities (cdf). 
# By prefixing a "q", you can get quantile values. 
# By prefixing an "r", you can get random numbers from the distribution. 
# The dnorm() function returns the height of the normal curve at some value 
# along the x-axis. Here the value of dnorm(1) is shown by the vertical line at x=1 

dnorm(1)


# A random variable is a variable that assumes numerical values associated 
# with the random outcomes of an experiment, where one (and only one) 
# numerical value is assigned to each sample point.
#discrete if they assume a countable number
#continuous if they can assume values corresponding to any of the points
#contained in one or more intervals -> i.e., values that are infinite and uncountable


#discrete probability distribution
# The probability distribution of a discrete random variable is a graph, table, or formula 
# that specifies the probability associated with each possible value the random variable can assume.

#Requirements for the Probability Distribution of a Discrete Random Variable x
# p(x)  ≥ 0 for all values of x -> probability of x must be greater than 0 for all x
# [sum of]p(x) = 1 -> the sum of all probabilities of x must equal 1 (100%)





#histogram with shading
hist(u, density = 20)

#histogram with specific number of bins 
hist(u, density = 20, breaks = 20)

#histogram with curve over it
#first, find the mean of the dataset
m <- mean(u)

#find the standard deviation 
std <- sqrt(var(u))

#now set the parameters in hist()
hist(u, density = 20, breaks = 20, prob = T, 
     xlab = 'x-variable', ylim = c(0, 0.7), 
     main = 'Normal Curve over Histogram')
  curve(dnorm(x, mean = m, sd = std), 
        col = 'darkblue', lwd = 2, add = T)




#density curve over histogram
  hist(u, density=20, breaks=20, prob=TRUE, 
       xlab="x-variable", ylim=c(0, 0.8),
       main="Density curve over histogram") 
  lines(density(u), col = "blue")
  
