cacheSolve <- function(m, ...) {
  invM <- m$getinverse()
  if(!is.null(invM)) {
    message("getting cached data")
    return(invM)
  }
  orgM <- m$get()
  invM <- solve(orgM, ...)
  m$setinverse(invM)
  invM
}