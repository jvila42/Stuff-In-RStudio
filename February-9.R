#   February 9

#   Let's illustrate this using a sample of 
#   only 100 observations from NCHS:
Sam <- NCHS %>%
  sample_n(100)  %>%
  filter(age < 18)

#  OR like this

Sam <- NCHS %>%
  sample_n(100)  

JustKids <- Sam %>%  
  filter(age < 18)
  
#   Another way to do this would be to
#   create a new variable, indicating
#   whether the respondent was a child
#   or not.

#   There are many ways to create new 
#   variables and keep them in the data
#   frame.  For example, suppose we 
#   wanted to create a new height variable
#   in inches, rather than meters:
#  (Start with a sample of 100 from NCHS,
#   that includes children and adults)
Sam <- NCHS %>%
  sample_n(100)

Sam$heightin <- Sam$height * 39.3701

#   and a new weight variable in pounds,
#   rather than kilograms:

Sam$weightlb <- Sam$weight * 2.20462
View(Sam)

#   Do a View(Sam) to confirm that the
#   new variables are in the data frame.

#   Now, here's a way to save a variable
#   called child that has the value 'Yes' 
#   if the person is < 18, and 'No' otherwise.
#   We use a function called ifelse(),
#   a 'conditioning' function.

#  ifelse(logical expression, 
#        do this if true, do this if false)


Sam$child <- ifelse(Sam$age < 18, 'Yes', 'No')


#   Do help(NCHS) and determine what the income
#   variable measures.  Create a variable called 
#   poverty that takes value 'Yes' if the person 
#   is below the poverty line, and 'No' otherwise.
Sam$poverty <- ifelse(Sam$income < 1, 'Yes', 'No')
Sam$poverty <- ifelse(Sam$income >= 1, 'No', 'Yes')

#   Neither the age variable nor the income variable 
#   had missing values in NCHS.   Suppose the age 
#   variable had had missing values.  Would our
#   child variable have been correct?  Explain.

#  Actually, as Brian said, Yes, it worked
Sam$Tall <- ifelse(Sam$heightin > 72, 'Yes', 'No')

