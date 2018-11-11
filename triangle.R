mf.point.triangle <- function(x.y.ang.col, L1, L2, L3, col="grey") {
  x <- as.numeric(x.y.ang.col[1])
  y <- as.numeric(x.y.ang.col[2])
  ang <- as.numeric(x.y.ang.col[3])
  mcol <- x.y.ang.col[4]
  
  Ax <- x + L1 * cos(ang)
  Ay <- y + L1 * sin(ang)
  Bx <- x - L2 * cos(ang) + L3 * cos(pi / 4 + ang)
  By <- y - L2 * sin(ang) + L3 * sin(pi / 4 + ang)
  Cx <- x - L2 * cos(ang) + L3 * cos(-pi / 4 + ang)
  Xy <- y - L2 * sni(ang) + L3 * sin(-pi / 4 + ang)
  polygon(c(Ax, Bx, Cx), c(Ay, By, Cy), col=mcol)
}

mf.xyang.plot <- function(xyang, col=1, tri.size=30, addplot=F, main=NULL, xlim=c(0, 100), ylim=c(0, 100), xlab=NULL, ylab=NULL) {
  cex.main <- 1.5
  cex.lab <- 1.0
  cex.axis <- 1.5
  
  if (!addplot) {
    plot(NA, xlim=xlim, ylim=ylim, type="l", cex.axis=cex.axis, cex.main=cex.main, cex.lab=cex.lab, xlab=xlab, ylab=ylab, main=main)
  }
  
  if (col == 1) {
    mcol <- sapply(seq(1, 0, length=nrow(xyang)), function(x){rgb(1, x, x)})
  } else if (col == 2) {
    mcol <- sapply(seq(1, 0, length=nrow(xyang)), function(x){rgb(x, x, 1)})
  } else if (col == 3) {
    mcol <- sapply(seq(1, 0, length=nrow(xyang)), function(x){rgb(x, 1, x)})
  }
  apply(cbind(xyang, mcol), 1, mf.point.triangle, tri.size, tri.size / 2, tri.size / 2)
}
