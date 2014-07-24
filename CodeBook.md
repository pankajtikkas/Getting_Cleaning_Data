
activity_labels: Captured activities 
features: Captured features

subject_test: Captured data of subject under test
X_test: Captured data of X under test
y_test: Captured data of y under test

subject_train: Captured data of subject under train
X_train: Captured data of subject under train
y_train: Captured data of subject under train



data_train_X_subject: Data of X and Subject  under train
data_train_X_subject_y: Data of X y and subject under train
data_test_X_subject: Data of x and subject under test
data_test_X_subject_y: Data of x y and subject under test
training_test_data: Total test and training data



Labes used
L1<- rbind(features, c(562, "Subject"))
Label<- rbind(L1, c(563, "Id"))[,2]
names(training_test_data) <- Label

data_subject_id: Data with ID and subject
data_mean: Mean data
data_std : Standard deviation data

data_subject_id_mean:Toatal data with id mean and subject
data_mean_standard_deviation: Mean standard deviation data





descriptive_data : Descriptive data with labels



average_tidy_data: final average of variables in data
