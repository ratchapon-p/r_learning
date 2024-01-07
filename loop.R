


x <- rnorm(5)
x


for(j in 1:5){
  print(x[j])
}

#----------------------------------------2nd-Part-for-today

N <- 100000000
a <- rnorm(N)
b <- rnorm(N)

c <- a * b

d <- rep(NA, N)

for(i in 1:N){
  d[i] <- a[i] * b[i]
}

rep(1, 5)


