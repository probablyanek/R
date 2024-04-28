# Problem : 1
# Goodness of fit
# Number of coins
n=5
n
alpha=0.05
alpha
N=256 # Total number of tosses
N
P = 0.5 # probability of getting head
P
x = c(0:n);x
obf = c(5,35,75,84,45,12)# observed frequencies
obf
exf = (dbinom(x,n,P)*256) # expected frequencies
exf
# check the condition if the observed and expected frequencies sum are equal
sum(obf)
sum(exf)
# output using Chisq-distribution
chisq<-sum((obf-exf)^2/exf)
cv = chisq;cv
# critical value using Chisq-distribution
tv = qchisq(1-alpha,n);tv
# Hypothesis conclusion
if(cv <= tv){print("Accept H0/Fit is good")} else{print("Reject H0/Fit is not
good")}



# Problem : 2
# Independent of attributes
# Input the data
data<-matrix(c(69,51,81,20,35,44),ncol=2,byrow=T)
data
# number of data
l=length(data);l
# output by Chisq-distribution
cv=chisq.test(data)
cv
# p-value
cv=cv$p.value
cv
# Hypothesis conclusion
if(cv >alpha){print("Attributes are independent")} else{print("Attributes are
not independent")}
