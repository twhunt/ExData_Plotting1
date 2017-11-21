plot1 <- function() {
  consumption_data <- read_data("./household_power_consumption_chop.txt")
  png("plot1.png", width=480, height=480)
  hist(consumption_data$"Global_active_power-kilowatts",
       col="red",
       main="Global Active Power",
       xlab="Global active power (kilowatts)")
  dev.off()
}
