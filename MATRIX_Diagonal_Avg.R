# IN A GIVEN 3X3 MATRIX, REPLACE ALL THE ELEMENTS ABOVE THE MAIN DIAGONAL WITH 0, BELOW THE MAIN DIAGONAL WITH 1 AND THE MAIN DIAGONAL ELEMENTS WITH THE AVERAGE VALUE OF ALL ELEMENTS.

matrix_1 <- matrix(c(2,1,7,5,10,3,5,1,2),nrow = 3,ncol = 3,byrow = TRUE)
matrix_2 <- matrix(nrow = 3,ncol = 3)
show(matrix_1)

#Calculate Average in Matrix
average=0
total=0

total <- sum(matrix_1)
average <- total/9.0
show(total)
show(average)

# Performing the Question 

for (i in 1:3) {
  for (j in 1:3) {
    if((i==j)){
      matrix_2[i,j] <- average
    }
    else if (i<j) {
      matrix_2[i,j] <- 0
    }
    else if (i>j){
      matrix_2[i,j] <- 1
    }
  }
}

# Results 

show("Original Matrix:\n")
show(matrix_1)
show("Modified Matrix:\n")
show(matrix_2)
