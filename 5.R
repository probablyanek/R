n = 4
p = 0.2
dbinom(2,n, p)
sum(dbinom(2:4, n, p))
1-pbinom(1, n, p)
x = 0:n
px = dbinom(x, n, p)
Ex = weighted.mean(x, px)
var = weighted.mean(x*x, px) - (weighted.mean(x, px))^2
var
plot(x,px,type="h",xlab="values of x",ylab="Probability distribution of
x",main="Binomial distribution")
# (viii) How many heads will have a probability of 0.25 will come out when a coin is tossed 51 times?
qbinom(0.0256,4,1/2)

# Find 8 random values from a sample of 150 with probability of 0.4.
x <- rbinom(8,150,.4)