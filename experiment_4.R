# question1
x <- c(0, 1, 2, 3, 4)
px <- c(0.41, 0.37, 0.16, 0.05, 0.01)

x_px_1 <- c(x%*%px)
x_px_2 <- weighted.mean(x,px)
print(x_px_2)

# question2
ft <- function(t) (t*(0.1 * exp(-0.1*t))) # because it is expected value 
ans_int <- integrate(ft, 0, Inf)
print(ans_int)

# question3
x <- c(0,1,2,3)
px <- c(0.1,0.2,0.2,0.5)
var <- weighted.mean(x,px)
y <- 12*var + 2*(3-var) - 18 # equation formed using statements provided in the question

# question4
fx_1 <- function(x) (x * (0.5 * exp(-x)))
fx_2 <- function(x) (x^2 * (0.5 * exp(-x)))
first_moment <- integrate(fx_1, 1, 10)
print(first_moment)
second_moment <- integrate(fx_2, 1, 10)
print(second_moment)
mean <- as.numeric(first_moment[1])
print(mean)
variance <- as.numeric(second_moment[1]) - as.numeric(mean[1]) * as.numeric(mean[1])
print(variance)

# question5
fx_3 <- function(x) (x * (0.75 * (0.25)^(x-1)))
x <- c(1,2,3,4,5)
y <- x^2
px <- fx_3(x)
fx_3(3)
mean <- sum(y*px)
print(mean)
var <- sum(y*y*px) - mean*mean
print(var)

