##Stat assingnment 7

#QUESTION 1
#Q1) Create a data set with 2 variables using c()cv

#We create two variables:
  
#X = Hours Studied
#Y = Exam Score

# Creating data using c()
hours <- c(2, 4, 6, 8, 10)
marks <- c(40, 50, 65, 75, 85)

# Combine into a data frame
data <- data.frame(hours, marks)

# View the data
data

#QUESTION 2

#Q2) Write code to run a simple linear regression

#Simple Linear Regression model:
#In R, we use the lm() function.

# Running simple linear regression
model <- lm(marks ~ hours, data = data)

# Display model summary
summary(model)

##QUESTION 3

#Q3) Display coefficients and interpret the results
#Code to display coefficients

coefficients(model)


#QUESTION 4

#Q4) Predict values based on the fitted model for multiple data points

#Suppose we want to predict marks for:
#3 hours
#5 hours
#7 hours

# New data for prediction
new_hours <- data.frame(hours = c(3, 5, 7))

# Predict values
predicted_marks <- predict(model, new_hours)

predicted_marks






