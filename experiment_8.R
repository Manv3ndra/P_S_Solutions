data1 <- read.csv(file.choose())

print(paste("Number of rows: ",nrow(data1)))

print(head(data1, 10))

print(paste("Mean: ",mean(data1$Wall.Thickness)))

hist(data1$Wall.Thickness, main = "Histogram of Wall Thickness", xlab = "Wall Thickness", col = "yellow")

abline(v = mean(data1$Wall.Thickness), col = "blue", lty = 3)

s10 = c()

for(i in 1:1000)
{s10[i]=mean(sample(data1$Wall.Thickness,10,replace = TRUE))}

hist(s10)

s50 = c()

for (i in 1:1000) {
  s50[i]=mean(sample(data1$Wall.Thickness,50,replace = TRUE))
}

hist(s50)

s500 = c()

for (i in 1:1000) {
  s500[i]=mean(sample(data1$Wall.Thickness,500,replace = TRUE))
}

hist(s500)

s9000 = c()

for (i in 1:1000) {
  s9000[i]=mean(sample(data1$Wall.Thickness,9000,replace = TRUE))
}

hist(s9000)

par(mfcol = c(1,3))
hist(s50, col = "red")
hist(s500, col = "yellow")
hist(s9000, col = "green")