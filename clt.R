# Central Limit Theorem (CLT)
n.population <- 100000
mu.population <- 10
sd.population <- 1
population <- rnorm(n.population, mean=mu.population, sd=sd.population)
mu.population <- mean(population)
var.population <- var(population)
hist(population)
abline(v=mu.population, col="red", lwd=2)