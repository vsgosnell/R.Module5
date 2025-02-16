# Multivariate Analysis
# Multivariate Analysis allow the separate and combined effects 
# of the independent variable to be examined.
# Notation: We have n units (“individuals”) and q variables 
# in a multivariate data set, where q > 1 
# in R, we often use data.frame to capture multivariate data

weight = c(150, 135, 210, 140)
height = c(65, 61, 70, 65)
gender = c("Fe","Fe","M","Fe") 

# make the data frame
study = data.frame(weight,height,gender) 
study



# stack() and unstack()
# reshaping a data object
# stack() allows us to go from wide to long
# unstack() allows us to go from long to wide
# reshape() is for more complex transposition
# all columns in wide version or each block of values in the
# long version must be of the same length
# in some instances, there are two different ways to store data

data("PlantGrowth")
PlantGrowth
#shows 3 groups, 2 treatments and 1 control

# how to build boxplots for the data broken down by groups?
# 'brute force' way is to do this for each value of group
attach(PlantGrowth)
#this give an error: The following objects are masked from 
# PlantGrowth (pos = 3): group, weight

weight.ctrl = weight[group == 'ctrl']
#this does not give an error

# the unstack() will do all of this at once for us
# if the data is structured correctly, it will create a data frame 
# with variables corresponding to the level of the factor

unstack(PlantGrowth)
#arranges the data into groups

#create a boxplot of the grouped data
boxplot(unstack(PlantGrowth))

