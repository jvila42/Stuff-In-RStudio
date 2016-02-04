#
#   February 2
#


#  Enter these vectors in R:

Animal <- c('cat','dog','pig','opossum','horse','human')
Sleep <- c(12.5, 10.1, 9.1, 18.0,  2.9, 8)
REM <- c(3.2, 2.9, NA, 4.9, 0.6, 1.9) #   (don't put the NA in quotes)
Brain <- c(.026, .07, .18,.006, .655, 1.32)
Body <- c(3.3, 14, 86.2, 1.7, 521, 62)

#  Have R calculate the mean Body size 
mean(Body)

#  Have R calculate the mean REM sleep time
mean(REM, na.rm = TRUE)

#  Do a summary of the Body vector
summary(Body)
summary(REM)

#  Create new vectors:  LBrain is the log of Brain
#   and    LBody is the log of Body
LBrain <- log(Brain)
LBody <- log(Body)

#  Try some plots:   Brain by Body,  LBrain by LBody
plot(Body, Brain)
plot(y=Brain, x=Body)
plot(y=LBrain, x=LBody)

#  Also:  Sleep by Body, then Sleep by LBody
plot(Body,Sleep)

#  Put the vectors in a data frame like this:
an <- data.frame(Animal, Sleep, REM, Brain, Body, LBrain, LBody)

#  Use View() to make sure it looks correct.

#  Remove the vectors from your environment, using rm()
rm(Animal, Sleep, REM, Brain, Body, LBrain, LBody)
#  Do summary() on the whole data frame
summary(an)
#  Now, redo the plots using plot and an$
plot(an$Body, an$Brain, xlab='Body in kg', 
     ylab='Brain in g')
#  Do the plots using qplot:
qplot(Body, Brain, data=an)

##################################################

#  Last class, we loaded the DataComputing program:
library(DataComputing)

#  then we loaded the NCHS data set that is in it
data(NCHS)

#  Then we created a subset of NCHS, 
#  called Sam.
Sam <-  NCHS %>%
  sample_n(100)


#  Now filter out children:
Sam <-  NCHS %>%
  sample_n(100)  %>%
  filter(age > 17)

#  %>% is for 'chaining'
#  You give an object name, then %>% and then
#  the code that follows will be applied to that
#  object.  If you follow that code by another %>%
#  then the code after it will act on the result 
#  of the line before it, etc. 

#  Try this instead (so we'll have 100 in the end):
Sam <-  NCHS %>%
  filter(age > 17) %>%
  sample_n(100) 

#  You can do glimpse either of the two ways:
glimpse(Sam)

Sam %>%
  glimpse() 

#  Many other functions can be used 
Sam %>%
  dim()

#  Note, can't do this because it tries
#  to take the dimensions of the glimpse!
Sam %>%
  glimpse() %>%
  dim()






#  Using the dataset BabyNames:
data(BabyNames)
help(BabyNames)
dim(BabyNames)

#  Created a subset with just my name:
Sheila <-  
  BabyNames %>%
  filter(name == 'Sheila')  # note:  use ==

#  Then we can graph it.
#  (Don't worry about the code for plotting
#   at this point; just try to guess what 
#   each part is doing)
Sheila %>%
  ggplot(aes(x=year,y=count,color=sex)) +
  geom_point() +
  geom_vline(xintercept=1960)

#  Try other names -- James
James <- BabyNames %>%
  filter(name == 'James')
James %>%
  ggplot(aes(x=year,y=count,color=sex)) +
  geom_point() +
  geom_vline(xintercept=1991)

 
