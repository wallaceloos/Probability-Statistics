#cumulative probability 
x <- 0:20
p <- pbinom(x, 20, 0.25)
jpeg('cumulative25.jpg')
barplot(p, names.arg=x, space=0, main =  paste("Probability p = ", 0.25), cex.lab=1.5, cex.axis=1.5, cex.main=1.8, cex.sub=2.0, cex.names=1.5)
