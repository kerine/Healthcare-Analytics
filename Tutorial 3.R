e <- ggplot(labs,aes(SvcSat, WaitTime))
e + geom_count()
ggplot(labs,aes(fill= SvcSat, x =WaitTime)) + geom_histogram()
x = as.numeric(labs$SvcSat)
y = labs$WaitTime
cor(x, y)

mutate(labs, BMI = WT / HT^2) %>%
ggplot(data = .,aes(fill = TC,x = BMI)) + geom_histogram()
newdata = mutate(labs, BMI = WT / HT^2)
bmi = newdata$BMI
tc = as.numeric(newdata$TC)
cor(bmi, tc)

a <- labs$SBP
b <- labs$AGE
d <- as.numeric(labs$TC)
e <- labs$Gender
f <- labs$ETHNIC
new.df <- data.frame(a=c(135),b=c(35),d=c(150),e=c("M"), f=c("C"))
BMI = labs$WT/labs$HT^2
model <- lm(BMI ~ a + b + d + e + f, data=df)
summary(model)
coef(model)
new.df
predict(model, new.df)