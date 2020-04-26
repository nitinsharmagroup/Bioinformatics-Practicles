# functions 

function_name <- function(x) {Some_Command(x)}


# to simulate a coin toss 
sample(1:10,1)
sample(1:10,10, replace = TRUE) # Allows us to make more than 10 samples
sample(1:10,7, replace = TRUE) # simarlly 
sample(1:10,20, replace = TRUE) # To get 20 numbers between 1 and 10

# to save it as a function b
randomnumber <- function() { sample(1:10, 20, replace = TRUE)}
randomnumber()

# To find square of a number
x=20
x^2

square <- function(x) {x^2}
square(9)

cubes <- function(x) {x^3} # similarly to find cubes of a number
cubes(2)

power_of_4 <- function(x) {x^4} # similarly to find fourth of a number
power_of_4 (2)

square_root_of_number <- function(x) {x^(1/2)} # similarly to find square root of a number betwen 1 and 10
square_root_of_number (1:10)

square_root_of_number <- function(x) {sqrt(1:10)} # alternatively we could have tried that as well
square_root_of_number()

square_root_of_number <- function(x) {(1:10) ^ (1/2)} # alternatively we could have tried that as well
square_root_of_number()


# cubed sum
cubedsum <- function(x,y) {
  z <- cubed(x) + cubed(y)
  return(z)
}
cubedsum(12,14)

# Conditionals 
if (condition) { command ()}
2>1
if (2(>1) print("ok)")}
2<3
2==3
2!=3
a<- c(9,3,5)
a==9
a==c(9,3,5)

# Create an if statement to print OK if 9 is less than 10
if (9<10) { print ("ok")}

# If a number is negative, give a warning ("no negative number allowed")
x<-sample(-10:10,1)
if (x<0) {
  warning(" no negatives allowed")
} else {
  sqrt(x)
}


# A function to calculate you calculate the cubed root, throwing a warning for negative number?
cubedroot <- function(x) {
  if (x<0) { 
    warning("No negatives allowed")
  } else {
    x^(1/3)
  }
}
cubedroot(27)

# more the one condition
if (3>2 & 5>4) {print ("ok")}
if (3>2 | 5>10) {print ("ok")}

# loops
for (i in 1:5) {
  print(i^2)
}

# sapply
sapply(1:5, square)

# benefit over loops os the we can save the rusults
res <- sapply(1:5, square) 
res

# another examples, calculate the fisrt 10 cubes using sapply
res <- sapply(1:10, cubed)
res

# finding the cuberoot between 1 to 100 using sapply
res <- sapply(1:100, cubedroot)
res

# lappy
res <- lapply (1:10, cubedroot) 
res

#
cubesandroot <- function(x) {
  mycubes <- cubes(x)
  mycubesandroot <- cubedroot(x)
  result <- c(mycubes, mycubesandroot)
  return(result)
}
cubesandroot(3)

lapply(1:10, cubedroot) # gives output as list
sapply(1:10, cubedroot) # gives output as matrix

# apply
# margin is 1 for rows and 2 for columns
apply(x, margin, fun)

#
mat <-matrix(rbinom(100,50,0.8), nrow = 5)
mat

#
apply(mat, 1,median)

#
apply(mat, 2,median)

# use apply to calculate the mean of each column in this matix
apply(mat, 2,mean)

# replicate
randomnumber <- function() { sample(1:10, 1, replace = TRUE)}
randomnumber()
replicate(3, randomnumber())
mean(replicate(10, randomnumber()))
mean(replicate(1000000, randomnumber()))

