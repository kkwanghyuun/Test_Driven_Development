####### TEST SOME EXAMPLE #######

source('./mytranspose.r')
source('./testmytranspose.r')



#test
myvar1 <-  matrix(1:10, nrow=5, ncol=2)
expresult<-mytranspose(myvar1)
testmytranspose(myvar1,expresult)


#test
myvar1 <-  matrix(NA, nrow=0, ncol=0)
expresult<-mytranspose(myvar1)
testmytranspose(myvar1,expresult)


#test
myvar1 <-  matrix(c(1,2), nrow=1, ncol=2)
expresult<-mytranspose(myvar1)
testmytranspose(myvar1,expresult)


#test
myvar1 <-  matrix(c(1,2), nrow=2, ncol=1)
expresult<-mytranspose(myvar1)
testmytranspose(myvar1,expresult)


#test
myvar2 <- c(1,2,NA,3)
expresult<-mytranspose(myvar2)
testmytranspose(myvar2,expresult)


#test
myvar2 <- c(NA)
expresult<-mytranspose(myvar2)
testmytranspose(myvar2,expresult)


#test
myvar2 <- c()
expresult<-mytranspose(myvar2)
testmytranspose(myvar2,expresult)


#test
d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)
mydata3 <- data.frame(d,e,f)
expresult<-mytranspose(mydata3)
testmytranspose(mydata3,expresult)
