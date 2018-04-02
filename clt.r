set.seed(3000)

randomdeviates<-rnorm(5000,145,40) #random population with mean 145 and std 40
png(file = "populacao.png")
hist(randomdeviates, main="Population", cex.axis=.8, xlab="Minutes", ylab=" ",  xlim=c(0,300), 45, cex.lab=1.5, cex.axis=1.5, cex.main=1.8)

#gaussian
png(file = "populacao_guassian.png")
xseq<-seq(0,300,.1)
densities<-dnorm(xseq, 145,40)
plot(xseq, densities, col="red",xlab="Minutes", ylab="", type="l", bty="n",lwd=4, main =  paste("Population"), cex.axis=1.5, cex.lab=1.5, cex.main=1.8)

#overlapped
png(file = "populacao_guassian_hist.png")
hist(randomdeviates, main="Population", cex.axis=.8, xlab="Minutes", ylab=" ",  axes = "FALSE", xlim=c(0,300), 45, cex.lab=1.5, cex.axis=1.5, cex.main=1.8)
par(new=TRUE)
plot(xseq, densities, col="red",xlab="Minutes", ylab="",  type="l", bty="n",lwd=4, main =  paste("Population"), cex.axis=1.5, cex.lab=1.5, cex.main=1.8)

