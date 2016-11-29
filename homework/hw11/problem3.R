set.seed(20141210)
n = 20
x = rnorm(n)
y = list()
y[[1]] = rnorm(n, x, 2  )
y[[2]] = rnorm(n, x,  .5)
y[[3]] = rnorm(n,-x, 2  )
y[[4]] = rnorm(n,-x,  .1)
part = paste(letters[1:4], ")", sep="")
pdf(file = "problem3.pdf")
opar = par(mfrow=c(2,2))
for (i in 1:4) {
  plot(x, y[[i]], ylab="y")
  abline(lm(y[[i]]~x), col="red")
  legend("topleft", part[i])
}
dev.off()
