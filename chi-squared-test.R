# test of goodness of fit
vx <- c(58, 99, 32, 48)
chisq.test(x=vx, p=c(0.3, 0.5, 0.1, 0.1))

# test of independence
vx <- matrix(c(43, 20, 28, 15, 31, 11), nrow=2, byrow=T)
chisq.test(vx)