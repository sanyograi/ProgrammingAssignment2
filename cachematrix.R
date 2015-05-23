## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
##Setting the matrix
    i <- NULL
    set <- function(y) {
    matrix <<- y
    i <<- NULL
  }
  
##Getting the Matrix
    get <- function()x

      
##Setting Inverse
    setInverse <- function(inverse) 
##storing inverse
    i <<- inverse
  
##Getting the inverse of the matric
    getInverse <- function() i
      ##return the inverse
    
    
##Lists
      list(set = set, get = get,
      setInverse = setInverse,
      getInverse = getInverse)
}


## Write a short comment describing this function
##cacheSolve: This function computes the inverse of the special "matrix" returned
##by makeCacheMatrix above. If the inverse has already been calculated 
##(and the matrix has not changed), 
##then the cachesolve should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()

## returns if the inverse has already been calculated 
  if(!is.null(m)){
        message("getting cached data")
        return(m)
  }
## getting the matrix
  data<- x$get()
##Commputing the inverse of a square matix 
  m<- solve(data)
##setting the inverse
  x$setInverse(m)

##returning a matrix that is the inverse of X
m
}
