#Fibonacci Sequence for first 10 nos
Fibonacci <- numeric(10)
Fibonacci[1] <- Fibonacci[2] <- 1
for (i in 3:10) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]
print("First 10 Fibonacci numbers:")
print(Fibonacci)

#Fibonacci Sequence for first 10 nos (Alternate Version)
fib <- function(n){
  if(n <= 0){
    return(0)
  }else if(n == 1){
    return(1)
  }else{
    return(fib(n-1) + fib(n-2))
  }
}

fibBeta <- function(n){
  phi <- (1+sqrt(5))/2  #compute golden ratio and negative inverse
  invertPhi <- -1/phi
  return( (phi**(n+1) + invertPhi**(n-1))/(1+phi*phi) )
}

fibList <- function(x, fn){
  return(unlist(lapply(x, fn)))
}

startNums <- 1:20
fibNums <- fibList(startNums, fib)
fibBetaNums <- fibList(startNums, fibBeta)
cat(startNums, sep = " ")