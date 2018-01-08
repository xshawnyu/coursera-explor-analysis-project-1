par(mfrow=c(2,2))
with(sub,{
  plot(dt,Global_active_power, type="n",ylab="Global Active Power", xlab="")
  lines(dt,Global_active_power)
  plot(dt,Voltage, type="n", xlab="datetime")
  lines(dt,Voltage)
  plot(dt,Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
  lines(dt, Sub_metering_1, col="black")
  lines(dt, Sub_metering_2, col="red")
  lines(dt, Sub_metering_3, col="blue")
  legend("topright", lty=1, col=c("black","red","blue"), 
         legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), cex=0.5)
  plot(dt,Global_reactive_power,type="n",xlab="datetime") 
  lines(dt, Global_reactive_power)
})
dev.copy(png,file="Plot4")
dev.off()