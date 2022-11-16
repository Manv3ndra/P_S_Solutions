# question1
ans1 <- pbinom(9, 12, 1/6) - pbinom(6,12,1/6)
print(ans1)

# question2
ans2_b <- pnorm(84, mean=72, sd=15.2, lower.tail=FALSE)
print(ans2_b)

# question3
ans3_a <- ppois(0, 5)
print(ans3_a)
ans3_b <- ppois(50, 50) - ppois(47, 50) 
print(ans3_b)

# question4
ans4 <- pbinom(4, 5, 17/250) - pbinom(2, 5, 17/250)
print(ans4)

# question5
ans5_a <- dbinom(c(0:31), 31, 0.447)
print(ans5_a)
plot(ans5_a)

ans5_b <- pbinom(c(0:31), 31, 0.447)
print(ans5_b)
plot(ans5_b)

mean(ans5_a)
var(ans5_a)
sd(ans5_a)
