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
set.seed(1234)
x<-rnorm(1000,mean=1,sd=10)
casovna_vrsta <- data.frame(x)

plot(x, type = 'l')

set.seed(2908)
x<- ts(matrix(rnorm(8928),8928,1),start=(2017),frequency=8928)
x

# time series
library(chron)
t1 <- chron("1/1/2018","00:00:00")
t2 <- chron("1/8/2018","00:00:01")
deltat <- times("00:05:00")
date <- seq(t1,t2,by=times("00:05:00"))
frame <- data.frame(date,cas_vrsta=seq(10,100,length.out=2018))


myts <- ts(frame, start=c(2018, 1), end=c(2018, 2), frequency=12) 
plot(myts)

library(forecast)
forecast(auto.arima(frame, lambda = BoxCox.lambda(frame)), h =2)
forecast(frame,h=2)


install.packages("igraph")
