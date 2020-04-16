Original Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


For this assignment
=================
I have updated the variable names for easier understanding. Each variable represents either the time or frequency domain signals generated from body/gravity, by the accelerometer or the gyroscope. Three dimensional data are sampled for each variable (XYZ directions), with only mean and std being reported. Full list of variables are the following:


List of variables
=================
1	Time.Body.Accelerometer.mean...X\
2	Time.Body.Accelerometer.mean...Y\
3	Time.Body.Accelerometer.mean...Z\
4	Time.Body.Accelerometer.std...X\
5	Time.Body.Accelerometer.std...Y\
6	Time.Body.Accelerometer.std...Z\
7	Time.Gravity.Accelerometer.mean...X\
8	Time.Gravity.Accelerometer.mean...Y\
9	Time.Gravity.Accelerometer.mean...Z\
10	Time.Gravity.Accelerometer.std...X\
11	Time.Gravity.Accelerometer.std...Y\
12	Time.Gravity.Accelerometer.std...Z\
13	Time.Body.AccelerometerJerk.mean...X\
14	Time.Body.AccelerometerJerk.mean...Y\
15	Time.Body.AccelerometerJerk.mean...Z\
16	Time.Body.AccelerometerJerk.std...X\
17	Time.Body.AccelerometerJerk.std...Y\
18	Time.Body.AccelerometerJerk.std...Z\
19	Time.Body.Gyroscope.mean...X\
20	Time.Body.Gyroscope.mean...Y\
21	Time.Body.Gyroscope.mean...Z\
22	Time.Body.Gyroscope.std...X\
23	Time.Body.Gyroscope.std...Y\
24	Time.Body.Gyroscope.std...Z\
25	Time.Body.GyroscopeJerk.mean...X\
26	Time.Body.GyroscopeJerk.mean...Y\
27	Time.Body.GyroscopeJerk.mean...Z\
28	Time.Body.GyroscopeJerk.std...X\
29	Time.Body.GyroscopeJerk.std...Y\
30	Time.Body.GyroscopeJerk.std...Z\
31	Time.Body.Accelerometer.Magnitude.mean..\
32	Time.Body.Accelerometer.Magnitude.std..\
33	Time.Gravity.Accelerometer.Magnitude.mean..\
34	Time.Gravity.Accelerometer.Magnitude.std..\
35	Time.Body.AccelerometerJerk.Magnitude.mean..\
36	Time.Body.AccelerometerJerk.Magnitude.std..\
37	Time.Body.Gyroscope.Magnitude.mean..\
38	Time.Body.Gyroscope.Magnitude.std..\
39	Time.Body.GyroscopeJerk.Magnitude.mean..\
40	Time.Body.GyroscopeJerk.Magnitude.std..\
41	Freq.Body.Accelerometer.mean...X\
42	Freq.Body.Accelerometer.mean...Y\
43	Freq.Body.Accelerometer.mean...Z\
44	Freq.Body.Accelerometer.std...X\
45	Freq.Body.Accelerometer.std...Y\
46	Freq.Body.Accelerometer.std...Z\
47	Freq.Body.AccelerometerJerk.mean...X\
48	Freq.Body.AccelerometerJerk.mean...Y\
49	Freq.Body.AccelerometerJerk.mean...Z\
50	Freq.Body.AccelerometerJerk.std...X\
51	Freq.Body.AccelerometerJerk.std...Y\
52	Freq.Body.AccelerometerJerk.std...Z\
53	Freq.Body.Gyroscope.mean...X\
54	Freq.Body.Gyroscope.mean...Y\
55	Freq.Body.Gyroscope.mean...Z\
56	Freq.Body.Gyroscope.std...X\
57	Freq.Body.Gyroscope.std...Y\
58	Freq.Body.Gyroscope.std...Z\
59	Freq.Body.Accelerometer.Magnitude.mean..\
60	Freq.Body.Accelerometer.Magnitude.std..\
61	Freq.BodyBody.AccelerometerJerk.Magnitude.mean..\
62	Freq.BodyBody.AccelerometerJerk.Magnitude.std..\
63	Freq.BodyBody.Gyroscope.Magnitude.mean..\
64	Freq.BodyBody.Gyroscope.Magnitude.std..\
65	Freq.BodyBody.GyroscopeJerk.Magnitude.mean..\
66	Freq.BodyBody.GyroscopeJerk.Magnitude.std..
