df<- read.csv("D:\\Tableu Dashboard-Malnutrition-Analysis\\dataset1.csv")
df
str(df)

#removed survey year column was not used
df<- df[-4]

#saving the file to new csv file
write.csv(df,"D:\\Tableu Dashboard-Malnutrition-Analysis\\helper1.csv")


df<- read.csv("D:\\Tableu Dashboard-Malnutrition-Analysis\\dataset2.csv")
str(df)
df$Severe.Wasting[is.na(df$Severe.Wasting)]<- 0.0
str(df)
#updating the na values of wasting column to 0 value 
df$Wasting[is.na(df$Wasting)]<- 0.0
df$Wasting
#updating the na values of weight column to 0 value 
df$Overweight[is.na(df$Overweight)]<- 0.0
#updating the na values of stunting column to 0 value 
df$Stunting[is.na(df$Stunting)]<- 0.0
#updating the na values of underweight column to 0 value 
df$Underweight[is.na(df$Underweight)]<- 0.0
df$Overweight

#replacing the blank values in column survey sample with 0 for easier calculation and error using representation in the dataset
df$Survey.Sample..N.[df$Survey.Sample..N.==""]<- "0"
str(df$Survey.Sample..N.)
write.csv(df,"D:\\Tableu Dashboard-Malnutrition-Analysis\\helper2.csv")


df<- read.csv("D:\\Tableu Dashboard-Malnutrition-Analysis\\dataset3.csv")
str(df)
#removing the notes column as was never in use
df<- df[-2]
write.csv(df,"D:\\Tableu Dashboard-Malnutrition-Analysis\\helper3.csv")


df1<- read.csv("D:\\Tableu Dashboard-Malnutrition-Analysis\\helper1.csv")
str(df1)
df2<- read.csv("D:\\Tableu Dashboard-Malnutrition-Analysis\\helper2.csv")
str(df2)
df3<- read.csv("D:\\Tableu Dashboard-Malnutrition-Analysis\\helper3.csv")
str(df3)

df1
df2
df3

df4<- merge(df1,df2,by="X")
df4

df5<- merge(df4,df3,by="X")
df5
str(df5)
write.csv(df5,"D:\\Tableu Dashboard-Malnutrition-Analysis\\final.csv")

