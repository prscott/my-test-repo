
#Q1: You roll a fair 6-sided dice iteratively until the sum of the dice rolls is greater than or equal to M.


m<-20
num.rolls<-vector()
val.rolls<-vector()
for(h in 1:100000){
  
  values<-vector()
  for (i in 1:m) {
    values[i]<-round(runif(n=1, min=1, max=6), digits=0)
    if(sum(values)>=m) break
  }
  
  val.rolls[h]<-sum(values)
  num.rolls[h]<-length(values)
  
}


#Average number of rolls
mean.num20<-mean(num.rolls); mean.num20
sd.num20<-sd(num.rolls);sd.num20


#Mean sum of the rolls
m.roll<-mean(val.rolls)
#mean sum of the rolls minus 20
sum.m20<-val.rolls-m
mean(sum.m20)
sd(sum.m20)



#Now with m=10000

m<-10000
num.rolls<-vector()
val.rolls<-vector()
for(h in 1:100000){
  
  values<-vector()
  for (i in 1:m) {
    values[i]<-round(runif(n=1, min=1, max=6), digits=0)
    if(sum(values)>=m) break
  }
  
  val.rolls[h]<-sum(values)
  num.rolls[h]<-length(values)
  
}


#Average number of rolls
mean.num10k<-mean(num.rolls); mean.num10k
sd.num10k<-sd(num.rolls);sd.num10k


#Mean sum of the rolls
m.roll<-mean(val.rolls)
#mean sum of the rolls minus 20
sum.m10k<-val.rolls-m
mean(sum.m10k)
sd(sum.m10k)