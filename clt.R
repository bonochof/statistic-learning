# Central Limit Theorem (CLT)

# Normal distribution
n.population <- 100000
mu.population <- 10
sd.population <- 1
population <- rnorm(n.population, mean=mu.population, sd=sd.population)
mu.population <- mean(population)
var.population <- var(population)
hist(population)
abline(v=mu.population, col="red", lwd=2)

# Uniform distribution
n.population <- 100000
min.population <- 0
max.population <- 20
population <- runif(n.population, min=min.population, max=max.population)
mu.population <- mean(population)
var.population <- var(population)
hist(population)
abline(v=mu.population, col="red", lwd=2)

# Exponential distribution
n.population <- 100000
rate.popu <- 0.1
population <- rexp(n.population, rate.popu)
mu.population <- mean(population)
var.population <- var(population)
hist(population)
abline(v=mu.population, col="red", lwd=2)

# Lognormal distribution
n.population <- 100000
mean.log.popu <- log(10)
sdlog.popu <- 1
population <- rlnorm(n.population, meanlog=mean.log.popu, sdlog=sdlog.popu)
mu.population <- mean(population)
var.population <- var(population)
hist(population)
abline(v=mu.population, col="red", lwd=2)

# Cauchy distribution
n.population <- 100000
location.popu <- 10
scale.popu <- 0.5
population <- rcauchy(n.population, location=location.popu, scale=scale.popu)
hist(population, freq=F)
abline(v=mu.population, col="red", lwd=2)