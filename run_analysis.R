# Acknowledgements
#License:
#  ========
#  Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

#[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

#This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

#Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
# The goal is to prepare tidy data that can be used for later analysis
#setting the working directory
setwd("~/R wd/UCI HAR Dataset")
dir_names <- c("test","train")
#loading the features files
features <- read.table("features.txt")
#loading the activities file
activity_labels <- read.table("activity_labels.txt")


#loading the test directory and its contents  
    dir <- paste("~/R wd/UCI HAR Dataset",dir_names[1],sep = "/")
    setwd(dir)
    subject_test <- read.table("subject_test.txt")
    x_test <- read.table("X_test.txt")
    y_test <- read.table("y_test.txt")
  

#loading the train directory and its contents   
    dir <- paste("~/R wd/UCI HAR Dataset",dir_names[2],sep = "/")
    setwd(dir)
    subject_train <- read.table("subject_train.txt")
    x_train <- read.table("X_train.txt")
    y_train <- read.table("y_train.txt")

    
#resetting the working directory
setwd("~/R wd/UCI HAR Dataset")


#providing descriptive names to the "y" file present for both the directory
for(j in 1:6){
   y_test[y_test==j] <- as.character(activity_labels$V2[j])
   y_train[y_train==j] <- as.character(activity_labels$V2[j])
 }

#setting the coloumn names  
  colnames(x_test) <- features$V2
  colnames(x_train) <- features$V2

  
#filtering out only mean and standard-deviation columns for all variables  
x_test <- x_test[,(grepl("*mean()",features$V2)
            &!grepl("*meanFreq()",features$V2))
            |grepl("*std()",features$V2)]
x_train <- x_train[,(grepl("*mean()",features$V2)
                   &!grepl("*meanFreq()",features$V2))
                 |grepl("*std()",features$V2)]

#creating the test data frame
test <- data.frame("activity"=y_test,
                   "subjects"=subject_test,x_test)

#creating the train data frame
train <- data.frame("activity"=y_train,
                    "subjects"=subject_train,x_train,fix.empty.names = FALSE)

#combining test and train data frame to form one data
data <- rbind.data.frame(test,train)

colnames(data) <- c("activity","subjects",
                    as.character(features$V2[(grepl("*mean()",features$V2)
                    &!grepl("*meanFreq()",features$V2)
                    |grepl("*std()",features$V2))]))

#writing the obtained data to a csv file
write.csv(data,file="tidy_data.csv")



#splitting the data frame based on activity
data1 <- split.data.frame(data,data$activity)

walking <- NULL
walking_upstairs <- NULL
walking_downstairs <- NULL
sitting <- NULL
standing <- NULL
laying <- NULL

#Calculating the averages for each activity and subject for all available variables
for (i in 1:30) {
  w <- sapply(data1$WALKING[data1$WALKING$subjects==i
                                  ,3:length(names(data))], mean)
  wal <- as.data.frame(w)
  walking <- rbind.data.frame(walking,wal$w)
  
  walking_u <- sapply(data1$WALKING_UPSTAIRS[data1$WALKING_UPSTAIRS$subjects==i
                                                    ,3:length(names(data))], mean)
  walking_ups <- as.data.frame(walking_u)
  walking_upstairs <- rbind.data.frame(walking_upstairs,walking_ups$walking_u)
  
  walking_d <- sapply(data1$WALKING_DOWNSTAIRS[data1$WALKING_DOWNSTAIRS$subjects==i
                                                      ,3:length(names(data))], mean)
  walking_dow <- as.data.frame(walking_d)
  walking_downstairs <- rbind.data.frame(walking_downstairs,walking_dow$walking_d)
  
  s <- sapply(data1$SITTING[data1$SITTING$subjects==i
                                             ,3:length(names(data))], mean)
  sit <- as.data.frame(s)
  sitting <- rbind.data.frame(sitting,sit$s)

  st <- sapply(data1$STANDING[data1$STANDING$subjects==i
                                   ,3:length(names(data))], mean)  
  stand <- as.data.frame(st)
  standing <- rbind.data.frame(standing,stand$st)
  
  l <- sapply(data1$LAYING[data1$LAYING$subjects==i
                                  ,3:length(names(data))], mean)  
  lay <- as.data.frame(l)
  laying <- rbind.data.frame(laying,lay$l)
  
}

#setting the column names for the obtained data
colnames(walking) <- names(data[3:68])
colnames(walking_upstairs) <- names(data[3:68])
colnames(walking_downstairs) <- names(data[3:68])
colnames(sitting) <- names(data[3:68])
colnames(standing) <- names(data[3:68])
colnames(laying) <- names(data[3:68])

#coercing the obtained data frame with all required columns
walking <- data.frame(activity="WALKING",subject=1:30,walking)
walking_upstairs <- data.frame(activity="WALKING_UPSTAIRS",subject=1:30,walking_upstairs)
walking_downstairs <- data.frame(activity="WALKING_DOWNSTAIRS",subject=1:30,walking_downstairs)
sitting <- data.frame(activity="SITTING",subject=1:30,sitting)
standing <- data.frame(activity="STANDING",subject=1:30,standing)
laying <- data.frame(activity="LAYING",subject=1:30,laying)

#combining the obtained variables into one data frame
data2 <- rbind.data.frame(walking,walking_upstairs,walking_downstairs
                          ,sitting,standing,laying)
colnames(data2) <- c("activity","subjects",names(data[3:68]))

#writing the obtained data to a csv file
write.csv(data2,"tidy_data_average.csv")
