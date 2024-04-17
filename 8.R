# Exp 8
# In a random sample of size 500, the mean is found to be 20. In another independent sample of
# size 400, the mean is 15. Could the samples have been drawn from the same population with
# S.D 4?

xbar=20
xbar
ybar=15
ybar
sigma=4
sigma
n1=500
n1
n2=400
n2
z=(xbar-ybar)/(sigma*sqrt((1/n1)+(1/n2)))
z
alpha=0.05
alpha
zalpha=qnorm(1-(alpha/2))
zalpha
if(z<=zalpha){print("Accept Null hypothesis")} else{print("Reject Null
hypothesis")}

# In a large city A, 20% of a random sample of 900 schools boys had a slight physical defect. In
# another large city B, 18.5% of a random sample of 1600 school boys had the same defect. Is the
# difference between the proportions significant?


p1=0.20
p1
p2=0.185
p2
n1=900
n1
n2=1600
n2
P=(n1*p1+n2*p2)/(n1+n2)
P
Q=1-P
z=(p1-p2)/sqrt(P*Q*((1/n1)+(1/n2)))
z
alpha=0.05
alpha
zalpha=qnorm(1-(alpha/2)) 
zalpha
if(z<zalpha){print("Accept Null hypothesis")} else{print("Reject Null
hypothesis")}
