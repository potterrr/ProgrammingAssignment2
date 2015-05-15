## This script is for Assignment 2.  
## There are several functions (makeCacheMatrix
## function has 5 functions embeded in it)


makeCacheMatrix <- function(x = matrix()) {

}

makeVector <- function(x = numeric()) {         ## makeVector comes from rdpeng in the write up for Assignment2
        m <- NULL                               ## begins by setting the mean to NULL as a placeholder for a future value
        set <- function(y) {                    ## defines a function to set the vector, x, to a new vector, 
                                                ## y, and resets the mean, m, to NULL
                x <<- y                         ## <<- cause a search to be made through parent environments for an existing
                                                ## definition of the variable being assigned.
                m <<- NULL
        }
        get <- function() x                     ## returns the vector, x
        setmean <- function(mean) m <<- mean    ## sets the mean, m, to mean
        getmean <- function() m                 ##  returns the mean, m
        list(set = set, get = get,              ## returns the 'special vector' containing all of the functions just defined
             setmean = setmean,
             getmean = getmean)
}

## solve(x) inverts a matrix

cacheSolve <- function(x, ...) {
        ## solve(x) is the function that
	## creates the inverse
	solve(x)
}
x <- matrix(1:4, nrow=2, ncol=2)
print(x)
print(solve(x))
