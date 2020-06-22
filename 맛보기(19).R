anscombe$x1
anscombe$y1

mean(anscombe$x1)
mean(anscombe$y1)

lm(y1~x1, data=anscombe)
lm(y2~x2, data=anscombe)

par(mfrow=c(1,2))
plot(anscombe$x1, anscombe$y2, col='red', pch=20)

abline(lm(y1-x1, data=anscombe))
plot(anscombe$x2, anscombe$y2)

