year <- c(2000 ,   2001  ,  2002  ,  2003 ,   2004)
rate <- c(9.34 ,   8.50  ,  7.62  ,  6.93  ,  6.60)

plot(year,rate)
fit <- lm(rate ~ year)
fit

#fit$coefficients[1]
fit$coefficients[[1]]
#fit$coefficients[2]
fit$coefficients[[2]]

a = 2002.5;

estimatedRate=fit$coefficients[[2]]*a+fit$coefficients[[1]]

year <- c(2000 ,   2001  ,  2002  ,  2003 ,   2004, a)
rate <- c(9.34 ,   8.50  ,  7.62  ,  6.93  ,  6.60, estimatedRate)

plot(year, rate)

abline(fit)
summary(fit)

#trace('lm', edit='true') komutu ile lm fonksiyonunun icerigi gorulebilmektedir.



