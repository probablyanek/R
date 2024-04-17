# Define the data
X <- c(15, 16, 20, 14, 17, 18, 19, 21, 22)
Y <- c(30, 39, 32, 31, 34, 35, 37, 39, 40)

# Fit the linear regression model
model <- lm(Y ~ X)

# Predict Y when X is 29
predict_Y <- predict(model, newdata = data.frame(X = 29))
print(paste("Predicted Y when X is 29: ", predict_Y))

# To find X when Y is 45, we need to fit a reverse model
reverse_model <- lm(X ~ Y)

# Predict X when Y is 45
predict_X <- predict(reverse_model, newdata = data.frame(Y = 45))
print(paste("Predicted X when Y is 45: ", predict_X))

# Calculate the mean of X and Y using the regression lines
mean_X <- mean(model$fitted.values)
mean_Y <- mean(reverse_model$fitted.values)

print(paste("Mean of X using regression line: ", mean_X))
print(paste("Mean of Y using regression line: ", mean_Y))
plot(X, Y)
abline(model)
abline(reverse_model)



z = (xbar-muh)/sd/sqrt(n)  = p-P/sqrt(PQ/n)
z = X1_bar - X2_bar / sqrt(sd_1^2/n1 + sd_2^2/n2) = P1-P2/sqrt(PQ(1/n1 + 1/n2))
