#A manufacturer of pins knows that 2% of his products are defective. If he sells pins in boxes of 20 and
#find the number of boxes containing (i) at least 2 defective (ii) exactly 2 defective (iii) at most 2
#defective pins in a consignment of 1000 boxes (iv) plot the distribution (v) E(x) (vi) Variance of X?

p = 2/100
lamda = 20*p

round(1000*(1-ppois(1, lamda)))
round(1000*(dpois(2, lamda)))
round(1000*(ppois(2, lamda)))
x = c(0:20)
px = dpois(x, lamda)
plot(x, px, type="h")

Ex = weighted.mean(x, px)
Ex
var = weighted.mean(x*x, px) - weighted.mean(x, px)^2
var

#A company finds that the time taken by one of its engineers to complete or repair job has a normal
#distribution with mean 20 minutes and S.D 5 minutes. State what proportion of jobs take:
#  i. Less than 15 minutes
#ii.  More than 25 minutes
#iii. Between 15 and 25 minutes
#iv.  Plot the distribution
#v.   Table the distribution

p1 = pnorm(15, 20, 5)
p2 = 1-pnorm(25, 20, 5)
p3 = pnorm(25, 20, 5) - pnorm(15, 20, 5)

px = dnorm(0:40, 20, 5)
plot(0:40, px, type = "l")
polygon(c(0,0:15, 15), c(0,dnorm(0:15, 20, 5),0), col='red')
polygon(c(15, 15:25, 25), c(0,dnorm(15:25, 20, 5), 0), col="yellow")
polygon(c(25, 25:40, 40), c(0,dnorm(25:40, 20, 5), 0), col="green")
p1
p2
p3

df = data.frame(p1, p2, p3)


