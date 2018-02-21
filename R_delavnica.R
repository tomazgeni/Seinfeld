# Power BI  delavnica
# GENI


props <- function(ncol, nrow, var.names=NULL){
  if (ncol < 2) stop("ncol must be greater than 1")
  p <- function(n){
    y <- 0
    z <- sapply(seq_len(n-1), function(i) {
      x <- sample(seq(0, 1-y, by=.01), 1)
      y <<- y + x
      return(x)
    }
    )
    w <- c(z , 1-sum(z))
    return(w)
  }
  DF <- data.frame(t(replicate(nrow, p(n=ncol))))
  if (!is.null(var.names)) colnames(DF) <- var.names
  return(DF)
}


#props(ncol=5, nrow=5)                                      
#props(ncol=3, nrow=25)                                     
ds <- props(ncol=5, nrow=25, var.names=c("borg", "seinfeld","douglas_adams","slayer", "flafla"))

cor(ds, use="complete.obs", method="kendall")


#ploting table
library(gridExtra)
res <- cor(dataset, use="complete.obs", method="kendall")
grid.table(res)



# time series
Z<-rnorm(1000)
Y<-rep(NA,1000)
a <- runif(p)
b <- runif(q)

for(i in (max(p,q)+1):1000) {
  Y[i] <- a*Y[i-(1:p)]+c(1,b)*Z[i-(0:q)]
}
