################# Basic###########################
x = 11
print(x)

y = 9
ls()

# remove y
rm(y)
y

y = 9
x.1 = 14
x.1

xx = 'marin'

yy = 1

z = x+y
z

x^2+y^2

sqrt(y)

y^1/2

log(y)

exp(y)

log2(y)

abs(-14)

x1 = c(1,3,5,7)
x1

seq(from=1, to=7, by=1)

#repeat
rep(1, times=10)

rep(1:3, times=5)

x = 1:10
x

x[1:3]

matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, byrow=FALSE)

matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, byrow=TRUE)

mat = matrix(c(1,2,3,4,5,6,7,8,9), nrow =3, byrow=TRUE)

mat[2,]

# dimension of data
dim(mat)

mean(mat)

# from df variable can be called by df$var

class(mat)

summary(mat)

length(mat)

levels(mat)

# cbind to combine 2 matrix

# rbind to bind 2 columns

# save.image("firstdata.Rdata")

# attach the data  attach()

tapply(X=mat, INDEX= 8, FUN=mean, simplify=TRUE)

?tapply

df = read.csv("Auto.csv")
table(df$cylinders) # getting frequency

count = table(df$cylinders)

percent = table(df$cylinders)/397 # getting frequency

# barchart
barplot(count)

barplot(percent, main="Cylinders", xlab="cylinders", ylab="%")

barplot(percent, main="Cylinders", xlab="%", ylab="cylinders", horiz=T)

# pie chart
pie(percent, main='cylinders')
box()

# boxplot
boxplot(count)

quantile(df$weight, probs=c(0, 0.25, 0.5, 0.75, 1))

boxplot(df$mpg ~ df$cylinders)

boxplot(df$cylinders==4, df$cylinders==8)

# histogram
hist(df$cylinders, main="Cylinders", xlab="cylinders", ylab="%")
lines(density(df$cylinders))

# mosaic plot
mosaicplot(df$origin)

# correlation
cor(df$cylinders, df$mpg)
plot(df$cylinders, df$mpg)
abline(lm(df$cylinders~df$mpg))

# variance
var(df$mpg)

#sd
sd(df$mpg)

#quantile
quantile(df$mpg)

# covariance
cov(df$mpg, df$cylinders)

summary(df)

# dpois, p of getting a value
dpois(x=4, lambda=7)

# applying binomial theorem:  with P(X=3)

dbinom(x=3, size=20, prob=1/6)

dbinom(x=0:3, size=20, prob=1/6)

sum(dbinom(x=0:3, size=20, prob=1/6))

pbinom(q=3, size=20,prob=1/6, lower.tail = T)

? rbinom

rbinom(n=3, size = 20, prob = 1/6)

# using poisson dist. p of 4 with rv=7
dpois(x=4, lambda = 7)

dpois(x=0:4, lambda = 7)

sum(dpois(x=0:4, lambda = 7))

# pnorm - normal distribution
pnorm(q=70, mean=75, sd=5, lower.tail = T)

x = seq(from=55, to=95, by=0.25)
x

d = dnorm(x, mean=75, sd=5)
plot(x, d, main="X-Normal: Mean=75, SD=5", xlab="x", ylab="Probability Density", las=1)
abline(v=75)

rand = rnorm(n=40, mean=75, sd=5)
hist(rand)

# student- test
# t-stat=2.3, df=25, one sided p-value, p(t>2.3)
pt(q=2.3, df=25, lower.tail = F)

# two-sided pvalue
pt(q=2.3, df=25, lower.tail = F) + pt(q=2.3, df=25, lower.tail = T)

# simple linear regression
plot(df$mpg, df$displacement)

cor(df$mpg, df$displacement)

# lr
mod = lm(displacement ~ mpg, data= df)
mod
summary(mod)
abline(mod)
  
mod1 = lm(displacement ~ ., data= df)
mod1
summary(mod1)
coef(mod1)

confint(mod1)

anova(mod1)

# Partial F-test for variable Selection

# Full model
mod_f = lm(displacement ~ ., data= df)

mod_p = lm(displacement ~ mpg + acceleration + cylinders + horsepower + year, data=df )

summary(mod_f)
summary(mod_p)

anova(mod_f)

anova(mod_p)

anova(mod_f, mod_p)

# polynomial regression

mod_s = lm(displacement ~ mpg, data=df)
summary(mod_s)

mod_pp = lm(displacement ~ poly(mpg, degree=2, raw=T), data=df)
summary(mod_pp)

anova(mod_s, mod_pp)