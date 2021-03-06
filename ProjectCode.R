Fac0405 = read.delim(file.choose())
Fac0506 = read.delim(file.choose())
Fac0607 = read.delim(file.choose())
Fac0708 = read.delim(file.choose())
Fac0809 = read.delim(file.choose())
Fac0910 = read.delim(file.choose())
Fac1011 = read.delim(file.choose())
Fac1112 = read.delim(file.choose())
Fac1213 = read.delim(file.choose())
Fac1314 = read.delim(file.choose())
Fac0405r = na.omit(Fac0405)
install.packages("tapply")
Fac0506r = na.omit(Fac0506)
Fac0607r = na.omit(Fac0607)
Fac0708r = na.omit(Fac0708)
Fac0809r = na.omit(Fac0809)
Fac0910r = na.omit(Fac0910)
Fac1011r = na.omit(Fac1011)
Fac1112r = na.omit(Fac1112)
Fac1213r = na.omit(Fac1213)
Fac1314r = na.omit(Fac1314)
numberoffaculty = c(374,399,411,401,409,367,376,378,398,405)
years = c(2004,2005,2006,2007,2008,2009,2010,2011,2012,2013)
avgbytermdegdept0506 = tapply(Fac0506r$B.A.to.Terminal,Fac0506r$Department,mean)
avgage0405 = with(Fac0405r,mean(Age))
minage0405 = with(Fac0405r,min(Age))
maxage0405 = with(Fac0405r,max(Age))
hist0405 = with(Fac0405r,hist(Age, main = "Faculty Age of Williams Professors 2004-2005",ylab = "Number of Professors",ylim=c(0,70),xlim=c(15,85),las=2,col=topo.colors(12),breaks=10))
hist0506 = with(Fac0506r,hist(Age, main = "Faculty Age of Williams Professors 2005-2006",ylab = "Number of Professors",ylim=c(0,70),xlim=c(20,90),las=2,col=cm.colors(12)))
hist0607 = with(Fac0607r,hist(Age, main = "Faculty Age of Williams Professors 2006-2007",ylab = "Number of Professors",ylim=c(0,70),xlim=c(20,90),las=2,col=cm.colors(12)))
hist0708 = with(Fac0708r,hist(Age, main = "Faculty Age of Williams Professors 2007-2008",ylab = "Number of Professors",ylim=c(0,70),xlim=c(20,90),las=2,col=terrain.colors(12)))
hist0809 = with(Fac0809r,hist(Age, main = "Faculty Age of Williams Professors 2008-2009",ylab = "Number of Professors",ylim=c(0,60),xlim=c(20,90),las=2,col=rainbow(12)))
hist0910 = with(Fac0910r,hist(Age, main = "Faculty Age of Williams Professors 2009-2010",ylab = "Number of Professors",ylim=c(0,70),xlim=c(20,90),las=2,col=cm.colors(12)))
hist1011 = with(Fac1011r,hist(Age, main = "Faculty Age of Williams Professors 2010-2011",ylab = "Number of Professors",ylim=c(0,70),xlim=c(20,100),las=2,col=topo.colors(12)))
hist1112 = with(Fac1112r,hist(Age, main = "Faculty Age of Williams Professors 2011-2012",ylab = "Number of Professors",ylim=c(0,70),xlim=c(20,100),las=2,col=terrain.colors(12)))
hist1213 = with(Fac1213r,hist(Age, main = "Faculty Age of Williams Professors 2012-2013",ylab = "Number of Professors",ylim=c(0,70),xlim=c(20,100),las=2,col=heat.colors(12)))
hist1314 = with(Fac1314r,hist(Age, main = "Faculty Age of Williams Professors 2013-2014",ylab = "Number of Professors",ylim=c(0,70),xlim=c(20,80),las=2,col=rainbow(12)))
avgage0506 = with(Fac0506r,mean(Age))
minage0506 = with(Fac0506r,min(Age))
maxage0506 = with(Fac0506r,max(Age))
avgbydept0405 = tapply(Fac0405r$Age,Fac0405r$Department,mean)
avgbydept0506 = tapply(Fac0506r$Age,Fac0506r$Department,mean)
bpd0405 = barplot(avgbydept0405,main="Average Age of Faculty by Department 2004-2005",ylab="Age",las=2,ylim=c(0,70),col=rainbow(42))
bpd0506 = barplot(avgbydept0506,main="Average Age of Faculty by Department 2005-2006",ylab="Age",las=2,ylim=c(0,70),col=rainbow(42))
avgbygender0405 = tapply(Fac0405r$Age,Fac0405r$Gender,mean)
bpg0405 = barplot(avgbygender0405,main="Average Age of Faculty by Gender 2004-2005",ylab="Age",las=2,ylim=c(0,50),col=rainbow(2))
avgbygender0506 = tapply(Fac0506r$Age,Fac0506r$Gender,mean)
bpg0506 = barplot(avgbygender0506,main="Average Age of Faculty by Gender 2005-2006",ylab="Age",las=2,ylim=c(0,50),col=rainbow(2))
avgbytermd0405 = tapply(Fac0405r$Age,Fac0405r$Year.of.Terminal,mean)
avgbytermdegdept0405 = tapply(Fac0405r$B.A.to.Terminal,Fac0405r$Department,mean)
bptd0405 = barplot(avgbytermdegdept,main="Average Time Between Bachelers and Terminal Degree by Department 2004-2005",ylab="Age",las=2,ylim=c(0,20),col=rainbow(42))
bptd0506 = barplot(avgbytermdegdept0506,main="Average Time Between Bachelers and Terminal Degree by Department 2005-2006",ylab="Age",las=2,ylim=c(0,20),col=rainbow(42))
bpovertime = barplot(numberoffaculty,names.arg=years,xlab="Year",ylab="Number of Faculty", main="Number of Faculty Over Time(Disclaimer about Library)",ylim=c(0,500))
avgage0607 = with(Fac0607r,mean(Age))
minage0607 = with(Fac0607r,min(Age))
maxage0607 = with(Fac0607r,max(Age))
avgbydept0607 = tapply(Fac0607r$Age,Fac0607r$Department,mean)
bpd0607 = barplot(avgbydept0607,main="Average Age of Faculty by Department 2006-2007",ylab="Age",las=2,ylim=c(0,80),col=rainbow(42))
avgbygender0607 = tapply(Fac0607r$Age,Fac0607r$Gender,mean)
bpg0607 = barplot(avgbygender0607,main="Average Age of Faculty by Gender 2006-2007",ylab="Age",las=2,ylim=c(0,50),col=rainbow(2))
avgbytermdegdept0607 = tapply(Fac0607r$B.A.to.Terminal,Fac0607r$Department,mean)
bptd0607 = barplot(avgbytermdegdept0607,main="Average Time Between Bachelers and Terminal Degree by Department 2006-2007",ylab="Age",las=2,ylim=c(0,20),col=rainbow(42))
avgagebytermd0405 = tapply(Fac0405r$Age,Fac0405r$Year.of.Terminal,mean)
avgagebytermd0506 = tapply(Fac0506r$Age,Fac0506r$Year.of.Terminal,mean)
avgagebytermd0607 = tapply(Fac0607r$Age,Fac0607r$Year.of.Terminal,mean)
bptd0607 = barplot(avgbytermdegdept0607,main="Average Time Between Bachelers and Terminal Degree by Department 2006-2007",ylab="Age",las=2,ylim=c(0,20),col=rainbow(42))
bptdage0607 = barplot(avgagebytermd0607,main="Average Age of Faculty by Year of Terminal Degree 2006-2007",ylab="Average Age",las=2,ylim=c(0,90),col=rainbow(48))
bptdage0405 = barplot(avgagebytermd0405,main="Average Age of Faculty by Year of Terminal Degree 2004-2005",ylab="Average Age",las=2,ylim=c(0,100),col=rainbow(48))
bptdage0506 = barplot(avgagebytermd0506,main="Average Age of Faculty by Year of Terminal Degree 2005-2006",ylab="Average Age",las=2,ylim=c(0,100),col=rainbow(48))
sumage0405 = with(Fac0405r,summary(Age))
boxplotage0405 = with(Fac0405r,boxplot(Age,xlim=c(0,90),horizontal=TRUE,xlab="Age"))
boxplotage0506 = with(Fac0506r,boxplot(Age,ylim=c(0,100),ylab="Age",col="sienna"))
boxplotage0607 = with(Fac0607r,boxplot(Age,ylim=c(0,100),ylab="Age",col="sienna"))
boxplotage0708 = with(Fac0708r,boxplot(Age,ylim=c(0,100),ylab="Age",col="sienna"))
boxplotage0809 = with(Fac0809r,boxplot(Age,ylim=c(0,100),ylab="Age",col="sienna"))
boxplotage0910 = with(Fac0910r,boxplot(Age,ylim=c(0,100),ylab="Age",col="sienna"))
boxplotage1011 = with(Fac1011r,boxplot(Age,ylim=c(0,100),ylab="Age",col="sienna"))
boxplotage1112 = with(Fac1112r,boxplot(Age,ylim=c(0,100),ylab="Age",col="sienna"))
boxplotage1213 = with(Fac1213r,boxplot(Age,ylim=c(0,100),ylab="Age",col="sienna"))
boxplotage1314 = with(Fac1314r,boxplot(Age,ylim=c(0,100),ylab="Age",col="sienna"))
sumage0506 = with(Fac0506r,summary(Age))
sumage0607 = with(Fac0607r,summary(Age))
sumage0708 = with(Fac0708r,summary(Age))
sumage0809 = with(Fac0809r,summary(Age))
sumage0910 = with(Fac0910r,summary(Age))
sumage1011 = with(Fac1011r,summary(Age))
sumage1112 = with(Fac1112r,summary(Age))
sumage1213 = with(Fac1213r,summary(Age))
sumage1314 = with(Fac1314r,summary(Age))
avgage0708 = with(Fac0708r,mean(Age))
minage0708 = with(Fac0708r,min(Age))
maxage0708 = with(Fac0708r,max(Age))
avgbydept0708 = tapply(Fac0708r$Age,Fac0708r$Department,mean)
bpd0708 = barplot(avgbydept0708,main="Average Age of Faculty by Department 2007-2008",ylab="Age",las=2,ylim=c(0,80),col=rainbow(42))
avgbygender0708 = tapply(Fac0708r$Age,Fac0708r$Gender,mean)
bpg0708 = barplot(avgbygender0708,main="Average Age of Faculty by Gender 2007-2008",ylab="Age",las=2,ylim=c(0,50),col=rainbow(2))
avgbytermdegdept0708 = tapply(Fac0708r$B.A.to.Terminal,Fac0708r$Department,mean)
bptd0708 = barplot(avgbytermdegdept0708,main="Average Time Between Bachelers and Terminal Degree by Department 2007-2008",ylab="Age",las=2,ylim=c(0,20),col=rainbow(42))
avgagebytermd0708 = tapply(Fac0708r$Age,Fac0708r$Year.of.Terminal,mean)
bptdage0708 = barplot(avgagebytermd0708,main="Average Age of Faculty by Year of Terminal Degree 2007-2008",ylab="Average Age",las=2,ylim=c(0,100),col=rainbow(48))
avgage0809 = with(Fac0809r,mean(Age))
minage0809 = with(Fac0809r,min(Age))
maxage0809 = with(Fac0809r,max(Age))
avgbydept0809 = tapply(Fac0809r$Age,Fac0809r$Department,mean)
bpd0809 = barplot(avgbydept0809,main="Average Age of Faculty by Department 2008-2009",ylab="Age",las=2,ylim=c(0,80),col=rainbow(42))
avgbygender0809 = tapply(Fac0809r$Age,Fac0809r$Gender,mean)
bpg0809 = barplot(avgbygender0809,main="Average Age of Faculty by Gender 2008-2009",ylab="Age",las=2,ylim=c(0,50),col=rainbow(2))
avgbytermdegdept0809 = tapply(Fac0809r$B.A.to.Terminal,Fac0809r$Department,mean)
bptd0809 = barplot(avgbytermdegdept0809,main="Average Time Between Bachelers and Terminal Degree by Department 2008-2009",ylab="Age",las=2,ylim=c(0,20),col=rainbow(42))
avgagebytermd0809 = tapply(Fac0809r$Age,Fac0809r$Year.of.Terminal,mean)
bptdage0809 = barplot(avgagebytermd0809,main="Average Age of Faculty by Year of Terminal Degree 2008-2009",ylab="Average Age",las=2,ylim=c(0,100),col=rainbow(48))
avgage0910 = with(Fac0910r,mean(Age))
minage0910 = with(Fac0910r,min(Age))
maxage0910 = with(Fac0910r,max(Age))
avgbydept0910 = tapply(Fac0910r$Age,Fac0910r$Department,mean)
bpd0910 = barplot(avgbydept0910,main="Average Age of Faculty by Department 2009-2010",ylab="Age",las=2,ylim=c(0,80),col=rainbow(42))
avgbygender0910 = tapply(Fac0910r$Age,Fac0910r$Gender,mean)
bpg0910 = barplot(avgbygender0910,main="Average Age of Faculty by Gender 2009-2010",ylab="Age",las=2,ylim=c(0,50),col=rainbow(2))
avgbytermdegdept0910 = tapply(Fac0910r$B.A.to.Terminal,Fac0910r$Department,mean)
bptd0910 = barplot(avgbytermdegdept0910,main="Average Time Between Bachelers and Terminal Degree by Department 2009-2010",ylab="Age",las=2,ylim=c(0,20),col=rainbow(42))
avgagebytermd0910 = tapply(Fac0910r$Age,Fac0910r$Year.of.Terminal,mean)
bptdage0910 = barplot(avgagebytermd0910,main="Average Age of Faculty by Year of Terminal Degree 2009-2010",ylab="Average Age",las=2,ylim=c(0,100),col=rainbow(48))
avgage1011 = with(Fac1011r,mean(Age))
minage1011 = with(Fac1011r,min(Age))
maxage1011 = with(Fac1011r,max(Age))
avgbydept1011 = tapply(Fac1011r$Age,Fac1011r$Department,mean)
bpd1011 = barplot(avgbydept1011,main="Average Age of Faculty by Department 2010-2011",ylab="Age",las=2,ylim=c(0,80),col=rainbow(42))
avgbygender1011 = tapply(Fac1011r$Age,Fac1011r$Gender,mean)
bpg1011 = barplot(avgbygender1011,main="Average Age of Faculty by Gender 2010-2011",ylab="Age",las=2,ylim=c(0,60),col=rainbow(2))
avgbytermdegdept1011 = tapply(Fac1011r$B.A.to.Terminal,Fac1011r$Department,mean)
bptd1011 = barplot(avgbytermdegdept1011,main="Average Time Between Bachelers and Terminal Degree by Department 2010-2011",ylab="Age",las=2,ylim=c(0,15),col=rainbow(42))
avgagebytermd1011 = tapply(Fac1011r$Age,Fac1011r$Year.of.Terminal,mean)
bptdage1011 = barplot(avgagebytermd1011,main="Average Age of Faculty by Year of Terminal Degree 2010-2011",ylab="Average Age",las=2,ylim=c(0,100),col=rainbow(48))
avgage1112 = with(Fac1112r,mean(Age))
minage1112 = with(Fac1112r,min(Age))
maxage1112 = with(Fac1112r,max(Age))
avgbydept1112 = tapply(Fac1112r$Age,Fac1112r$Department,mean)
bpd1112 = barplot(avgbydept1112,main="Average Age of Faculty by Department 2011-2012",ylab="Age",las=2,ylim=c(0,80),col=rainbow(42))
avgbygender1112 = tapply(Fac1112r$Age,Fac1112r$Gender,mean)
bpg1112 = barplot(avgbygender1112,main="Average Age of Faculty by Gender 2011-2012",ylab="Age",las=2,ylim=c(0,60),col=rainbow(2))
avgbytermdegdept1112 = tapply(Fac1112r$B.A.to.Terminal,Fac1112r$Department,mean)
bptd1112 = barplot(avgbytermdegdept1112,main="Average Time Between Bachelers and Terminal Degree by Department 2011-2012",ylab="Age",las=2,ylim=c(0,20),col=rainbow(42))
avgagebytermd1112 = tapply(Fac1112r$Age,Fac1112r$Year.of.Terminal,mean)
bptdage1112 = barplot(avgagebytermd1112,main="Average Age of Faculty by Year of Terminal Degree 2011-2012",ylab="Average Age",las=2,ylim=c(0,100),col=rainbow(48))
avgage1213 = with(Fac1213r,mean(Age))
minage1213 = with(Fac1213r,min(Age))
maxage1213 = with(Fac1213r,max(Age))
avgbydept1213 = tapply(Fac1213r$Age,Fac1213r$Department,mean)
bpd1213 = barplot(avgbydept1213,main="Average Age of Faculty by Department 2012-2013",ylab="Age",las=2,ylim=c(0,80),col=rainbow(42))
avgbygender1213 = tapply(Fac1213r$Age,Fac1213r$Gender,mean)
bpg1213 = barplot(avgbygender1213,main="Average Age of Faculty by Gender 2012-2013",ylab="Age",las=2,ylim=c(0,60),col=rainbow(2))
avgbytermdegdept1213 = tapply(Fac1213r$B.A.to.Terminal,Fac1213r$Department,mean)
bptd1213 = barplot(avgbytermdegdept1213,main="Average Time Between Bachelers and Terminal Degree by Department 2012-2013",ylab="Age",las=2,ylim=c(0,20),col=rainbow(42))
avgagebytermd1213 = tapply(Fac1213r$Age,Fac1213r$Year.of.Terminal,mean)
bptdage1213 = barplot(avgagebytermd1213,main="Average Age of Faculty by Year of Terminal Degree 2012-2013",ylab="Average Age",las=2,ylim=c(0,100),col=rainbow(48))
avgage1314 = with(Fac1314r,mean(Age))
minage1314 = with(Fac1314r,min(Age))
maxage1314 = with(Fac1314r,max(Age))
avgbydept1314 = tapply(Fac1314r$Age,Fac1314r$Department,mean)
bpd1314 = barplot(avgbydept1314,main="Average Age of Faculty by Department 2013-2014",ylab="Age",las=2,ylim=c(0,80),col=rainbow(42))
avgbygender1314 = tapply(Fac1314r$Age,Fac1314r$Gender,mean)
bpg1314 = barplot(avgbygender1314,main="Average Age of Faculty by Gender 2013-2014",ylab="Age",las=2,ylim=c(0,60),col=rainbow(2))
avgbytermdegdept1314 = tapply(Fac1314r$B.A.to.Terminal,Fac1314r$Department,mean)
bptd1314 = barplot(avgbytermdegdept1314,main="Average Time Between Bachelers and Terminal Degree by Department 2013-2014",ylab="Age",las=2,ylim=c(0,15),col=rainbow(42))
avgagebytermd1314 = tapply(Fac1314r$Age,Fac1314r$Year.of.Terminal,mean)







