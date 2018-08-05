# Cleaning data


Human Activity Recognition Using Smartphones Dataset
Version 1.0
===
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For more information about this dataset contact: activityrecognition@smartlab.ws

Code
======
#filtering out only mean and standard-deviation columns for all variables<br />  
x_test <- x_test[,(grepl("*mean()",features$V2)
            &!grepl("*meanFreq()",features$V2))
            |grepl("*std()",features$V2)]<br />
x_train <- x_train[,(grepl("*mean()",features$V2)
                   &!grepl("*meanFreq()",features$V2))
                 |grepl("*std()",features$V2)]<br />

#creating the test data frame<br />
test <- data.frame("activity"=y_test,
                   "subjects"=subject_test,x_test)<br />

#creating the train data frame<br />
train <- data.frame("activity"=y_train,
                    "subjects"=subject_train,x_train,fix.empty.names = FALSE)<br />

#combining test and train data frame to form one data<br />
data <- rbind.data.frame(test,train)<br />

colnames(data) <- c("activity","subjects",
                    as.character(features$V2[(grepl("*mean()",features$V2)
                    &!grepl("*meanFreq()",features$V2)
                    |grepl("*std()",features$V2))]))<br />

#writing the obtained data to a csv file<br />
write.csv(data,file="tidy_data.csv")<br />

The above code is used to obtain the data from train and test data sets and to merge it to on data set and write the obtained data to a csv file.<br />

Code
=======
#Calculating the averages for each activity and subject for all available variables
for (i in 1:30) {<br />
  w <- sapply(data1$WALKING[data1$WALKING$subjects==i
                                  ,3:length(names(data))], mean)<br />
  wal <- as.data.frame(w)<br />
  walking <- rbind.data.frame(walking,wal$w)<br />
  
  walking_u <- sapply(data1$WALKING_UPSTAIRS[data1$WALKING_UPSTAIRS$subjects==i
                                                    ,3:length(names(data))], mean)<br />
  walking_ups <- as.data.frame(walking_u)<br />
  walking_upstairs <- rbind.data.frame(walking_upstairs,walking_ups$walking_u)<br />
  
  walking_d <- sapply(data1$WALKING_DOWNSTAIRS[data1$WALKING_DOWNSTAIRS$subjects==i
                                                      ,3:length(names(data))], mean)<br />
  walking_dow <- as.data.frame(walking_d)<br />
  walking_downstairs <- rbind.data.frame(walking_downstairs,walking_dow$walking_d)<br />
  
  s <- sapply(data1$SITTING[data1$SITTING$subjects==i
                                             ,3:length(names(data))], mean)<br />
  sit <- as.data.frame(s)<br />
  sitting <- rbind.data.frame(sitting,sit$s)<br />

  st <- sapply(data1$STANDING[data1$STANDING$subjects==i
                                   ,3:length(names(data))], mean)<br />  
  stand <- as.data.frame(st)<br />
  standing <- rbind.data.frame(standing,stand$st)<br />
  
  l <- sapply(data1$LAYING[data1$LAYING$subjects==i
                                  ,3:length(names(data))], mean)<br />  
  lay <- as.data.frame(l)<br />
  laying <- rbind.data.frame(laying,lay$l)<br />
  
}

#setting the column names for the obtained data<br />
colnames(walking) <- names(data[3:68])<br />
colnames(walking_upstairs) <- names(data[3:68])<br />
colnames(walking_downstairs) <- names(data[3:68])<br />
colnames(sitting) <- names(data[3:68])<br />
colnames(standing) <- names(data[3:68])<br />
colnames(laying) <- names(data[3:68])<br />

#coercing the obtained data frame with all required columns<br />
walking <- data.frame(activity="WALKING",subject=1:30,walking)<br />
walking_upstairs <- data.frame(activity="WALKING_UPSTAIRS",subject=1:30,walking_upstairs)<br />
walking_downstairs <- data.frame(activity="WALKING_DOWNSTAIRS",subject=1:30,walking_downstairs)<br />
sitting <- data.frame(activity="SITTING",subject=1:30,sitting)<br />
standing <- data.frame(activity="STANDING",subject=1:30,standing)<br />
laying <- data.frame(activity="LAYING",subject=1:30,laying)<br />

#combining the obtained variables into one data frame<br />
data2 <- rbind.data.frame(walking,walking_upstairs,walking_downstairs<br />
                          ,sitting,standing,laying)<br />
colnames(data2) <- c("activity","subjects",names(data[3:68]))<br />

#writing the obtained data to a csv file<br />
write.csv(data2,"tidy_data_average.csv")<br />


The second code above is used to find the average for each variables based on the activity and subject column.



Acknowledgements:
==================


[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
