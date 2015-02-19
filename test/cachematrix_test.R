source("cachematrix.R")

test.cacheSolveReturnsTheInverseOfTheMatrixGivenToIt <- function() {
  a = matrix(c(1, 0, 5, 2, 1, 6, 3, 4, 0), nrow = 3, ncol = 3)
  expectedInverse = matrix(c(-24, 20, -5, 18, -15, 4, 5, -4, 1), nrow = 3, ncol = 3)

  checkEquals(expectedInverse, cacheSolve(makeCacheMatrix(a)))
}
