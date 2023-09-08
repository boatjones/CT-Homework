# Exercise #1
> x <- c(5)
> y <- c(20)
> z <- c(73)
> x + y
[1] 25
> y - x
[1] 15
> y * x
[1] 100
> z / x
[1] 14.6
> y ^ x
[1] 3200000
#
# Exercise #2
> first <- c('Randall')
> last <- c('Thomas')
> full_name <- paste(first, last, sep="")
> full_name
[1] "RandallThomas"
> full_name <- paste(first, last, sep=" ")
> full_name
[1] "Randall Thomas"
> print("My name is " + full_name)
Error in "My name is " + full_name : 
  non-numeric argument to binary operator
> print(paste("My name is", full_name, sep=" "))
[1] "My name is Randall Thomas"
#
# Exercise #3
> vector1 <- c(1,2,3,4,5)
> vector2 <- c(5,4,3,2,1)
> multi_vect <- vector1 * vector2
> multi_vect
[1] 5 8 9 8 5
#
# Exercise #4
> multi_vect[2:4]
[1] 8 9 8
> multi_vect[2:5]
[1] 8 9 8 5
#
# Exercise #5
> my_first_sequence <- 2 * 1:15
> my_first_sequence
[1]  2  4  6  8 10 12 14 16 18 20 22 24 26 28 30

