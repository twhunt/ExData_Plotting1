plot2 <- function() {
  consumption_data <- read_data("./household_power_consumption_chop.txt")
  png("plot2.png", width=480, height=480)
  plot(consumption_data$times, consumption_data$"Global_active_power-kilowatts",
       type="l",
       main="Global Active Power vesus time",
       xlab="Time",
       ylab="Global active power (kilowatts)")
  dev.off()
}
