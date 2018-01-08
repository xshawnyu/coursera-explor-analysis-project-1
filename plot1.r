
# R plotting project 1 for Coursera Exploratory Analysis Module
# https://www.coursera.org/learn/exploratory-data-analysis/peer/ylVFo/course-project-1
# Author Shawn Yu; Date 2018-1-7
setwd("~/documents/academia/coursera/data specialisation/Exploratory Analysis/project 1")
total<-read.table("household_power_consumption.txt", header=TRUE, sep=";")
sub<-total[which(total$Date=="1/2/2007"|total$Date=="2/2/2007"),] # select desired rows as called by the project
sub$Global_active_power<-as.numeric(sub$Global_active_power)      # reassign character vector to numeric 
png(file="plot1", width=480, height=480)
hist(sub$Global_active_power,xlab="Global_Active_Power(kilowatts)", col="red", main="Global Active Power")
dev.off()