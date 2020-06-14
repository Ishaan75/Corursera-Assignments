## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## take temp NULL
  temp <- NULL
  #making a function set having one argument
  set <- function(y){
    x <<- y
    temp <<- NULL
  }
  #making a function get
  get <- function()x
  setInverse <- function(inverse) temp <<- inverse
  getInverse <- function() temp
  ## creating a list
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  temp <- x$getInverse()
  #checking that temp is not null
  if(!is.null(temp)){
    message("getting cached data")
    return(temp)
  }
  mat <- x$get()
  temp <- solve(mat,...)
  x$setInverse(temp)
  temp
}
