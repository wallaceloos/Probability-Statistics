eixo = c(-1:1)
eixoO = rep(0, 3)

S = matrix( 
   c(1/sqrt(2), 1/sqrt(2), 1/sqrt(2), -1/sqrt(2)), # the data elements 
   nrow=2,              # number of rows 
   ncol=2,              # number of columns 
   byrow = TRUE)        # fill matrix by rows 

#ellipse
t = seq(0,2*pi, length=500)
x0 = 0
y0 = 0
a = 1/3
b = 1

x = x0 + a*cos(t)
y = y0 + b*sin(t)


X = rbind(x,y)
SX = S %*% X


xlinha = SX[1, ]
ylinha = SX[2, ]

png(filename="result.png")
plot(eixo, eixoO, type="l", col="black", xlim=c(-1,1), ylim=c(-1,1), xlab = " ", ylab = " ", axes=TRUE, lwd=4)
par(new=TRUE)
plot(eixoO, eixo, type="l", col="black", xlab = " ", ylab = " ", axes=FALSE, lwd=4)

par(new=TRUE)
plot(x, y, type="l", xlim=c(-1,1), ylim=c(-1,1), col="blue", lwd=4)
par(new=TRUE)
plot(xlinha, ylinha, xlim=c(-1,1), ylim=c(-1,1), col="red", xlab = " ", ylab = " ", axes=FALSE, type="l", lwd=4)

