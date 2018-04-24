# Inputs
**biom data file: **

* Path: data/biom_file.biom  
* Description: This is the OTU table pulled from the [Earth Microbiome Project ftp page](ftp://ftp.microbio.me/emp/release1/)
* Note: I have code in the data R script to pull this automatically  

**biom metadata file**

* Path: data/emp_qiime_mapping_release1.csv
* Description: This is the sample metadata for the samples in the biom file, containing information about the sample (esp. the env_material target variable). I edited this so that it does not contain problematic columns (causing errors in loading using tidyverse packages).

# Outputs
## Reports
**EDA**

* Path: reports/EDA.html
* Description: summary of EDA efforts, including a histogram of the response variable, a heatmap with feature correlation, and a heatmap of feature abundance.

**Null model**

* Path: reports/project-performance_null_model.Rmd
* Description: Evaluation of null logistic regression model (only returns the most abundant category)

**Logistic regression model: 5 features**

* Path: reports/project-performance_logistic_5_features.Rmd
* Description: Evaluation of logistic regression model with 5 features, including a heatmap of the confusion matrix

**Decision tree model: 5 features**

* Path: reports/project-performance_rpart_5_features.Rmd
* Description: Evaluation of decision tree model with the 5 most abundant features.