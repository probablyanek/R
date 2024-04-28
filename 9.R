# Problem 1
# input the data
sample1=c(19,17,15,21,16,18,16,14)
sample1
sample2=c(15,14,15,19,15,18,16,20)
sample2
t=t.test(sample1,sample2)
t
cv=t$statistic
cv
tv=qt(0.975,14)
tv
if(cv <= tv){print("Accept Ho")} else{print("Reject Ho")}


# Problem 2
#Paired- t-test
test1=c(19,17,15,21,16,18,16,14,19,20)
test1
test2=c(15,14,15,19,15,18,16,20,22,19)
test2
t=t.test(sample1,sample2,paired=TRUE)
t
alpha=0.05
tv=t$p.value
tv
if(tv >alpha){print("Accept Ho")} else{print("Reject Ho")}
