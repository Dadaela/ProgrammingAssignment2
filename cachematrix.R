## Put comments here that give an overall description of what your
## functions do
## These functions were written to fulfill the requirements of Coursera Data Science: R Programing
## Week 3 assignment on July 30, 2019. It is a pair of functions that create, cache, inverse and solve a matrix.
## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {  ## define argument matrix
  inv <- NULL                                ## initialize inv as NULL
  set <- function(y){                        ## define the set function (y) to assign 
    x <<- NULL                                ## x is NULL
  }
  get <- function() x                      ## define get fucntion 
  setInverse <- function(solveMatrix) inv <<- solveMatrix ## assigns value of inv
  getInverse <- function() inv                                    ## get the value of inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)  #order for functions
}


## Write a short comment describing this function
## This function computes the inverse of the special "matrix" returned by makeChacheMatrix() above.
## If the inverse has already been calculated and no change in the matrix,
## then cacheSolve will retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv
}
