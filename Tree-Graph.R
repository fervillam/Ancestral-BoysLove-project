if(!require("Rcpp")){
  install.packages("Rcpp")
  }
  
library(Rcpp)

png(file = 'Equal-BL-Trees.png')
par(mfrow=c(1,2))
plot.phylo(eq1, main = "2x2 Tree with equal BL"); nodelabels()
plot.phylo(eq2, main = "3x1 Tree with equal BL"); nodelabels()
dev.off()
