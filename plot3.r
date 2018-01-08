with(sub, plot(dt,sub$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering"))
with(sub,lines(dt, sub$Sub_metering_1, col="black"))
with(sub,lines(dt, sub$Sub_metering_2, col="red"))
with(sub,lines(dt, sub$Sub_metering_3, col="blue"))
legend("topright", lty=1, col=c("black","red","blue"), 
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex=0.5)
dev.copy(png,file="Plot3")
dev.off()