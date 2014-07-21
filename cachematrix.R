## These are two functions: makeCacheMatrix and cacheSolve 
## ProgrammingAssignment 2 @ class.coursera.org/rprog-005


##  function creates a special "matrix" object that 
##  can cache its inverse

makeCacheMatrix <- function(m) {  # creatin "special matrix" 
  invM <- NULL
  set <- function(y) {            # $set
    m <<- y                       # 
    invM <<- NULL                 # 
  }
  get <- function() m             # $get
  setinverse <- function(solve) invM <<- solve # $setinverse
  getinverse <- function() invM   # $getinverse
  list(set=set, get=get,          # return "special matrix"
       setinverse=setinverse, 
       getinverse=getinverse)
}  


## function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix. If the inverse has already 
## been calculated (and the matrix has not changed), then 
## the cachesolve should retrieve the inverse from the cache.


cacheSolve <- function(m, ...) {  
  invM <- m$getinverse()          # assign computed inverse 
  if(!is.null(invM)) {            # if already calculated 
    message("getting cached data")  
    return(invM)                  # retrive cached inverse 
  }
  orgM <- m$get()                 # if wasn't calculated
  invM <- solve(orgM, ...)        # calculate inverse form $get
  m$setinverse(invM)              # $setinverse
  invM                            # and retrive inverse  
}