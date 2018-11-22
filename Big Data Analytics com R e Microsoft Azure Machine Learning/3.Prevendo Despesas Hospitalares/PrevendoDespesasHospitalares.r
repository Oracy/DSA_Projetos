# Preventing Hospital Expenses

# Set Directory
setwd("/home/oracy/Documents/DSA_Projetos/DSA_Projetos/Big Data Analytics com R e Microsoft Azure Machine Learning/3.Prevendo Despesas Hospitalares")
getwd()

# For this analysis, we will use a data set simulating hypothetical medical expenses
# for a set of patients spread across 4 regions of Brazil.
# This dataset has 1,338 observations and 7 variables.

# Step 1 - Data gathering
df <- read.csv('despesas.csv', header = TRUE,sep = ',')
head(df)

# Step 2: Exploring and Preparing the Data
# Viewing variables
str(df)

# Central Trend Averages of the variable spending
summary(df[c("gastos")])

# Building a Histogram
hist(df$gastos, main = 'Histogram', xlab = 'Spending')

# Regions contingency table
table(df$regiao)

# Exploring relationships among variables: Correlation Matrix
cor(df[c("idade","bmi", "filhos", "gastos")])

# None of the correlations in the matrix are considered strong, but there are some interesting associations.
# For example, age and bmi (BMI) appear to have a weak positive correlation, which means that
# As age increases, body mass tends to increase. There is also a positive correlation
# Moderate between age and expenditure, in addition to the number of children and expenses. These associations
# that as the average age, body mass and number of children increases, the expected cost of health insurance goes up.

# Viewing relationship between variables: Scatterplot
# Note that there is no clear relationship between the variables

# Scatterplot Matrix
# install.packages ("psych")

# This graphic provides more information about the relationship between variables

# Step 3: Training the Model

# Similar to the previous item

# Viewing the coefficients

# Preventing medical expenses

# Step 4: Evaluating Model Performance
# More details about the model

# Step 5: Optimizing Model Performance

# Adding a variable with twice the age value

# Adding a Bookmark to BMI> = 30

# Creating the final template