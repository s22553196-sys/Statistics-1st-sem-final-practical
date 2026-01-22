#Assignment no.11: Simulations- Observed and Theoretical Frequencies
#------------------------------------------------------------------------
# Q1 Write a user defined function to plot frequencies.
#------------------------------------------------------------------------
plot_frequencies <- function(x) {
  freq <- table(x)  # calculate frequency of each value
  barplot(freq,
          main = "Frequency Plot",
          xlab = "Values",
          ylab = "Frequency",
          col = "skyblue")
}

# Example usage
sample_data <- c(1,2,2,3,3,3,4,4,4,4,5,5)
plot_frequencies(sample_data)
#------------------------------------------------------------------------
# Q 3) Perform simulations to show the observed probability tends towards
# theoretical probability with increase in sample size.
#------------------------------------------------------------------------
# Simulation function
simulate_die <- function(n_rolls) {
  rolls <- sample(1:6, size = n_rolls, replace = TRUE)  # simulate die rolls
  freq <- table(rolls) / n_rolls  # observed probability
  return(freq)
}

# Small sample
simulate_die(10)

# Medium sample
simulate_die(100)

# Large sample
simulate_die(10000)

