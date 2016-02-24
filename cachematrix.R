## This script is revised by making 5 functions embeded in it.  These 5 functions have intuitive names.  
## makeMatrix has a set, get, setsolve and getsolve functions embeded.  The set function creates a new matrix.  
## The matrix must be a square matrix.
## This script is for Assignment 2.  
## There are several functions (makeCacheMatrix
## function has 5 functions embeded in it)
## In order to test this function, these are examples of commands: 
## source('C:/D/working-docs/coursera/cachematrix.R')
## v <-- makeMatrix(matrix(c(1,2,3,4), nrow=2))
#  v$get()
##          [,1]  [,2]
##  [1, ]   1       3
##  [2, ]   2       4
## v$getsolve()
## NULL
## cachesolve(v)
##          [, 1]   [,2]
##  [1,]    -2      1.5
##  [2,]    1       -0.5
#v$getsolve()
##        [,1]    [,2]
## [1,]     -2      1.5
## [2,]     1       -0.5
## cachesolve(v)
## getting cached inverse
##      [, 1]   [,2]
##  [1,]    -2  1.5
##  [2,]    1   [-0.5]


makeMatrix <- function(x=matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list (set=set, get=get,
              setsolve=setsolve,
              getsolve=getsolve)
}
cachesolve <- function(x, ...) {
    m <- x$getsolve()
    if(!is.null(m)) {
        message("getting cached inverse")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setsolve(m)
    m
}




