#To run it, type Rscript binomial_distribution

#Binomial distribution
#the number of sucess, the number of trials, and the success probability for each trial

x <- 0:20
y <- dbinom(x, 20, 0.5)
png(file = "dbinom0_5.png")
barplot(y, names.arg=x, space=0, main =  paste("Probability p = ", 0.50), cex.lab=1.5, cex.axis=1.5, cex.main=1.8, cex.sub=2.0, cex.names=1.5)





