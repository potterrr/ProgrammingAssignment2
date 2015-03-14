## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
