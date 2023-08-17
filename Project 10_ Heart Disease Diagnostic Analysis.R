# Installing and loading required libraries
install.packages("tidyverse")
library(tidyverse)

# Loading and Reading the data set
datf <- read.csv("N:/Heart Disease data.csv")

# Displaying the data set
datf

# Displaying summary statistics of the data
summary(datf)

# Data Visualisation
## Creating a pair plot to visualize relationships between numerical variables
pairs(datf[, c("age", "trestbps", "chol", "thalach", "oldpeak")])

# Creating a histogram of age distribution
ggplot(datf, aes(x = age)) +
  geom_histogram(binwidth = 5, fill = "pink", color = "violet") +
  labs(title = "Age Distribution", x = "Age", y = "Frequency")

# Creating a bar plot of chest pain types
ggplot(datf, aes(x = factor(cp), fill = factor(cp))) +
  geom_bar() +
  labs(title = "Chest Pain Types", x = "Chest Pain Type", y = "Count")

# Creating a scatter plot of cholesterol vs. resting blood pressure
ggplot(datf, aes(x = chol, y = trestbps)) +
  geom_point() +
  labs(title = "Cholesterol vs. Resting Blood Pressure", x = "Cholesterol", y = "Resting BP")

