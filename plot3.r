
setwd("~/documents/academia/coursera/data specialisation/Exploratory Analysis/project 1")
total<-read.table("household_power_consumption.txt", header=TRUE, sep=";")  #read in data table
sub<-total[which(total$Date=="1/2/2007"|total$Date=="2/2/2007"),] # select desired rows as called by the project
sub$Global_active_power<-as.numeric(sub$Global_active_power)      # reassign character vector to numeric 
sub$dt<-strptime(paste(sub$Date,sub$Time),"%d/%m/%Y %H:%M:%S")    # reconstruct date variable

png(file="Plot3", width=480, height=480)                          # output as a png file
with(sub, plot(dt,sub$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering"))
with(sub,lines(dt, sub$Sub_metering_1, col="black"))
with(sub,lines(dt, sub$Sub_metering_2, col="red"))
with(sub,lines(dt, sub$Sub_metering_3, col="blue"))
legend("topright", lty=1, col=c("black","red","blue"), 
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex=0.6)
dev.off()