read_data <- function(path) {
  power_consumption <- read.csv(path, sep=";")
  names(power_consumption) <- c("Date", "Time", "Global_active_power-kilowatts", "Global_reactive_power-kilowatts", "Voltage-volts", "Global_intensity_amperes", "Sub_metering_1_watt-hour", "Sub_metering_2_watt-hour", "Sub_metering_3_watt-hour")
  times <- strptime(paste(power_consumption$Date, power_consumption$Time), format="%d/%m/%Y %H:%M:%S")
  names(times) <- c("times")
  power_consumption <- cbind(times, power_consumption)
  return(power_consumption) 
}