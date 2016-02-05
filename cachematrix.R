## The first function creates a "special" matrix that gets the matrix and calculates the inverse of the matrix.
## The second matrix checks first to see if the inverse has already been found. if so it giveS that info 
##if not it finds it and sets it in the cache.



##This function creates a special matrix, gets the matrix sets the matrix gets the inverse and sets the inverse.

makeCacheMatrix <- function(x = matrix(data=x,nrow=1,ncol=1,byrow=FALSE,dimnames=NULL)) {
s <- NULL
        set <- function(y) {
                x <<- y
                s <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) s <<- solve
        getsolve <- function() s
        list(set = set, get = get,
             setsolve = setsolve,
 
            getsolve = getsolve)




}


##The second matrix checks first to see if the inverse has already been found. if so it give that info 
##if not it finds it and sets it in the cache.


cacheSolve <- function(x, ...) {
    s <- x$getsolve()
        if(!is.null(s)) {
                message("getting cached data")
                return(s)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$setsolve(s)
        s
  
  }
