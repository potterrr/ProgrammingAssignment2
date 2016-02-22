## This script is revised by making 5 functions embeded in it.  These 5 functions have intuitive names.  
## makeMatrix has a set, get, setsolve and getsolve functions embeded.  The set function creates a new matrix.  
## The matrix must be a square matrix.
## This script is for Assignment 2.  
## There are several functions (makeCacheMatrix
## function has 5 functions embeded in it)

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




