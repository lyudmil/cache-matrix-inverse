## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(matrixData = matrix()) {
  asMatrix <- function() {
    matrixData
  }

  inverse <- function() {
    solve(matrixData)
  }

  list(asMatrix = asMatrix, inverse = inverse)
}

## Write a short comment describing this function

cacheSolve <- function(cachingMatrix, ...) {
  cachingMatrix$inverse()
}
