mytranspose <- function(x) {

  if(is.null(x)==TRUE){
    print("Input is NULL. Check your input")
    y<-x
  }
  
  
  
  else{
    if(is.vector(x)){
      x<-matrix(x)
      y <- matrix(NA, nrow=ncol(x), ncol = nrow(x))
      for(i in 1:nrow(x)) {
        for(j in 1:ncol(x)) {
          y[j,i] <- x[i,j]
        }
      }
    }
    
    
    
    
    if(is.matrix(x)){
      
      if(sum(dim(x))==0){
        print("There is no dimension of matrix")
        return(x)
      }
      
      
      else{
        y <- matrix(NA, nrow=ncol(x), ncol = nrow(x))
        for(i in 1:nrow(x)) {
          for(j in 1:ncol(x)) {
            y[j,i] <- x[i,j]
          }
        } 
      }
      
     
    }
    
    
    
    if(class(x)=="data.frame"){
      x<-as.matrix(x)
      r<-rownames(x)
      c<-colnames(x)
      y <- matrix(NA, nrow=ncol(x), ncol = nrow(x))
      for(i in 1:nrow(x)) {
        for(j in 1:ncol(x)) {
          y[j,i] <- x[i,j]
        }
      }     
      if(is.null(r)!=TRUE){
        colnames(y)<-r
      }
      if(is.null(c)!=TRUE){
        rownames(y)<-c
      }      
      
    }
    
  }
  
  
  return(y)
}
