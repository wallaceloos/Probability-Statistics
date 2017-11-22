x   <- seq(0,20,length=100)
y   <- dnorm(x,mean=10, sd=3)
jpeg('sigma3.jpg')
plot(x,y, type="l", lwd=4, bty="n",  main =  paste("Sigma = ", 3.0), cex.axis=1.5, cex.main=1.8 )
