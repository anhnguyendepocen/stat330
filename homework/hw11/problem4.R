set.seed(20141210)
n = 20
x = rnorm(n)
y = rnorm(n, x)
write.csv(data.frame(x=x,y=y), file="problem4.csv", row.names=FALSE)


d = read.csv("problem4.csv")
(m = lm(y~x, d))
summary(m)