f.location <- "./"
f.name <- "data.csv"
f.addr <- paste(f.location, f.name, sep="")
f.data <- read.csv(f.addr, head=T)