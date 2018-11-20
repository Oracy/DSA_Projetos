# Predicting the Occurrence of Cancer

# Set Directory
setwd("C:\\Users\\Oracy\\Desktop\\DSA_Projetos\\DSA_Projetos\\Big Data Analytics com R e Microsoft Azure Machine Learning\\2.Prevendo a Ocorrencia de Cancer")
getwd()

## Step 1 - Data Gathering

# http://archive.ics.uci.edu/ml/datasets/Breast+Cancer+Wisconsin+%28Diagnostic%29
# http://datascienceacademy.com.br/blog/aluno/RFundamentos/Datasets/ML/wisc_bc_data.csv

df <- read.csv(file = "bc_data.csv", header = TRUE, sep = ",")

str(df)

## Step 2 - Data Exploration

# Regardless of the machine learning method, ID variables should always be deleted. Otherwise, this can lead to erroneous results because the ID can be used to uniquely "predict" each example. Therefore, a model that includes an identifier may suffer from over-adjustment, and it will be very difficult to use it for generalize other data.

# Remove ID Column
# Check if there is some NA value
# Font: https://stackoverflow.com/questions/6286313/remove-an-entire-column-from-a-data-frame-in-r
# Font: https://discuss.analyticsvidhya.com/t/how-can-i-check-whether-my-data-frame-contains-na-inf-values-in-some-column-or-not-in-r/1647
df$id <- NULL
str(df)
head(df)

any(is.na(df))

# Many classifiers require that the variables be Factor type
# Font: https://stats.idre.ucla.edu/r/modules/factor-variables/
# Font: https://www.statmethods.net/input/valuelabels.html
df$diagnosis <- factor(df$diagnosis, levels = c("B", "M"), labels = c("Benigno", "Maligno"))

str(df)

# Checking the proportion
# dfProp <- prop.table(table(df$diagnosis))
# dfProp <- dfProp * 100
# dfProp <- round(dfProp, digits = 2)

dfProp <- round(prop.table(table(df$diagnosis)) * 100, digits = 2)