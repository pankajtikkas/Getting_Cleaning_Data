Getting_Cleaning_Data
=====================
Considering we are working in the working Directory

The data in files will be read in different variables
activity_labels 
features 

subject_test 
X_test 
y_test 

subject_train 
X_train 
y_train


Column binding is done o obtain training_test_data

Than labeling is done 
L1<- rbind(features, c(562, "Subject"))
Label<- rbind(L1, c(563, "Id"))[,2]
names(training_test_data) <- Label


Mean Standard Deviation data is extracted in data_mean_standard_deviation

Descriptive data will give total data with all details

Average tidy data is extracted and written in Average_Tidy_Data.txt
