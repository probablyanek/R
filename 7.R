#Suppose the food label on a cookie bag states that there is at most 2 grams of saturated fat
#in a single cookie. In a sample of 35 cookies, it is found that the mean amount of saturated
#fat per cookie is 2.1 grams. Assume that the population standard deviation is 0.25 grams.
#At 0.05 significance level, can we reject the claim on food label?
# Input the sample mean
xbar=14.6
xbar
mu0=15.4
mu0
sigma=2.5
sigma
n=35
n
z=(xbar-mu0)/(sigma/sqrt(n))
z
alpha=0.05
alpha
zhalfalpha=qnorm(1-(alpha/2))
zhalfalpha
c(-zhalfalpha,zhalfalpha)
pval=2*pnorm(z)
pval
if(pval>alpha){print("Accept Null hypothesis")} else{print("Reject Null
hypothesis")}



#The fatality rate of typhoid patients is believed to be 17.26%. In a certain year 640 patients suffering
#from typhoid were treated in a metropolitan hospital and only 63 patients died. Can you consider the
#hospital efficient?

n=640
n
Sprop=63/n
Sprop
Pprop=0.1726
Pprop
q=1-Pprop
q
z=(Sprop-Pprop)/sqrt(Pprop*q/n)
z
E=qnorm(.975)
c(-E,E)
Sprop+c(-E,E)*sqrt(Pprop*(1-Pprop)/n) ##
if(z>-E && z<E){print("Hospital is not efficient")} else{print("Hospital is
efficient")}