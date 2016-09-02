n_step <- function(){
  
  prompt <- "enter the elements of the stochastic matrix row-wise as a space-separated list \n"
  D <- as.double(strsplit(readline(prompt), " ")[[1]])
  l <- length(D)
  P <- matrix(data = D, nrow=sqrt(l), ncol=sqrt(l), byrow=TRUE) 
  print(P)
  
  prompt <- "enter the elements of initial probability vector as a space-separated list \n"
  I <- as.double(strsplit(readline(prompt), " ")[[1]])
  
  print(I)
  
  j <- readline("Enter the final state: ")
  j <- as.integer(j)
 
  
  n <- readline("Enter the number of transitions: ")
  n <- as.integer(n)
  
  P <- P %^% n
  print(P)
  
  
  U <- I %*% P
  print(U)
  
  print(paste("The probability of being in state", j , "in " ,n, " steps is", U[j]))
  
  
}

n_step()