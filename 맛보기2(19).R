x <- 1:12
y <- runif(n=12, min=70, max=80)
plot(x, log(y), ylim =c(0,100), type='l')
plot(x[1:4], y[1:4], ylim =c(65,85), type='l')


tyr0