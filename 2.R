empid=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
age=c(30,37,45,32,50,60,35,32,34,43,32,30,43,50,60)
gender=c(0,1,0,1,1,1,0,0,1,0,0,1,1,0,0)
status=c(1,1,2,2,1,1,1,2,2,1,2,1,2,1,2)
empinfo = data.frame(empid, age, gender, status)
empinfo
empinfo$gender=factor(empinfo$gender,labels=c("male","female")) 
empinfo$status=factor(empinfo$status,labels=c("staff","faculty"))
empinfo
male=subset(empinfo,empinfo$gender=="male")
plot(empinfo$age,type="l",main="Age of employees",xlab="empid",ylab="age in", col="blue")
tab1 = table(empinfo$gender)
tab2 = table(empinfo$gender, empinfo$status)
pie(tab1)
barplot(tab2, beside = T)
boxplot(empinfo$gender~empinfo$status, col=c('red','blue'))