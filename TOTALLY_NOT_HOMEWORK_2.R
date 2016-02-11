#THIS WILL ONLY BE UPLOADED AFTER HOMEWORK IS ACCEPTED AND GRADED.

#   Jose Vila
#   Homework #2
#   Working with R Scripts

# 1(a)
#   First we are going to get the package DataComputing.
library(DataComputing)

#   Access the table on Data Computing
data(HappinessIndex)

#   See the variable descriptions
help(HappinessIndex)
View(HappinessIndex)

#   Create a Histogram of score, life expectancy, and gdp per capita
hist(HappinessIndex$score, xlab = "Score")
hist(HappinessIndex$lifeExpectancy, xlab = "Life Expectancy")
hist(HappinessIndex$gdpPerCapita, xlab = "GDP Per Capita")

#   Mean of the three variables
mean(HappinessIndex$score)
mean(HappinessIndex$lifeExpectancy, na.rm = TRUE)
mean(HappinessIndex$gdpPerCapita)

#   Plot a scatterplot for score by life expectancy and score by gdp
plot(x = HappinessIndex$score, 
     y = HappinessIndex$lifeExpectancy, 
     xlab = "Score",
     ylab = "Life Expectancy")

plot(x = HappinessIndex$score,
     y = HappinessIndex$gdpPerCapita,
     xlab = "Score",
     ylab = "GDP Per Capita")

#   There is a trend that shows that the higher the happiness index score,
#   the longer life the life expectancy is. Also, higher income areas tend 
#   to be happier, but most countries center on the lower end of the gdp
#   spectrum.




# 1(b)
#   For this we will be using the BabyNames data, so let's call that
data(BabyNames)
help(BabyNames)
dim(BabyNames)

#Now we will graph the frequency of my name - Jose!
Jose <-  
  BabyNames %>%
  filter(name == 'Jose')

Jose %>%
  ggplot(aes(x=year,y=count,color=sex)) +
  geom_point() +
  #also draw a vertical line from the year I was born.
  geom_vline(xintercept=1996)

#   A common trend I notice with this data is that alot of Jose's were born around the year I
#   was born(1996), peaking around the year 2000. However, there has been a steady decline in
#   the number of Jose's born as of late
