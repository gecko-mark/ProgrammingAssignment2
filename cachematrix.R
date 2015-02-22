## Put comments here that give an overall description of what your
## functions do

## My function creates an object that will name the stored cache data
## produced by some time-consuming function (ie, an inverse matrix),
## and then allows that stored data to be retrieved, and so avoid the
## extensive wait-time that dupliating the original function (ie, the
## inverse matrix) is no longer required. The test case is to create
## and then recall an inverse matrix.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
         x <<- y
         m <<- NULL
     }
     get <- function() x
     setmean <- function(mean) m <<- mean
     getmean <- function() m
     list(set = set, get = get,
          setmean = setmean,
          getmean = getmean)
 }

cacheSolve <- function(x, ...) {
     m <- x$getmean()
     if(!is.null(m)) {
         message("getting cached data")
         return(m)
     }
     data <- x$get()
     m <- solve(data, ...)
     x$setmean(m)
     m
 }

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}
## This function has the action of creating a function to create a
## matrix and name it "makeCacheMatrix".

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
## This function has the action of creating a function using some object
## "x" and other arguments, and naming it "cacheSolve".