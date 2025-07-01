#read csv file thank u 

dataset <- read.csv("regression_data.csv")
filename <- args[1]
x_col <- args[2]
y_col <- args[3]
#create scatterplot from the dataset 

plot(dataset$YearsExperience, dataset$Salary, col="red")

#assigning a variable to the lm so that it is easier to call up 

model <- lm(Salary ~ YearsExperience, data=dataset)

library(ggplot2)
ggplot() +
  geom_point(aes(x = dataset$YearsExperience, y = dataset$Salary), colour = 'red') +
  geom_line(aes(x = dataset$YearsExperience, y = predict(model, newdata = dataset)), colour = 'blue') +
  ggtitle('Salary vs Experience') +
  xlab('Years of experience') +
  ylab('Salary')

#whoopsies need to add ggplot2 lol 

library(ggplot2)

#losing my mind haha

install.packages("ggplot2")

#please work

library(ggplot2)

#enables advanced plotting but its not working 

ggplot(regression_data.csv) +
  geom_point(aes(x = dataset$YearsExperience, y = dataset$Salary), colour = 'red') +
  geom_line(aes(x = dataset$YearsExperience, y = predict(model, newdata = dataset)), colour = 'blue') +
  ggtitle('Salary vs Experience') +
  xlab('Years of experience') +
  ylab('Salary')

#why no working?? :(

#oh because I renamed the dataset file to be just dataset

ggplot2(dataset) +
  geom_point(aes(x = dataset$YearsExperience, y = dataset$Salary), colour = 'red') +
  geom_line(aes(x = dataset$YearsExperience, y = predict(model, newdata = dataset)), colour = 'blue') +
  ggtitle('Salary vs Experience') +
  xlab('Years of experience') +
  ylab('Salary')


#okay thought i had already installed ggplot2

install.packages("ggplot2")


#okay it appears as though that worked what a win for me 

library(ggplot2)

#okay slay i think 

model <- lm(Salary ~ YearsExperience, data=dataset)


#this is so messy 

library(ggplot2)
ggplot(dataset) +
  geom_point(aes(x = dataset$YearsExperience, y = dataset$Salary), colour = 'red') +
  geom_line(aes(x = dataset$YearsExperience, y = predict(model, newdata = dataset)), colour = 'blue') +
  ggtitle('Salary vs Experience') +
  xlab('Years of experience') +
  ylab('Salary')

#evaluate the model please

summary(model)

#maybe i'll just start this all over again sob 

#dataset downloaded check check what's next

dataset <- read.csv("regression_data.csv")

#not sure if that worked but oh well moving on

#creating scatterplot

plot(dataset$YearsExperience, dataset$Salary, col="red")

#fitting linear model

model <- lm(Salary ~ YearsExperience, data=dataset)

#overlaying regression model

library(ggplot2)
ggplot() +
  geom_point(aes(x = dataset$YearsExperience, y = dataset$Salary), colour = 'red') +
  geom_line(aes(x = dataset$YearsExperience, y = predict(model, newdata = dataset)), colour = 'blue') +
  ggtitle('Salary vs Experience') +
  xlab('Years of experience') +
  ylab('Salary')

#SLAY

#evaluating the model

summary(model)

#R complete dang that was a wild ride 


#renaming my files to be in the correct notation for assignment

library(ggplot2)

# Data
df <- data.frame(
  x = c(1, 2, 3, 4, 5),
  y = c(2.1, 4.3, 6.1, 8.0, 10.1)
)

# Fit model
model <- lm(y ~ x, data = df)
slope <- coef(model)[2]
intercept <- coef(model)[1]
r <- cor(df$x, df$y)
pred <- predict(model)
mse <- mean((df$y - pred)^2)

# Plot
ggplot(df, aes(x = x, y = y)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  annotate("text", x = 1.5, y = max(df$y) - 0.5,
           label = paste("y =", round(slope, 2), "x +", round(intercept, 2),
                         "\nr =", round(r, 2), "\nMSE =", round(mse, 2)),
           size = 4) +
  labs(title = "Linear Fit",
       x = "Years of Experience", y = "Salary") +
  theme_minimal()

ggsave("regression_plot_r.png")

debug





