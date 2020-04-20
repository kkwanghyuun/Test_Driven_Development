#test
testmytranspose<- function(input,expresult){
  if(is.null(input)){
    return(print("It is impossible to transpose"))
  }
  
  
  else{
    print("***Result of Testing transpose function***")
    actual = t(input)
    flag = all.equal(actual,expresult)
    if (flag ==TRUE){
      flag2 = "SUCCESS"
    }
    else{
      flag2 = "FAIL"
    }
    return(print(paste0("Result:",flag2)))
  }
  
}


