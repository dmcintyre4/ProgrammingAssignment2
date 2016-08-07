## Welcome to my R Programming Assignment. Please make yourself comfortable!
## These functions a pretty much the same as the functions in the example...
## Except they calculate the inverse of a matrix instead of the mean of a vector.
## Crazy right?

## Let's look into makeCacheMatrix first, shall we?
## It's full of "getters" and "setters" that get/set the value of the matrix
## and it's inverse.


makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## cacheSovle checks to see if the inverse has already been cached.
## If not, it knows what to do. It knows... too much.

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data.")
    
    return(i)
  }
  data <- x$get()
  i <- solve(data)
  x$setinverse(i)
  i
}
