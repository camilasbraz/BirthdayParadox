# Libraries

# Function that returns the probability of two individuals sharing birthdays, given a number of individuals and days
# choose(k, n) calculates the number of sets with n elements than can be chosen from a set with k elements, that is
#the binomial coefficient
birthdayParadox <- function(n_individuals, n_time) {
 return(p <- 1 - choose(n_time, n_time - n_individuals) * factorial(n_individuals) / n_time ^ n_individuals)
}


# Number of individuals
n_individuals = 23

# Number of days (365 = one year)
n_time = 365

# Calling function
p = birthday(n_individuals, n_time)
p =round(p, 3)*100


# Read form keyboard
n_individuals <- as.integer(readline(prompt = "Please enter a number for the individuals: "))
n_time <- as.integer(readline(prompt = "Please enter a number for the time: "))

p = birthday(n_individuals, n_time)
p =round(p, 3)*100

print(paste0(p, "%"))
