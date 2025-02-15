#bivariate analysis 
#data recorded on survey about students who smoke and hours studied
#first, create two vectors that hold the data
#then use the table command

#vector for the yes/no smoking
smokes = c("Y","N","N","Y","N","Y","Y","Y","N","Y")

#vector for hours studied
amount = c(1,2,2,3,3,1,2,1,3,2)

#create a table
table(smokes, amount)


# What would be nice to have are the marginal totals and the proportions. 
# For example, what proportion of smokers study 5 hours or less. 
# We know that this is 3 /(3+2+1) = 1/2, but how can we do this in R?
# The command prop.table will compute this for us. 
# It needs to be told the table to work on, and a number to indicate 
# if you want the row proportions (a 1) or the column proportions (a 2) 
# the default is to just find proportions.


#store the table
tmp = table(smokes, amount)

#store the number of digits
old.digits = options("digits")

#only print 3 decimal places
options(digits = 3)

#the rows sum to 1 now
prop.table(tmp, 1)


#the columns sum to 1 now
prop.table(tmp,2)






# Use of Barplot
barplot(table(amount, smokes))




# Handling bivariate data: categorical vs. numerical
#ex./ drug test of experimental (x) vs control (y) groups

x = c(5, 5, 5, 13, 7, 11, 11, 9, 8, 9)
y = c(11, 8, 4, 5, 9, 5, 10, 5, 4, 10)
boxplot(x,y)


