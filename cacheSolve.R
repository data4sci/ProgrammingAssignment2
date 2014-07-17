cacheSolve <- function() {
  if (exists("inverseM") & exists("lastM") & exists("originalM")) { 
                                        # having cached 3 matrix
      if (identical(originalM, lastM)) {# & cached matrix didn't changed
        message("getting cached data")
        return(inverseM)                # returning cached inverse
      }
      else {                            # cached matrix have changed
        message("cached matrix have changed - computing...")
        inverseM <<- solve(originalM)   # computing & caching inverse 
        lastM <<- originalM             # caching original matrix for later comparison 
        return(inverseM)
      }
  }
  else if (exists("originalM")) {       # first use of function - nothing cached yet
    message("first use - computing...")
    inverseM <<- solve(originalM)       # computing & caching inverse   
    lastM <<- originalM                 # caching original matrix for later comparison 
    return(inverseM)
  }
  else {                                # matrix was not cached by makeCacheMatrix()
    message("no cached matrix - run makeCacheMatrix() first.")
    return(NA)
  }
}
