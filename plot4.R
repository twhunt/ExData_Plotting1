plot4 <- function() {
  
  consumption_data <- read_data("./household_power_consumption_chop.txt")
  png("plot4.png", width=480, height=480)
  par(mfrow=c(2,2))

  plot(consumption_data$times, consumption_data$"Global_active_power-kilowatts",
       type="l",
       main="Global Active Power vesus time",
       xlab="Time",
       ylab="Global active power (kilowatts)")
  
  plot(consumption_data$times, consumption_data$"Voltage-volts",
       type="l",
       main="Voltage vesus time",
       xlab="Time",
       ylab="Voltage (kilowatts)")
  
  plot(consumption_data$times, consumption_data$"Sub_metering_1_watt-hour",
       type="l",
       main="Energy sub metering vesus time",
       xlab="Time",
       ylab="Energy sub metering (watt-hours)",
       col="black")
  lines(consumption_data$times, consumption_data$"Sub_metering_2_watt-hour",
        col="blue")
  lines(consumption_data$times, consumption_data$"Sub_metering_3_watt-hour",
        col="red")
  legend(legend=c("sub metering 1", "sub metering 2", "sub metering 3"),
         x="topright",
         col=c("black", "blue", "red"),
         lty=c(1,2,3))
  
  plot(consumption_data$times, consumption_data$"Global_reactive_power-kilowatts",
       type="l",
       main="Global Reactive Power vesus time",
       xlab="Time",
       ylab="Global reactive power (kilowatts)")
  
  
  dev.off()
}
