# Risk analysis

# Set Directory
setwd("C:\\Users\\omartos\\Git\\DSA_Projetos\\DSA_Projetos\\Big Data Analytics com R e Microsoft Azure Machine Learning\\4.Analise de Risco de Credito")
getwd()

# Loading my library
source('utils.R')

# Loading the dataset into a dataframe
df <- read.csv('credit_dataset.csv', header = TRUE, sep = ',')
head(df)
str(df)

# Normalizing the variables
numeric.vars <- c("credit.duration.months", "age", "credit.amount")
df <- scale.features(df, numeric.vars)

# Factor type variables
factor.vars <- c('credit.rating', 'account.balance', 'previous.credit.payment.status',
                 'credit.purpose', 'savings', 'employment.duration', 'installment.rate',
                 'marital.status', 'guarantor', 'residence.duration', 'current.assets',
                 'other.credits', 'apartment.type', 'bank.credits', 'occupation', 
                 'dependents', 'telephone', 'foreign.worker')
df <- to.factors(df, factor.vars)

head(df)
str(df)

# Dividing data in training and testing - 60:40 ratio
# Font: https://cran.r-project.org/web/packages/dataPreparation/vignettes/train_test_prep.html
nrow(df)
index <- sample(1:nrow(df), 0.6 * nrow(df))
df_train <- df[index,]
df_test <- df[-index,]
length(df_train)
length(df_test)

# Feature Selection
# Font: https://machinelearningmastery.com/feature-selection-with-the-caret-r-package/
# Font: https://machinelearningmastery.com/feature-selection-with-the-caret-r-package/
#install.packages('caret')
#install.packages('e1071', dependencies = TRUE)
#install.packages('randomForest')
library(caret)
library(randomForest)

# Running the function
rfe.results <- feature.selection(feature.vars = df_train[,-1],
                                 class.var = df_train[,1])

# Viewing Results
rfe.results
varImp(rfe.results)
variables <- predictors(rfe.results)
variables <- ve
plot(rfe.results, type = c("g","o"))
# Creating and Evaluating the Model

# Utilities library for graphing

## separate feature and class variables

# Building a Logistic Regression Model

# Viewing the template

# Testing the Model in Test Data

# Evaluating the model

## Feature selection

# Building the model with the selected variables

# Viewing the template

# Testing the Model in Test Data

# Evaluating the model

# Evaluating model performance

# Creating ROC Curves