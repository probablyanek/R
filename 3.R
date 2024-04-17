data = cars
x = data$speed
y = data$dist
mod1 = lm(x~y)
mod2 = lm(y~x)
plot(x, y)
abline(mod1)
abline(mod2)
cx = mod1$coefficients
y = 85
pred = cx["(Intercept)"] + (cx["y"])*y
pred