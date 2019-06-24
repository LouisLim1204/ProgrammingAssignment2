## Put comments here that give an overall description of what your
## functions do
## This function are used to cache the inverse of a matrix functions

## Write a short comment describing this function
## This is used so create a a special inverse object that can cache its inverse

makeCacheMatrix <- function(x = matrix()){
  inverse <- null
  set <- function(y){
    x <<- y
    inverse <<- NULL
  }
  get  <- function() x
  setInverse <- function(InverseMatrix) inverse <<- InverseMatrix
  getInverse <- function() inverse
  list(set = set, get = get, setInverseMatrix = setInverse, getInverse = getInverse)
}

## Write a short comment describing this function
## This fucntion is used to calculate the inverse of the special matrix returned by function makeCacheMatrix.
CacheSolve <- function(x, ...){
  inverse <- x$getInverse()
  if(!is.null(inverse)){
      message("getting cached data")
    return(inverse)
  }
  data <- x$get()
  inverse <- InverseMatrix(data, ...)
  x$setInverse(inverse)
  inverse
}
