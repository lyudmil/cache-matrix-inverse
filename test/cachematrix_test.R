source("cachematrix.R")

.setUp <- function() {
  a <<- matrix(c(1, 0, 5, 2, 1, 6, 3, 4, 0), nrow = 3, ncol = 3)
  inverseOfA <<- matrix(c(-24, 20, -5, 18, -15, 4, 5, -4, 1), nrow = 3, ncol = 3)
}

test.cacheSolveReturnsTheInverseOfTheMatrixGivenToIt <- function() {
  expectedInverse = "value returned from inverse method"
  fakeCachingMatrix = list(inverse = function() expectedInverse)

  checkEquals(expectedInverse, cacheSolve(fakeCachingMatrix))
}

test.makeCacheMatrixReturnsAnObjectThatCanCalculateItsInverse <- function() {
  cachingMatrix <- makeCacheMatrix(a)

  checkEquals(inverseOfA, cachingMatrix$inverse())
  checkEquals(a, cachingMatrix$asMatrix())
}

test.matrixInversesGetCached <- function() {
  numberOfTimesInverceCalculated <- 0
  mockInvert <- function(x) {
    numberOfTimesInverceCalculated <<- numberOfTimesInverceCalculated + 1
    solve(x)
  }

  cachingMatrix <- makeCacheMatrix(a, invertMatrix = mockInvert)

  checkEquals(0, numberOfTimesInverceCalculated)
  checkEquals(inverseOfA, cachingMatrix$inverse())
  checkEquals(1, numberOfTimesInverceCalculated)

  checkEquals(inverseOfA, cachingMatrix$inverse())
  checkEquals(1, numberOfTimesInverceCalculated)

  checkEquals(inverseOfA, cachingMatrix$inverse())
  checkEquals(1, numberOfTimesInverceCalculated)
}
