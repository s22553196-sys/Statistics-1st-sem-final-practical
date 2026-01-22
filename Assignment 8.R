# Assignment No. 8: Nested and Statistical Functions in R

# -----------------------------
# Sample Data
# -----------------------------
data <- c(10, 25, 30, 15, 40)

# -----------------------------
# Q1: Range using nested functions
# -----------------------------
range_value <- max(data) - min(data)
range_value

# -----------------------------
# Q2: Interquartile Range (IQR) using nested functions
# -----------------------------
iqr_value <- quantile(data, 0.75) - quantile(data, 0.25)
iqr_value

# -----------------------------
# Q3: Covariance, Variance, Standard Deviation, Correlation
# -----------------------------
x <- c(10, 20, 30, 40, 50)
y <- c(15, 25, 35, 45, 55)

# Variance
variance_x <- var(x)
variance_x

# Standard Deviation (nested)
std_dev_x <- sqrt(var(x))
std_dev_x

# Covariance
covariance_xy <- cov(x, y)
covariance_xy

# Correlation Coefficient
correlation_xy <- cor(x, y)
correlation_xy

# -----------------------------
# Q4: Coefficient of Variation
# -----------------------------
dataset <- c(5, 10, 15, 20, 25)

cv_percent <- (sd(dataset) / mean(dataset)) * 100
cv_percent

# -----------------------------
# Q5: Robust Z-scores using Median and MAD
# -----------------------------
observations <- c(10, 12, 14, 15, 18, 100)

z_scores <- (observations - median(observations)) / mad(observations)
z_scores
