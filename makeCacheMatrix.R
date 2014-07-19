makeCacheMatrix <- function(m) {
  invM <- NULL
  set <- function(y) {
    m <<- y
    invM <<- NULL
  }
  get <- function() m
  setinverse <- function(solve) invM <<- solve 
  getinverse <- function() invM
  list(set=set, get=get, 
       setinverse=setinverse, 
       getinverse=getinverse)
}  
