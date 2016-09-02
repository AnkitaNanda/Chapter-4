stoch <- function(){
  
  r <- readline("Enter the number of rows of the matrix: ")
  c <- readline("Enter the number of columns of the matrix: ")
  r <- as.integer(r)
  c <- as.integer(c)
  
  
  
  if(r != c){
    print("A stochastic matrix must be a square matrix.")
  }
  
  
  
  
  
  if(r==c){
    
    prompt <- "enter the elements of the matrix row-wise between 0 and 1 as a space-separated list \n"
    D <- as.double(strsplit(readline(prompt), " ")[[1]])
    
    if(any(D < 0) || any(D > 1)){
      
      print("All the elements of the matrix must be between 0 and 1")
      
    }
    
    else{
    
    P <- matrix(data = D, nrow=r, ncol=c, byrow=TRUE)
    
    
    i = 1
    for( i in 1:r){
      
      s <- sum(P[1,])
      
      if(s != 1){
        
        print(" It is not a stochastic matrix as row-sum of all its rows are not 1")
        break()
        
      }
      
      else{
       
        i <- i+1 
        
        if(i==r)
          print(" It is a stochastic matrix.") 
      }
    
      
    }
     
   
  }  
  
  }
  
}

stoch()