# Question 1
punif(45, 0, 60, lower.tail=FALSE)
punif(30, 0, 60) - punif(20, 0, 60)

# Question 2
lambda = 1/2
dexp(3, lambda)

plot(dexp(c(0:5), lambda))

pexp(3, lambda)
plot(pexp(seq(0:4), lambda), type='l')

plot(rexp(1000, lambda))
hist(rexp(1000, lambda), breaks=50, main="")

# Question 3
alpha = 2
beta = 1/3
dgamma(3, alpha, beta)

pgamma(1, alpha, beta, lower.tail=FALSE)

qgamma(0.70, alpha, beta, lower.tail=FALSE)