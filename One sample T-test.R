# one simple T-test
Indian_oil_ethanol <- read_excel("E:/Indian oil_ethanol.xlsx")
attach(Indian_oil_ethanol)
# Assumptions
# Normality Tests : Shapiro,Lillie,Anderson darling
shapiro.test(`Mileage with ethanol`)
library(nortest)
lillie.test(`Mileage with ethanol`)
ad.test(`Mileage with ethanol`)
# my data satisfies the condition of normal distribution 
# one sample T test: two tailed
t.test(`Mileage with ethanol`,mu=12)
sd(`Mileage with ethanol`)
t.test(`Mileage with ethanol`,mu=12,
       alternative = c("two.sided"),conf.level=0.99)
# one tailed
t.test(`Mileage with ethanol`,mu=12,
       alternative = c("greater"),conf.level=0.95)
