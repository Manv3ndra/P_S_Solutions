# Question 1
n <- 100
hist(rt(n, n-1))

# Question 2
hist(rchisq(100, 2))
hist(rchisq(100, 10))
hist(rchisq(100, 25))

# Question 3
x <- seq(-6, 6, length.out = 100)
df <- c(1, 4, 10, 30)
colors <- c("red", "blue", "green", "yellow")
plot.new()
plot(x, dnorm(x), type = "l", col = "black", lwd = 2, xlab = "x", ylab = "density", main = "Normal Distributions")
for (i in 1:4) {
  dist <- dt(x = x, df = df[i])
  lines(x, dist, col = colors[i])
}

# Question 4
qf(0.95, 10, 20)
pf(1.5, 10, 20)
1 - pf(1.5, 10, 20)
qf(c(0.25, 0.5, 0.75, 0.999), 10, 20)
hist(rf(1000, 10, 20))
