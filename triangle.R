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
