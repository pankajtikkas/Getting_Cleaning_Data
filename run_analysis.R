# Considering inside the directory "UCI HAR Dataset"

activity_labels <- read.table("activity_labels.txt", col.names= c("Id","Activity"))
features <- read.table("features.txt", colClasses = c("character"))

subject_test <- read.table("test/subject_test.txt")
X_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")

subject_train <- read.table("train/subject_train.txt")
X_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")

# Answer 1

data_train_X_subject <- cbind (X_train, subject_train)
data_train_X_subject_y <- cbind (data_train_X_subject, y_train)
data_test_X_subject <- cbind(X_test, subject_test)
data_test_X_subject_y <- cbind(data_test_X_subject, y_test)
training_test_data <- rbind (data_train_X_subject_y, data_test_X_subject_y)


# Answer 2

L1<- rbind(features, c(562, "Subject"))
Label<- rbind(L1, c(563, "Id"))[,2]
names(training_test_data) <- Label

data_subject_id <- training_test_data[,grepl("Subject|Id", names(training_test_data))]
data_mean <- training_test_data[,grepl("mean", names(training_test_data))]
data_std <- training_test_data[,grepl("std", names(training_test_data))]

data_subject_id_mean <- cbind(data_subject_id,data_mean)
data_mean_standard_deviation <- cbind(data_subject_id_mean, data_std)


# Answer 3

join_data <- join(data_mean_standard_deviation, activity_labels, by = "Id", match = "first")
descriptive_data <- join_data[,-1]


# Answer 5
average_tidy_data = ddply(data_mean_standard_deviation, c("Subject","Activity"), numcolwise(mean))
write.table(average_tidy_data, file = "Average_Tidy_Data.txt")
