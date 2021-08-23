setwd("C:/Users/Owner/Documents/Masters Program Data Science/DSC 630")
library(ggplot2)
library(gridExtra)

wait_meta <- read.csv('full_wait_meta_df.csv')
wait <- read.csv('wait_times_df.csv')
wait_2019 <- read.csv('wait_2019.csv')

#making datetime objects for time series analysis

wait$date <- as.Date(wait$date, format = '%Y-%m-%d')
wait_meta$date <- as.Date(wait_meta$date, format = '%Y-%m-%d')
wait_2019$date <- as.Date(wait_2019$date, format = '%Y-%m-%d')
wait_2019$datetime <- as.POSIXct(wait_2019$datetime)
wait$datetime <- as.POSIXct(wait$datetime, format = '%Y-%m-%d %H:%M')


#Plotting histograms and boxplots to check outliers and distribution

p1 <- ggplot(wait_meta, aes(X7dwarfs_Posted)) + geom_boxplot() +
  ggtitle('Wait Time Distribution') +
  theme(plot.title = element_text(hjust = 0.5,face = "bold", size = 10, color="blue"), 
        axis.text.x = element_text(face="bold", color="blue", angle = 45),
        axis.text.y = element_text(face="bold", color="blue"),
        axis.title.x = element_text(face="bold", color="blue"),
        axis.title.y = element_text(face="bold", color="blue"))

p2 <- ggplot(wait_meta, aes(X7dwarfs_Posted)) + geom_histogram(bins = 10) +
  ggtitle('Wait Time Distribution') +
  theme(plot.title = element_text(hjust = 0.5,face = "bold", size = 10, color="blue"), 
        axis.text.x = element_text(face="bold", color="blue", angle = 45),
        axis.text.y = element_text(face="bold", color="blue"),
        axis.title.x = element_text(face="bold", color="blue"),
        axis.title.y = element_text(face="bold", color="blue"))

p3 <- ggplot(wait_meta, aes(dino_Posted)) + geom_boxplot() +
  ggtitle('Wait Time Distribution') +
  theme(plot.title = element_text(hjust = 0.5,face = "bold", size = 10, color="blue"), 
        axis.text.x = element_text(face="bold", color="blue", angle = 45),
        axis.text.y = element_text(face="bold", color="blue"),
        axis.title.x = element_text(face="bold", color="blue"),
        axis.title.y = element_text(face="bold", color="blue"))

p4 <- ggplot(wait_meta, aes(dino_Posted)) + geom_histogram(bins = 10) +
  ggtitle('Wait Time Distribution') +
  theme(plot.title = element_text(hjust = 0.5,face = "bold", size = 10, color="blue"), 
        axis.text.x = element_text(face="bold", color="blue", angle = 45),
        axis.text.y = element_text(face="bold", color="blue"),
        axis.title.x = element_text(face="bold", color="blue"),
        axis.title.y = element_text(face="bold", color="blue"))

p5 <- ggplot(wait_meta, aes(everest_Posted)) + geom_boxplot() +
  ggtitle('Wait Time Distribution') +
  theme(plot.title = element_text(hjust = 0.5,face = "bold", size = 10, color="blue"), 
        axis.text.x = element_text(face="bold", color="blue", angle = 45),
        axis.text.y = element_text(face="bold", color="blue"),
        axis.title.x = element_text(face="bold", color="blue"),
        axis.title.y = element_text(face="bold", color="blue"))

p6 <- ggplot(wait_meta, aes(everest_Posted)) + geom_histogram(bins = 10) +
  ggtitle('Wait Time Distribution') +
  theme(plot.title = element_text(hjust = 0.5,face = "bold", size = 10, color="blue"), 
        axis.text.x = element_text(face="bold", color="blue", angle = 45),
        axis.text.y = element_text(face="bold", color="blue"),
        axis.title.x = element_text(face="bold", color="blue"),
        axis.title.y = element_text(face="bold", color="blue"))

p7 <- ggplot(wait_meta, aes(flight_Posted)) + geom_boxplot() +
  ggtitle('Wait Time Distribution') +
  theme(plot.title = element_text(hjust = 0.5,face = "bold", size = 10, color="blue"), 
        axis.text.x = element_text(face="bold", color="blue", angle = 45),
        axis.text.y = element_text(face="bold", color="blue"),
        axis.title.x = element_text(face="bold", color="blue"),
        axis.title.y = element_text(face="bold", color="blue"))

p8 <- ggplot(wait_meta, aes(flight_Posted)) + geom_histogram(bins = 10) +
  ggtitle('Wait Time Distribution') +
  theme(plot.title = element_text(hjust = 0.5,face = "bold", size = 10, color="blue"), 
        axis.text.x = element_text(face="bold", color="blue", angle = 45),
        axis.text.y = element_text(face="bold", color="blue"),
        axis.title.x = element_text(face="bold", color="blue"),
        axis.title.y = element_text(face="bold", color="blue"))

p9 <- ggplot(wait_meta, aes(navi_Posted)) + geom_boxplot() +
  ggtitle('Wait Time Distribution') +
  theme(plot.title = element_text(hjust = 0.5,face = "bold", size = 10, color="blue"), 
        axis.text.x = element_text(face="bold", color="blue", angle = 45),
        axis.text.y = element_text(face="bold", color="blue"),
        axis.title.x = element_text(face="bold", color="blue"),
        axis.title.y = element_text(face="bold", color="blue"))

p10 <- ggplot(wait_meta, aes(navi_Posted)) + geom_histogram(bins = 10) +
  ggtitle('Wait Time Distribution') +
  theme(plot.title = element_text(hjust = 0.5,face = "bold", size = 10, color="blue"), 
        axis.text.x = element_text(face="bold", color="blue", angle = 45),
        axis.text.y = element_text(face="bold", color="blue"),
        axis.title.x = element_text(face="bold", color="blue"),
        axis.title.y = element_text(face="bold", color="blue"))

p11 <- ggplot(wait_meta, aes(pirates_Posted)) + geom_boxplot() +
  ggtitle('Wait Time Distribution') +
  theme(plot.title = element_text(hjust = 0.5,face = "bold", size = 10, color="blue"), 
        axis.text.x = element_text(face="bold", color="blue", angle = 45),
        axis.text.y = element_text(face="bold", color="blue"),
        axis.title.x = element_text(face="bold", color="blue"),
        axis.title.y = element_text(face="bold", color="blue"))

p12 <- ggplot(wait_meta, aes(pirates_Posted)) + geom_histogram(bins = 10) +
  ggtitle('Wait Time Distribution') +
  theme(plot.title = element_text(hjust = 0.5,face = "bold", size = 10, color="blue"), 
        axis.text.x = element_text(face="bold", color="blue", angle = 45),
        axis.text.y = element_text(face="bold", color="blue"),
        axis.title.x = element_text(face="bold", color="blue"),
        axis.title.y = element_text(face="bold", color="blue"))

p13 <- ggplot(wait_meta, aes(rock_Posted)) + geom_boxplot() +
  ggtitle('Wait Time Distribution') +
  theme(plot.title = element_text(hjust = 0.5,face = "bold", size = 10, color="blue"), 
        axis.text.x = element_text(face="bold", color="blue", angle = 45),
        axis.text.y = element_text(face="bold", color="blue"),
        axis.title.x = element_text(face="bold", color="blue"),
        axis.title.y = element_text(face="bold", color="blue"))

p14 <- ggplot(wait_meta, aes(rock_Posted)) + geom_histogram(bins = 10) +
  ggtitle('Wait Time Distribution') +
  theme(plot.title = element_text(hjust = 0.5,face = "bold", size = 10, color="blue"), 
        axis.text.x = element_text(face="bold", color="blue", angle = 45),
        axis.text.y = element_text(face="bold", color="blue"),
        axis.title.x = element_text(face="bold", color="blue"),
        axis.title.y = element_text(face="bold", color="blue"))

p15 <- ggplot(wait_meta, aes(slinky_Posted)) + geom_boxplot() +
  ggtitle('Wait Time Distribution') +
  theme(plot.title = element_text(hjust = 0.5,face = "bold", size = 10, color="blue"), 
        axis.text.x = element_text(face="bold", color="blue", angle = 45),
        axis.text.y = element_text(face="bold", color="blue"),
        axis.title.x = element_text(face="bold", color="blue"),
        axis.title.y = element_text(face="bold", color="blue"))

p16 <- ggplot(wait_meta, aes(slinky_Posted)) + geom_histogram(bins = 10) +
  ggtitle('Wait Time Distribution') +
  theme(plot.title = element_text(hjust = 0.5,face = "bold", size = 10, color="blue"), 
        axis.text.x = element_text(face="bold", color="blue", angle = 45),
        axis.text.y = element_text(face="bold", color="blue"),
        axis.title.x = element_text(face="bold", color="blue"),
        axis.title.y = element_text(face="bold", color="blue"))

p17 <- ggplot(wait_meta, aes(space_Posted)) + geom_boxplot() +
  ggtitle('Wait Time Distribution') +
  theme(plot.title = element_text(hjust = 0.5,face = "bold", size = 10, color="blue"), 
        axis.text.x = element_text(face="bold", color="blue", angle = 45),
        axis.text.y = element_text(face="bold", color="blue"),
        axis.title.x = element_text(face="bold", color="blue"),
        axis.title.y = element_text(face="bold", color="blue"))

p18 <- ggplot(wait_meta, aes(space_Posted)) + geom_histogram(bins = 10) +
  ggtitle('Wait Time Distribution') +
  theme(plot.title = element_text(hjust = 0.5,face = "bold", size = 10, color="blue"), 
        axis.text.x = element_text(face="bold", color="blue", angle = 45),
        axis.text.y = element_text(face="bold", color="blue"),
        axis.title.x = element_text(face="bold", color="blue"),
        axis.title.y = element_text(face="bold", color="blue"))

p19 <- ggplot(wait_meta, aes(toy_Posted)) + geom_boxplot() +
  ggtitle('Wait Time Distribution') +
  theme(plot.title = element_text(hjust = 0.5,face = "bold", size = 10, color="blue"), 
        axis.text.x = element_text(face="bold", color="blue", angle = 45),
        axis.text.y = element_text(face="bold", color="blue"),
        axis.title.x = element_text(face="bold", color="blue"),
        axis.title.y = element_text(face="bold", color="blue"))

p20 <- ggplot(wait_meta, aes(toy_Posted)) + geom_histogram(bins = 10) +
  ggtitle('Wait Time Distribution') +
  theme(plot.title = element_text(hjust = 0.5,face = "bold", size = 10, color="blue"), 
        axis.text.x = element_text(face="bold", color="blue", angle = 45),
        axis.text.y = element_text(face="bold", color="blue"),
        axis.title.x = element_text(face="bold", color="blue"),
        axis.title.y = element_text(face="bold", color="blue"))
grid.arrange(p1, p3, p5, p7, p9, nrow = 3)
grid.arrange(p11, p13, p15, p17, p19, nrow = 3)
grid.arrange(p2, p4, p6, p8, p10, nrow = 3)
grid.arrange(p12, p14, p16, p18, p20, nrow = 3)


#linear regression model test run

wait_dt <- sort(sample(nrow(wait_meta), nrow(wait_meta)*.7))

wait_2019_dt <- sort(sample(nrow(wait_2019), nrow(wait_2019)*.7))

wait_meta_train<-wait_meta[wait_dt,]
wait_meta_test<-wait_meta[-wait_dt,]

wait_2019_train<-wait_meta[wait_2019_dt,]
wait_2019_test<-wait_meta[-wait_2019_dt,]

wait_2019_7dwarfs_lm <- lm(X7dwarfs_Posted ~ WDW_TICKET_SEASON + DAYOFWEEK + date + 
                           MONTHOFYEAR, wait_2019_train)
summary(wait_2019_7dwarfs_lm)

wait_2019_7d <- data.frame(wait_2019$date, wait_2019$X7dwarfs_Posted)
wait_2019_7d <- na.omit(wait_2019_7d) 


#time series analysis work

library(forecast)
class(wait_2019_7d)

library(xts)
library(tseries)
#wait_2019_7d_ts <- xts(wait_2019_7d$wait_2019.X7dwarfs_Posted, as.Date(wait_2019_7d$wait_2019.date, format='%m/%d/%Y'))
wait_2019_7d_ts <- xts(wait_2019_7d[,-1],order.by=wait_2019_7d$wait_2019.date) 
wait_7d <- data.frame(wait$datetime, wait$X7dwarfs_Posted)
#wait_7d <- na.omit(wait_7d)
wait_7d_ts <- xts(wait_7d[,-1],order.by=wait_7d$wait.datetime)
class(wait_7d_ts)
summary(wait_7d_ts)



#wait_2019_7d_ts2 <- ts(wait_2019_7d_ts, frequency = 1)
wait_7d_ts2 <- ts(wait_7d_ts, frequency = 12)
class(wait_7d_ts2)


train_ts <- wait_7d_ts2[index(wait_7d_ts2) < "2019-01-01"]
test_ts <- wait_7d_ts2[index(wait_7d_ts2) >= "2019-01-01"]



model_7d <- auto.arima(train_ts)
model_7d


#library(TTR)
#SMA_2019_7d<- SMA(wait_2019_7d_ts, n=8)
#plot.ts(SMA_2019_7d)


#ddata <- decompose(wait_2019_7d_ts2)
#plot(ddata)

ddata2 <- decompose(wait_7d_ts2)
plot(ddata2)

Forecast_7d <-predict(model_7d,
                      n.ahead=12,
                      se.fit=TRUE)

plot.ts(Forecast_7d$pred)

plot(ddata2$trend)

plot(ddata2$seasonal)

plot(ddata2$random)


#mymodel <- auto.arima(wait_2019_7d_ts)
#mymodel
#plot.ts(mymodel$residuals)
#myforecast <- forecast(mymodel, level=c(95), h=10*12)
#plot(myforecast)
#Box.test(mymodel$resid, lag=5, type="Ljung-Box")
#Box.test(mymodel$resid, lag=10, type="Ljung-Box")
#Box.test(mymodel$resid, lag=15, type="Ljung-Box")

library(reshape2)

september <- read.csv('sept2021_predictions.csv')

september1 <- subset(september, DAYOFMONTH == 1)

ggplot(september1, aes(x=hour)) + 
  geom_line(aes(y = X7dwarfs), color = "darkred") + 
  geom_line(aes(y = dino), color="steelblue") +
  theme(plot.title = element_text(hjust = 0.5,face = "bold", size = 10, color="blue"), 
        axis.text.x = element_text(face="bold", color="blue", angle = 45),
        axis.text.y = element_text(face="bold", color="blue"),
        axis.title.x = element_text(face="bold", color="blue"),
        axis.title.y = element_text(face="bold", color="blue"))




