#Stat assignment 10 

#QUESTION 1

# Create data with NA values
marks <- c(45, 50, 55, NA, 60, 62, 65, 70, 75, NA, 80, 85)
marks_clean <- na.omit(marks)
quantile(marks_clean, probs = c(0.10, 0.50, 0.90))


#QUESTION 2

#HISTOGRAM

hist(marks_clean,
     main = "Histogram of Marks",
     xlab = "Marks",
     ylab = "Frequency",
     col = "lightblue",
     border = "black")

#QUESTION 3

#BOXPLOT & outlier 
boxplot(marks_clean,
        main = "Boxplot of Marks",
        ylab = "Marks",
        col = "lightgreen",
        horizontal = TRUE)

boxplot.stats(marks_clean)$out


#QUESTION 4

##Q4) Create boxplot for each method

# Step 1: Create data for each method
# Data for each method
method_A <- c(45, 58, 62, 65, 68, 70, 72, 75, 78, 80, 82, 85, 88, 92, 95, 98, 100, 100, 102, 110)

method_B <- c(55, 60, 65, 68, 70, 72, 75, 75, 78, 80, 82, 85, 85, 88, 90, 92, 95, 98, 100, 105)

method_C <- c(30, 40, 50, 55, 60, 65, 68, 70, 72, 75, 78, 80, 82, 85, 88, 90, 95, 100, 110, 120)

#Step 2: Create boxplots (comparative)

# Combine data into a list
boxplot(method_A, method_B, method_C,
        names = c("Method A", "Method B", "Method C"),
        main = "Boxplot Comparison of Methods",
        ylab = "Scores",
        col = c("lightblue", "lightgreen", "lightpink"))


#QUESTION 5 
#Explanation
#sd(dataset) calculates standard deviation
#mean(dataset) calculates mean
#The ratio sd / mean gives coefficient of variation
#Multiplying by 100 converts it into percentage

#Interpretation
#CV measures relative variability
#Higher CV → more dispersion in data
#Lower CV → data is more consistent




#Explanation
#median(observations) finds the median
#mad(observations) finds Median Absolute Deviation
#Each value is:𝑋−Median/MAD
​

#Interpretation
#This calculates robust Z-scores
#Less affected by outliers
#Used when data is not normally distributed
