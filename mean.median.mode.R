a <- c(73, 66, 69, 67, 49, 60, 81, 71, 
       78, 62, 53, 87, 74, 64, 74, 50, 
       85, 45, 63, 100)

range(a)
#gives the lowest and highest numbers
#doesn't actually compute the range


#find the mean of the dataset
mean(a)

#find the median of the dataset
median(a)


#there is no built-in function for mode
#this function takes the vector as input
#and gives the mode as output

firstmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

v <- c(2, 1, 2, 3, 1, 2, 3, 4, 1, 
       5, 5, 3, 2, 3)
result <- firstmode(v)
result



#find the variance of the dataset
var(a)

#find the standard deviation 
sd(a)
#this is the square root of the variance



