#
#   January 28
#

#  First, we'll look over the code from HW#1:

#   Enter the vector (variable) Height with the values 62, 65, 69, 72, 70, 69
Height <- c(62, 65, 69, 72, 70, 69)
#   Enter the vector Weight with the values 110, 140, 145, 200, 165, 155, 
Weight <- c(110, 140, 145, 200, 165, 155)
#   Enter the vector Gender with the values F, F, F, M, M, M
Gender <- c('F', 'F', 'F', 'M', 'M', 'M')

#   Calculate the BMI, using the equation  703.07 x W / (H squared)    (make sure it works in R)
BMI <- 703.7 * Weight / (Height^2)

#   Create a scatterplot of Weight by Height (i.e., Height on the x axis)
plot(Height, Weight)

#   Describe briefly the relationship that you see.

#   Download the data file survey.csv to your desktop, and read it using the following:
S <- read.csv(file.choose())

#   Run the following, making sure they work:
View(S)
names(S)
dim(S)

#   Now, use one R function to summarize all of the variables:
summary(S)

#  Also, run the following line:
attach(S)

#   Find the mean and median of the variable, Facebook, 
#   making sure the results match the summary above
mean(Facebook)
median(Facebook)

#   Finally, plot Weight by Height
plot(Height, Weight)

#  Why do we get a plot of the old vectors, and not the
#  Height and Weight variables from the data frame?

# Here are two ways to deal with this:


#  Here is another issue that comes up with data frames:
#  This time, download the data file SurveyS16A.csv onto your
#  desktop, then read it into R using 
SA <- read.csv(file.choose())


#  Take a look at the file, using head(), dim(), View(), etc.
head(SA)
dim(SA)
View(SA)

#  Now, try calculating the mean number of Facebook friends.
mean(SA$Facebook)

#  Note the NA values.  These indicate that some data 
#  values are missing.  
#  Some functions in R don't mind NA's.  Other functions
#  require you to tell them what to do with the NA's.  
#  For example, summary() and hist() are fine with NA's:
summary(SA$Facebook)
hist(SA$Facebook)

#  Here is how to use the mean() function when there are NA's.
#  Inside the parentheses of mean(), you need to add the argument   
#       na.rm=TRUE
#  This tells R to remove the NA's before finding the mean.

#  Now, use the function mean() to calculate the mean heights:


#  Back to using DataComputing:

#  You can install most packages by typing like this, or
#  by clicking Packages and Install and typing in the name
install.packages("devtools")

#  To load, check the box under Packages.
#  Or type  
library("devtools")

#  Here's how to install DataComputing (a little
#  different)   
devtools::install_github("DataComputing/DataComputing")

#  Load DataComputing by checking the box, or type this:
library("DataComputing")

#  Look at the data tables in Data Computing:
data(package="DataComputing")
#  the function above lists the data sets in the upper left pane

#  First, we focus on the NCHS data
data(NCHS)

#  Use any of these to get some info about NCHS
dim(), names(), head(), glimpse()



#  A useful function for categorical variables is table()


#  A scatterplot:
plot(x=NCHS$height, y=NCHS$weight)

#  A different way to do a scatterplot:

#  Now add color for different values of sex

#  A huge data set, so take a sample:


#  Another way to find the sample:


#  Now filter out children:


# The above has < 100 observations  (why?)

#  Try this instead:

#  Now, we'll use the dataset BabyNames:


#  We can create a subset with just my name:


#  Then we graph it.


#  Try other names:



