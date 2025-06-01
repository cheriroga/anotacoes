library(gamlss)

y <- Polio[, 2]
X <- as.matrix(Polio[, 3:8])





garma_nb <- gamlss(y ~ X, family = NBII, mu.fo = ~ garma(p = 5, q = 1))

summary(garma_poi)

par(mfrow = c(2, 1))
acf(garma_nb$residuals)
pacf(garma_nb$residuals)

plot(garma_nb)

# phi é p no ar
# theta é o q no ma

garma_poi <- gamlss(y ~ X, family = PO, mu.fo = ~ garma(p = 3, q = 0))

par(mfrow = c(2, 1))

acf(garma_poi$residuals)
pacf(garma_poi$residuals)

plot(garma_poi)
