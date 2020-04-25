# function

cubes <- function(x)
{x^3}
cubes(3)

for (x in c("apples", "babanas", "oranges")) {
  print(x)
}

for (x in 1:3)
{
  y<-cubed(x)
}

# sapply and lapply
mycubes <- sapply (1:6,cubed)
mycubes[8]
lapply(1:6,cubed)



