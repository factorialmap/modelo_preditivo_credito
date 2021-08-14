
# goals -------------------------------------------------------------------------------------------------
"criar modelo para classificar corretamente emprestimos bons e ruins"


# packages ----------------------------------------------------------------------------------------------
library(modeldata)
library(tidymodels)
library(tidyverse)
library(funModeling)
library(vip)
library(janitor)


# data --------------------------------------------------------------------------------------------------
data("credit_data")
credit_data <- credit_data %>% clean_names()

#create samples and resamples
split_cred <- initial_split(credit_data, strata = status)
train_cred <- training(split_cred)
test_cred <-  testing(split_cred)

resample_cred <-  vfold_cv(train_cred, strata = status)


# exploratory -------------------------------------------------------------------------------------------

Marcelo Carvalho dos Anjos



