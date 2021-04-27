# R code for Finding Composite and Prime numbers upto n
# initialize number n
n=100

# arranging sequence
x = seq(1, n)

# creating an empty place to store the numbers
prime_numbers=c()

composite_numbers = c()
for (i in seq(2, n)) {
  if (any(x == i)) {
    
    # prime numbers gets stored in a sequence order
    prime_numbers = c(prime_numbers, i)
    x = c(x[(x %% i) != 0], i)
  }
  
  else{
    
    # composite numbers gets stored in a sequence order
    composite_numbers = c(composite_numbers, i)
  }
}

# printing the series
print("prime_numbers")
print(prime_numbers)

print("composite_numbers")
print(composite_numbers)
