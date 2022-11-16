#Question 1
num = c(5,10,15,20,25,30)
print(paste("Maximum value is = ", max(num)))
print(paste("Minimum value is = ", min(num)))

#Question 2
var_fact = readline('Enter a number: ')
var_fact = as.integer(var_fact)

if(var_fact < 0){
  print("Should have entered a positive number")
}else{
  print(factorial(var_fact))
}

#Question 3
recurse_fibonacci = function(n){
  if(n <= 1){
    return(n)
  }else{
    return(recurse_fibonacci(n-1) + recurse_fibonacci(n-2))
  }
}

var_fib = readline("Enter a number: ")
var_fib = as.integer(var_fib)

if(var_fib <= 0){
  print(paste("Should have entered a positive number"))
}else{
  for(i in 0:(var_fib-1)){
    print(recurse_fibonacci(i))
  }
}

#Question 4
num1 = readline(prompt="Enter the first number: ")
num1 = as.integer(num1)

num2 = readline(prompt="Enter the second number: ")
num2 = as.integer(num2)

print(paste("Sum = ", num1+num2))
print(paste("Difference = ", num1-num2))
print(paste("Product = ", num1*num2))
print(paste("Quotient = ", num1/num2))


#Question5
height = c(10,20,15,5)
barcolors = c("red", "blue", "yellow", "green")
legend_values_bar = c("1","2","3","4")
barplot(height, main="Heights of Random People", names=legend_values_bar ,col=barcolors, legend=legend_values_bar)

