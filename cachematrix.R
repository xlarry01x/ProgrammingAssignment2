## Catching the Inverse of a Matrix

## makeCacheMatrix :This function creates a special matrix that can cache its inverse.

makeCacheMatrix <- function (x = matrix ()) {
   inv <- NULL
   set <- function (y) {
   x<<- y
   inv <<- NULL
 }
 get <- function() x
 
 setinv <- function (inverse) inv <<- inverse
 getinv <- function () inv
 
 list(set = set,
      get = get,
      setinv = setinv,
      getinv = getinv)
      
      
## IMPORTANT : The following function ALSO works in creating a special matris that can catch its Inverse.
## It is a simplified form that generates 3 x 3 matrix


makeCacheMatrix<-matrix(1:9, ncol = 3)

makeCacheMatrix
## CALL
        
## CacheSolve: This function computes the inverse of the special matrix returned by     
## makeCacheMatrix (see above). As the inverse has already been calculated (and the matrix has
## not changed) then the cacheSolve should retrieve the inverse from the cache.

cacheSolve:   <- function(x,...) {
inv <-x$getinv()
if(!is.null(inv)) {
message("getting cached data")
return(inv)
}
matrix <- x$get()
inv <- solve(matrix, ...) 
## Note this code using "solve"
x$setInv(inv)
inv

## IMPORTANT : The following function ALSO works in computing the inverse of the special matrix returned
## by makeCacheMatrix (see above). As the inverse has already been calculate (and the matrix has
## not changed) then the cacheSolve should retrieve the inverse from the cache
## You can use any of the two functions i.e. svd() or chol() instead of solve ().


cacheSolve <-svd(makeCacheMatrix)

cacheSolve
## CALL

cacheSolve<-chol (makeCacheMatrix)

cacheSolve
## CALL
                         
## END










