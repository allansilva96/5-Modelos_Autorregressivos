> library(readxl)
> library(urca)
> 
  > library(readxl)
> IPCA <- read_excel("C:/Econometria/IPCA.xls")
> View(IPCA)
> infla��o <- td(IPCA,start=2008-01,frequency=12)
Error in td(IPCA, start = 2008 - 1, frequency = 12) : 
  could not find function "td"
> infla��o <- ts(IPCA,start=2008-01,frequency=12)
> infla��o <- infla��o[,-1]
> view(infla��o)
Error in view(infla��o) : could not find function "view"
> View(infla��o)
> TesteDF <- summary(ur.df(infla��o, type="none",lags=0))
> acf(IPCA$IPCA, main= "Infla��o Mensal")
> AR1 <- arima(infla��o, order=c(1,0,0))
> arima(x=infla��o, order=c(1,0,0))