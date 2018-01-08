
setwd("~/documents/academia/coursera/data specialisation/Exploratory Analysis/project 1")
total<-read.table("household_power_consumption.txt", header=TRUE, sep=";")  #read in data table
sub<-total[which(total$Date=="1/2/2007"|total$Date=="2/2/2007"),] # select desired rows as called by the project
sub$Global_active_power<-as.numeric(sub$Global_active_power)      # reassign character vector to numeric 

sub$dt<-strptime(paste(sub$Date,sub$Time),"%d/%m/%Y %H:%M:%S")    # reconstruct date variable

png(file="plot2", width=480, height=480)                          # output as a png file
with(sub, plot(dt,Global_active_power, type="n", xlab=""))
with(sub,lines(dt, Global_active_power))
dev.off()