source("cachematrix.R")

test.cacheSolveReturnsTheInverseOfTheMatrixGivenToIt <- function() {
  expectedInverse = "value returned from inverse method"
  fakeCachingMatrix = list(inverse = function() expectedInverse)

  checkEquals(expectedInverse, cacheSolve(fakeCachingMatrix))
}

test.makeCacheMatrixReturnsAnObjectThatCanCalculateItsInverse <- function() {
  a = matrix(c(1, 0, 5, 2, 1, 6, 3, 4, 0), nrow = 3, ncol = 3)
  expectedInverse = matrix(c(-24, 20, -5, 18, -15, 4, 5, -4, 1), nrow = 3, ncol = 3)

  cachingMatrix = makeCacheMatrix(a)

  checkEquals(expectedInverse, cachingMatrix$inverse())
  checkEquals(a, cachingMatrix$asMatrix())
}
