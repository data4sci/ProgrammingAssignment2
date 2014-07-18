## These are two functions: makeCacheMatrix and cacheSolve 
## ProgrammingAssignment 2 @ class.coursera.org/rprog-005


## This function is cashing argument (matrix) 
## and its inverse in higher eviroment 

makeCacheMatrix <- function(x = matrix) {
  originalM <<- x                   # cashing argument (matrix)
  inverseM  <<- solve(x)            # computing & caching 
#  return(inverseM)
}

## This function computes the inverse of the special "matrix"
## returned by makeCacheMatrix above. If the inverse has already
## been calculated (and the matrix has not changed), then 
## the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  if (exists("originalM") & exists("inverseM")) { 
                                            # was makeCacheMatrix
                                            # used to compute and 
                                            # cache inverse matrix?

    if (identical(x, originalM)) {          # matrix changed? 
      message("getting cached data")
      return(inverseM)                      # use cached data
    }
  }
  else {                                    # matrix changed or 
    return(solve(x))                        # wasn't cached 
  }                                         # compute inverse
}
