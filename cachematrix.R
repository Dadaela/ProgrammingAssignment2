## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#Prova Daniela
makeCacheMatrix <- function( da = matrix() ) {
    inversa <- NULL
    # set the matrix
    set <- function( matrix ) {
            da <<- matrix
            inversa <<- NULL
    }
    # get the matrix
    get <- function() {
    	da
    }
    setInverse <- function(inverse) {
        inversa <<- inverse
    }
    getInverse <- function() {
        inversa
    }
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  da <- x$getInverse()
  if( !is.null(da) ) {
    message("getting cached inverse")
    return(da)
  }
  
  data <- x$get()            ## Get x
  da <- solve(data,...)  ##Solve 
  x$setInverse(da)       ## Set the inverse 
  da                     ## Return the matrix
}

