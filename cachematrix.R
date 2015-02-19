## These functions provide a more performant way to invert matrices by 
## caching previously computed values.

## makeCacheMatrix turns a regular matrix into an object with an inverse() method
## The inverse() method on the returned object will only calculate the inverse the
## first time and cache the value. Any subsequent calls to inverse() will return
## the cached value without redoing the calculation.

## Parameters:
## (1) matrixData:    The matrix object to turn into a caching matrix.
## (2) invertMatrix:  The function that calculates the inverse.
##                    This is only used in unit tests in order to test the caching.
##                    Most callees should use the default, which is solve.

makeCacheMatrix <- function(matrixData = matrix(), invertMatrix = solve) {
  matrixInverse <- NULL

  # Return the initial data, which is just a matrix object.
  asMatrix <- function() { matrixData }

  # Check if we've already calculated the inverse.
  # Only do the calculation if we haven't. Otherwise return the cached inverse.
  inverse <- function() {
    if(!is.null(matrixInverse)) return(matrixInverse)
    matrixInverse <<- invertMatrix(matrixData)
  }

  list(asMatrix = asMatrix, inverse = inverse)
}

## cacheSolve inverts a matrix, caching its value.
## Since it expects to invert a caching matrix, it just delegates to its inverse() method.

## Parameters:
## (1) cachingMatrix: The matrix to inverse.
##                    This should be an object with an inverse() function that returns the matrix inverse.
##                    See makeCacheMatrix to find out how to easily construct such an object.

cacheSolve <- function(cachingMatrix) {
  cachingMatrix$inverse()
}
