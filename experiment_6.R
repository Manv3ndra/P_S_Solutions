library(pracma)

#question 1
f <- function(x, y){
  (2*(2*x+3*y))/5
}


integral2(f, 0, 1, 0, 1)

f_x_1 <- function(y){
  (2*(2+3*y))/5
}

integral(f_x_1, 0, 1)

f_y_0 <- function(x){
  (2*(2*x))/5
}

integral(f_y_0, 0, 1)

f_xy <- function(x, y){
  ((x*y)*(2)*(2*x+3*y))/5
}

integral2(f_xy, 0, 1, 0, 1)


#question2
f2 <- function(x, y){
  (x+y)/30
}
x <- c(0,1,2,3)
y <- c(0,1,2)
row <- c()
for(i in x){
  print(i)
  for(j in y){
    print(j)
    row <- c(row, f2(i, j))
  }
}

mat <- matrix(row, ncol=3, byrow=TRUE)
mat
sum(mat)

apply(mat, 1, sum)
apply(mat, 2, sum)
mat[1,2]

gx <- apply(mat, 1, sum)
gx
ex <- sum(x*gx)
ex

hy <- apply(mat, 2, sum)
hy
ey <- sum(y*hy)
ey

exy=0
for(i in x){
  print(i)
  for(j in y){
    exy <- exy + (i*j*mat[i+1,j+1]) 
  }
}
exy

ex2 <- sum(x*x*gx)
ey2 <- sum(y*y*hy)
varx = ex2 - ex*ex
varx

vary = ey2 - ey*ey
vary

covxy = exy - ex*ey
covxy
