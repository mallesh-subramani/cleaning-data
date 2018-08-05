# Codebook
Human Activity Recognition Using Smartphones Dataset
Version 1.0
===
```
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
```

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For more information about this dataset contact: activityrecognition@smartlab.ws

```
activity:This variable is used to depict the kind of activity the subject was performing for obtaining the values.The different available activities are;
          WALKING            
          WALKING_UPSTAIRS   
          WALKING_DOWNSTAIRS 
          SITTING            
          STANDING           
          LAYING  
```
```
subjects:This variable is used to depict the subject who performed  the test there are 30 people aged from 19:48 who participated in this test and are labeled as nummbers from 1 to 30.
```
```
tBodyAcc.mean()-X:This gives the mean of time domain based body acceleration signal along x axis.
tBodyAcc.mean()-Y:This gives the mean of time domain based body acceleration signal along y axis.
tBodyAcc.mean()-Z:This gives the mean of time domain based body acceleration signal along z axis.
tBodyAcc.std()-X:This gives the standard deviation of time domain based body acceleration signal along x axis.
tBodyAcc.std()-Y:This gives the standard deviation of time domain based body acceleration signal along y axis.
tBodyAcc.std()-Z:This gives the standard deviation of time domain based body acceleration signal along z axis.
tGravityAcc.mean()-X:This gives the mean of time domain based gravity acceleration signal along x axis.
tGravityAcc.mean()-Y:This gives the mean of time domain based gravity acceleration signal along y axis.
tGravityAcc.mean()-Z:This gives the mean of time domain based gravity acceleration signal along z axis.
tGravityAcc.std()-X:This gives the standard deviation of time domain based gravity acceleration signal along x axis.
tGravityAcc.std()-Y:This gives the standard deviation of time domain based gravity acceleration signal along y axis.
tGravityAcc.std()-Z:This gives the standard deviation of time domain based gravity acceleration signal along z axis.
tBodyAccJerk.mean()-X:This gives the mean of time domain based body acceleration jerk signal along x axis.
tBodyAccJerk.mean()-Y:This gives the mean of time domain based body acceleration jerk signal along y axis.
tBodyAccJerk.mean()-Z:This gives the mean of time domain based body acceleration jerk signal along z axis.
tBodyAccJerk.std()-X:This gives the standard deviation of time domain based body acceleration jerk signal along x axis.
tBodyAccJerk.std()-Y:This gives the standard deviation of time domain based body acceleration jerk signal along y axis.
tBodyAccJerk.std()-Z:This gives the standard deviation of time domain based body acceleration jerk signal along z axis.
tBodyGyro.mean()-X:This gives the mean of time domain based body gyro signal along x axis.
tBodyGyro.mean()-Y:This gives the mean of time domain based body gyro signal along y axis.
tBodyGyro.mean()-Z:This gives the mean of time domain based body gyro signal along z axis.
tBodyGyro.std()-X:This gives the standard deviation of time domain based body gyro signal along x axis.
tBodyGyro.std()-Y:This gives the standard deviation of time domain based body gyro signal along y axis.
tBodyGyro.std()-Z:This gives the standard deviation of time domain based body gyro signal along z axis.
tBodyGyroJerk.mean()-X:This gives the mean of time domain based body gyro jerksignal along x axis.
tBodyGyroJerk.mean()-Y:This gives the mean of time domain based body gyro jerksignal along yaxis.
tBodyGyroJerk.mean()-Z:This gives the mean of time domain based body gyro jerksignal along zaxis.
tBodyGyroJerk.std-X:This gives the standard deviation of time domain based body gyro jerksignal along x axis.
tBodyGyroJerk.std-YThis gives the standard deviation of time domain based body gyro jerksignal along y axis.
tBodyGyroJerk.std-ZThis gives the standard deviation of time domain based body gyro jerksignal along z axis.
tBodyAccMag.mean():This gives the mean of time domain based body acceleration magnitude.
tBodyAccMag.std:This gives the standard deviation of time domain based body acceleration magnitude.
tGravityAccMag.mean():This gives the mean of time domain based gravity acceleration magnitude.
tGravityAccMag.std:This gives the standard deviation of time domain based gravity acceleration magnitude.
tBodyAccJerkMag.mean():This gives the mean of time domain based body acceleration jerk magnitude.
tBodyAccJerkMag.std():This gives the standard deviation of time domain based body acceleration jerk magnitude.
tBodyGyroMag.mean():This gives the mean of time domain based gyro magnitude.
tBodyGyroMag.std:This gives the standard deviation of time domain based gyro magnitude.
tBodyGyroJerkMag.mean():This gives the mean of time domain based gyro jerk magnitude.
tBodyGyroJerkMag.std:This gives the standard deviation of time domain based gyro jerk magnitude.
fBodyAcc.mean()-X:This gives the mean of frequency domain based body acceleration signal along x axis.
fBodyAcc.mean()-Y:This gives the mean of frequency domain based body acceleration signal along y axis.
fBodyAcc.mean()-Z:This gives the mean of frequency domain based body acceleration signal along z axis.
fBodyAcc.std()-X:This gives the standard deviation of frequency domain based body acceleration signal along x axis.
fBodyAcc.std()-Y:This gives the standard deviation of frequency domain based body acceleration signal along y axis.
fBodyAcc.std()-Z:This gives the standard deviation of frequency domain based body acceleration signal along z axis.
fGravityAcc.mean()-X:This gives the mean of frequency domain based gravity acceleration signal along x axis.
fGravityAcc.mean()-Y:This gives the mean of frequency domain based gravity acceleration signal along y axis.
fGravityAcc.mean()-Z:This gives the mean of frequency domain based gravity acceleration signal along z axis.
fGravityAcc.std()-X:This gives the standard deviation of frequency domain based gravity acceleration signal along x axis.
fGravityAcc.std()-Y:This gives the standard deviation of frequency domain based gravity acceleration signal along y axis.
fGravityAcc.std()-Z:This gives the standard deviation of frequency domain based gravity acceleration signal along z axis.
fBodyAccJerk.mean()-X:This gives the mean of frequency domain based body acceleration jerk signal along x axis.
fBodyAccJerk.mean()-Y:This gives the mean of frequency domain based body acceleration jerk signal along y axis.
fBodyAccJerk.mean()-Z:This gives the mean of frequency domain based body acceleration jerk signal along z axis.
fBodyAccJerk.std()-X:This gives the standard deviation of frequency domain based body acceleration jerk signal along x axis.
fBodyAccJerk.std()-Y:This gives the standard deviation of frequency domain based body acceleration jerk signal along y axis.
fBodyAccJerk.std()-Z:This gives the standard deviation of frequency domain based body acceleration jerk signal along z axis.
fBodyGyro.mean()-X:This gives the mean of frequency domain based body gyro signal along x axis.
fBodyGyro.mean()-Y:This gives the mean of frequency domain based body gyro signal along y axis.
fBodyGyro.mean()-Z:This gives the mean of frequency domain based body gyro signal along z axis.
fBodyGyro.std()-X:This gives the standard deviation of frequency domain based body gyro signal along x axis.
fBodyGyro.std()-Y:This gives the standard deviation of frequency domain based body gyro signal along y axis.
fBodyGyro.std()-Z:This gives the standard deviation of frequency domain based body gyro signal along z axis.
fBodyAccMag.mean():This gives the mean of frequency domain based body acceleration magnitude.
fBodyAccMag.std:This gives the standard deviation of frequency domain based body acceleration magnitude.
fBodyAccJerkMag.mean():This gives the mean of frequency domain based body acceleration jerk magnitude.
fBodyAccJerkMag.std():This gives the standard deviation of frequency domain based body acceleration jerk magnitude.
fBodyGyroMag.mean():This gives the mean of frequency domain based gyro magnitude.
fBodyGyroMag.std:This gives the standard deviation of frequency domain based gyro magnitude.
fBodyGyroJerkMag.mean():This gives the mean of frequency domain based gyro jerk magnitude.
fBodyGyroJerkMag.std:This gives the standard deviation of frequency domain based gyro jerk magnitude.
```








Acknowledgements:
==================


[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
