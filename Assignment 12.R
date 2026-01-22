#1)Bernoulli
p <- 0.6
x <- c(0, 1)
y <- dbinom (x, size = 1, prob = p)# Bernoulli is Binomial (n=1)
barplot(y, names.arg = x,
        main = "Bernoulli Distribution (p = 0.6)",
        xlab = "Outcome", ylab = "Probability")

#2)#Binomial
n<- 10
p <- 0.5

x <- 0:n
y <- dbinom (x, size = n, prob = p)

plot(x, y, type = "h", lwd = 3,
     main = "Binomial Distribution (n = 10, p = 0. 5) ",
     xlab = "x", ylab = "probability")
points (x, y, pch = 19)

#3)Poisson
lambda <- 3

X <- 0:15
y <- dpois(x, lambda)

plot (x, y, type = "h",lwd = 3,
      main = "Poisson Distribution (lambda = 3)",
      xlab = "x", ylab = "probability")
points (x, y, pch = 19)

#4)Normal distribution: mean = 150, Sd = 5
x <- seq(125, 175, length = 200)
y <- dnorm(x, mean = 150, sd = 5)

plot (x, y, type = "l", lwd = 2,
      main = "Normal Distribution (mean = 0, sd = 1)",
      xlab = "x", ylab = "Density")