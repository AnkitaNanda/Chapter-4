n_step <- function(){
  
  prompt <- "enter the elements of the stochastic matrix row-wise as a space-separated list \n"
  D <- as.double(strsplit(readline(prompt), " ")[[1]])
  l <- length(D)
  
  P <- matrix(data = D, nrow=sqrt(l), ncol=sqrt(l), byrow=TRUE)
  
  n <- readline("Enter the number of transitions: ")
  i <- readline("Enter the initial state: ")
  j <- readline("Enter the final state: ")
  n <- as.integer(n)
  i <- as.integer(i)
  j <- as.integer(j)
 
  P <- P %^% n
  
  print(paste("The probability of being in state", j , "starting from state", i , "in " ,n, " steps is", P[i,j]))
  
  
}

n_step()