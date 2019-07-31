## Put comments here that give an overall description of what your
## functions do
These functions were written to fulfill the requirements of Coursera Data Science: R Programing
Week 3 assignment on July 30, 2019. It is a pair of functions that create, cache, inverse and solve a matrix.
## Write a short comment describing this function
This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inv <<- solveMatrix
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
This function computes the inverse of the special "matrix" returned by the above make ChacheMatrix above.
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
