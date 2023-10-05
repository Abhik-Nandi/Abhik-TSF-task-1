#viewing  and loading the data set
data <- read.csv("https://raw.githubusercontent.com/AdiPersonalWorks/Random/master/student_scores%20-%20student_scores.csv")
#viewing the whole data set
View(data)
#viewing the head of the data set
head(data)
#viewing the tail of the data set
tail(data)
#summary of the data set
summary(data)
#structure of the data set
str(data)
#checking for null values
is.na(data)
#checking the presence of the outliers in the data set if any
boxplot(data)
#plotting the data set
plot(data, main = "study hours vs marks scored", xlab ="study hours", ylab ="marks scored")
#checking the strenght of correlation
cor(data)
#building the model
model <- lm(data$Scores ~ data$Hours)
#summary of the model
summary(model)
#plotting the model
plot(model)
#predicting using the model
score.prediction <- function(hours){2.4837 + 9.7758*hours}
print(score.prediction)
#prediction of score if student studies 9.25hrs/day
predicted_score <- score.prediction(9.25)
print(predicted_score)
