 This script reads the x_train, y_train, subject_train, x_test, y_test, and subject_test files and then binds them together.
 From there it reads the features text file and extracts the columns with mean or std in the column name.
 Then it re-names the column names to the correct ones from the features text file and reads the activity_labels text file.
 Finally it groups the data by the activity and subject ID.
