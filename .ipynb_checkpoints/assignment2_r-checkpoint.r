args <- commandArgs(trailingOnly = TRUE)
if (length(args) != 3) {
  stop("Usage: Rscript linear_regression_r.R <filename> <x_column> <y_column>")
}

filename <- args[1]
x_col <- args[2]
y_col <- args[3]

data <- read.csv(filename)
formula <- as.formula(paste(y_col, "~", x_col))
model <- lm(formula, data = data)

library(ggplot2)
plot <- ggplot(data, aes_string(x = x_col, y = y_col)) +
  geom_point(color = "red") +
  geom_smooth(method = "lm", color = "blue") +
  ggtitle(paste(y_col, "vs", x_col)) +
  xlab(x_col) +
  ylab(y_col)

ggsave("linear_regression_r_output.png", plot)
print(plot)

#read csv file thank u 

dataset <- read.csv("./regression_data.csv")

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

#install.packages("ggplot2")

#please work

library(ggplot2)

#enables advanced plotting but its not working 

ggplot() +
  geom_point(aes(x = dataset$YearsExperience, y = dataset$Salary), colour = 'red') +
  geom_line(aes(x = dataset$YearsExperience, y = predict(model, newdata = dataset)), colour = 'blue') +
  ggtitle('Salary vs Experience') +
  xlab('Years of experience') +
  ylab('Salary')

#why no working?? :(

#oh because I renamed the dataset file to be just dataset

ggplot(dataset) +
  geom_point(aes(x = dataset$YearsExperience, y = dataset$Salary), colour = 'red') +
  geom_line(aes(x = dataset$YearsExperience, y = predict(model, newdata = dataset)), colour = 'blue') +
  ggtitle('Salary vs Experience') +
  xlab('Years of experience') +
  ylab('Salary')


#okay thought i had already installed ggplot2

#install.packages("ggplot2")


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



