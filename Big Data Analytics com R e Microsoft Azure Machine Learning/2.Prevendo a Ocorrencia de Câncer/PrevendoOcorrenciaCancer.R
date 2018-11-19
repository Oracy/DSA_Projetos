# Set Directory
setwd("/home/oracy/Documents/DSA_Projetos/DSA_Projetos/Big Data Analytics com R e Microsoft Azure Machine Learning/2.Prevendo a Ocorrencia de Câncer/")
getwd()

# Data Gathering
df <- read.csv(file = "bc_data.csv", header = TRUE, sep = ",")

str(df)