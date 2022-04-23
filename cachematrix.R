<<<<<<< HEAD
## The Inverse of a Matrix Cache

## Provides a special inverse matrix object that can be cached.

makeCacheMatrix <- function(x = matrix()) {
      ## Set up the inverse property.
      opp <- NULL
      ## Matrix setting method
      set <- function(matrix){
        x <<- matrix
        opp <<- NULL
      }
      ## Matrix setting method
      get<-function() x
      ## The inverse of a matrix can be set in a variety of ways.
      setInverse <-function(inverse) opp <<- inverse
      ## The inverse of a matrix can be calculated in a variety of ways.
      getInverse <- function() opp
      ## Get a list of all the techniques available.
      list(set = set,get = get,setInverse = setInverse, getInverse = getInverse)
}


##Invert the specific matrix returned by "makeCacheMatrix" 
## in the previous paragraph The "cacheSolve" should obtain the inverse from the cache if the inverse ##has previously been calculated (and the matrix has not changed).
cacheSolve <- function(x, ...) {
      ## Return the inverse of 'x' as a matrix.
      opp <- x$getInverse()
      ##If the inverse is already set, return it.
      if(!is.null(opp)){
        message("getting cached data")
        return(opp)
      }
      ## Get the matrix from the item we're working with.
      data <-x$get()
      ## Using matrix multiplication, find the inverse.
      opp <- solve(data, ...) 
      ## Set the object's inverse.
      x$setInverse(opp)
      ## The matrix should be returned.
      opp
=======
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
>>>>>>> 8571e0888148f89880490894bc3261a89f692e09
}