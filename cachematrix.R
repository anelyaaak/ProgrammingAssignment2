makeCacheMatrix <- function(x = matrix()) {
        ini <- NULL
        set <- function(y) {
                x <<- y
                ini <<- NULL
        }
        get <- function() x
        set Inverse <- function(inverse) ini <<- inverse
        getInverse <- function() inithome
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}



cacheSolve <- function(x, ...) {
       
        ini <- x$getInverse()
        if (!is.null(ini)) {
                message("getting cached data")
                return(ini)
        }
        mat <- x$get()
        ini <- solve(mat, ...)
        x$setInverse(ini)
        ini
}