y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

x_train <- read.table("./UCI HAR Dataset/train/x_train.txt")

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")


y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

x_test <- read.table("./UCI HAR Dataset/test/x_test.txt")

subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")


train_data <- cbind(x_train,y_train,subject_train)

test_data <- cbind(x_test,y_test,subject_test)

merged_data <- rbind(train_data, test_data)



features <- read.table("./UCI HAR Dataset/features.txt")

columns <- c(grep("mean",features$V2),grep("std",features$V2),562,563)



mean_std_data <- merged_data[,columns]

colnames(merged_data)[562] <- "activity"

colnames(merged_data)[563] <- "subject"



activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

colnames(activity_labels)[1] <- "activity"



colnames(mean_std_data)[1] <- "tBodyAcc-mean()-X"
colnames(mean_std_data)[2] <- "tBodyAcc-mean()-Y"
colnames(mean_std_data)[3] <- "tBodyAcc-mean()-Z"
colnames(mean_std_data)[4] <- "tGravityAcc-mean()-X"
colnames(mean_std_data)[5] <- "tGravityAcc-mean()-Y"
colnames(mean_std_data)[6] <- "tGravityAcc-mean()-Z"
colnames(mean_std_data)[7] <- "tBodyAccJerk-mean()-X"
colnames(mean_std_data)[8] <- "tBodyAccJerk-mean()-Y"
colnames(mean_std_data)[9] <- "tBodyAccJerk-mean()-Z"
colnames(mean_std_data)[10] <- "tBodyGyro-mean()-X"
colnames(mean_std_data)[11] <- "tBodyGyro-mean()-Y"
colnames(mean_std_data)[12] <- "tBodyGyro-mean()-Z"
colnames(mean_std_data)[13] <- "tBodyGyroJerk-mean()-X"
colnames(mean_std_data)[14] <- "tBodyGyroJerk-mean()-Y"
colnames(mean_std_data)[15] <- "tBodyGyroJerk-mean()-Z"
colnames(mean_std_data)[16] <- "tBodyAccMag-mean()"
colnames(mean_std_data)[17] <- "tGravityAccMag-mean()"
colnames(mean_std_data)[18] <- "tBodyAccJerkMag-mean()"
colnames(mean_std_data)[19] <- "tBodyGyroMag-mean()"
colnames(mean_std_data)[20] <- "tBodyGyroJerkMag-mean()"
colnames(mean_std_data)[21] <- "fBodyAcc-mean()-X"
colnames(mean_std_data)[22] <- "fBodyAcc-mean()-Y"
colnames(mean_std_data)[23] <- "fBodyAcc-mean()-Z"
colnames(mean_std_data)[24] <- "fBodyAcc-meanFreq()-X"
colnames(mean_std_data)[25] <- "fBodyAcc-meanFreq()-Y"
colnames(mean_std_data)[26] <- "fBodyAcc-meanFreq()-Z"
colnames(mean_std_data)[27] <- "fBodyAccJerk-mean()-X"
colnames(mean_std_data)[28] <- "fBodyAccJerk-mean()-Y"
colnames(mean_std_data)[29] <- "fBodyAccJerk-mean()-Z"
colnames(mean_std_data)[30] <- "fBodyAccJerk-meanFreq()-X"
colnames(mean_std_data)[31] <- "fBodyAccJerk-meanFreq()-Y"
colnames(mean_std_data)[32] <- "fBodyAccJerk-meanFreq()-Z"
colnames(mean_std_data)[33] <- "fBodyGyro-mean()-X"
colnames(mean_std_data)[34] <- "fBodyGyro-mean()-Y"
colnames(mean_std_data)[35] <- "fBodyGyro-mean()-Z"
colnames(mean_std_data)[36] <- "fBodyGyro-meanFreq()-X"
colnames(mean_std_data)[37] <- "fBodyGyro-meanFreq()-Y"
colnames(mean_std_data)[38] <- "fBodyGyro-meanFreq()-Z"
colnames(mean_std_data)[39] <- "fBodyAccMag-mean()"
colnames(mean_std_data)[40] <- "fBodyAccMag-meanFreq()"
colnames(mean_std_data)[41] <- "fBodyBodyAccJerkMag-mean()"
colnames(mean_std_data)[42] <- "fBodyBodyAccJerkMag-meanFreq()"
colnames(mean_std_data)[43] <- "fBodyBodyGyroMag-mean()"
colnames(mean_std_data)[44] <- "fBodyBodyGyroMag-meanFreq()"
colnames(mean_std_data)[45] <- "fBodyBodyGyroJerkMag-mean()"
colnames(mean_std_data)[46] <- "fBodyBodyGyroJerkMag-meanFreq()"
colnames(mean_std_data)[47] <- "tBodyAcc-std()-X"
colnames(mean_std_data)[48] <- "tBodyAcc-std()-Y"
colnames(mean_std_data)[49] <- "tBodyAcc-std()-Z"
colnames(mean_std_data)[50] <- "tGravityAcc-std()-X"
colnames(mean_std_data)[51] <- "tGravityAcc-std()-Y"
colnames(mean_std_data)[52] <- "tGravityAcc-std()-Z"
colnames(mean_std_data)[53] <- "tBodyAccJerk-std()-X"
colnames(mean_std_data)[54] <- "tBodyAccJerk-std()-Y"
colnames(mean_std_data)[55] <- "tBodyAccJerk-std()-Z"
colnames(mean_std_data)[56] <- "tBodyGyro-std()-X"
colnames(mean_std_data)[57] <- "tBodyGyro-std()-Y"
colnames(mean_std_data)[58] <- "tBodyGyro-std()-Z"
colnames(mean_std_data)[59] <- "tBodyGyroJerk-std()-X"
colnames(mean_std_data)[60] <- "tBodyGyroJerk-std()-Y"
colnames(mean_std_data)[61] <- "tBodyGyroJerk-std()-Z"
colnames(mean_std_data)[62] <- "tBodyAccMag-std()"
colnames(mean_std_data)[63] <- "tGravityAccMag-std()"
colnames(mean_std_data)[64] <- "tBodyAccJerkMag-std()"
colnames(mean_std_data)[65] <- "tBodyGyroMag-std()"
colnames(mean_std_data)[66] <- "tBodyGyroJerkMag-std()"
colnames(mean_std_data)[67] <- "fBodyAcc-std()-X"
colnames(mean_std_data)[68] <- "fBodyAcc-std()-Y"
colnames(mean_std_data)[69] <- "fBodyAcc-std()-Z"
colnames(mean_std_data)[70] <- "fBodyAccJerk-std()-X"
colnames(mean_std_data)[71] <- "fBodyAccJerk-std()-Y"
colnames(mean_std_data)[72] <- "fBodyAccJerk-std()-Z"
colnames(mean_std_data)[73] <- "fBodyGyro-std()-X"
colnames(mean_std_data)[74] <- "fBodyGyro-std()-Y"
colnames(mean_std_data)[75] <- "fBodyGyro-std()-Z"
colnames(mean_std_data)[76] <- "fBodyAccMag-std()"
colnames(mean_std_data)[77] <- "fBodyBodyAccJerkMag-std()"
colnames(mean_std_data)[78] <- "fBodyBodyGyroMag-std()"
colnames(mean_std_data)[79] <- "fBodyBodyGyroJerkMag-std()"

all_data <- merge(mean_std_data,activity_labels,by.x = "activity", by.y = "activity")

colnames(all_data)[82] <- "activity_name"

data_summary <- all_data %>%
    group_by(subject,activity_name) %>%
    summarise_each(funs(mean))
