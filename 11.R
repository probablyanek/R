#One-way ANOVA
# Types of tyres
A=c(36,37,42,38,47)
B=c(46,39,35,37,43)
C=c(35,42,37,43,38)
D=c(45,36,39,35,32)
E=c(41,39,37,35,38)
group<-data.frame(cbind(A,B,C,D,E))
group
summary(group)
# stack vector from data frame
stgr<-stack(group);stgr
# completely randomized design
crd<-aov(values~ind,data=stgr)
# ANOVA table
summary(crd)
# Visualization of data
boxplot(group, ylab="Average life of tyres in kilometers",main="Brands of
Tyres")


## Randomized Block Design


#Monthly sales of States
StateA=c(6,5,3,8)
StateA
StateB=c(8,9,6,5)
StateB
StateC=c(10,7,8,7)
StateC
#frame the data set
Group<-data.frame(cbind(StateA,StateB,StateC))
Group
Sales=c(t(as.matrix(Group))); Sales
f=c("State A","State B","State C")
f
g=c("Salesman1","Salesman2","Salesman3","Salesman4")
g
# number of columns
k=ncol(Group)
k
# number of rows
n=nrow(Group)
n
# Generate factor levels of States
States=gl(k,1,n*k,factor(f))
States
C
# Generate factor levels of Salesmen
Salesmen=gl(n,k,n*k,factor(g))
Salesmen
# ANOVA table
anova=aov(Sales ~ States + Salesmen)
summary(anova)



## Latin Sqr Design


#creating dataframes in R
manure=c(rep("manure1",1), rep("manure2",1), rep("manure3",1),
         rep("manure4",1), rep("manure5",1))
cultivation=c(rep("cultP",5), rep("cultQ",5), rep("cultR",5), rep("cultS",5),
              rep("cultT",5))
crop=c("P","T","R","Q","S", "R","Q","P","S","T", "Q","R","S","T","P",
       "S","P","T","R","Q", "T","S","Q","P","R")
freq=c(42,45,41,56,47, 47,54,46,52,49, 55,52,57,49,45, 51,44,47,50,54,
       44,50,48,43,46)
data=data.frame(cultivation,manure,crop,freq)
data
#recreating the original table, using the matrix function
matrix(data$crop,5,5)
matrix(data$freq,5,5)
#creating the anova table
fit=lm(freq~manure+cultivation+crop,data)
anova(fit)
