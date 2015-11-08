data = read.table("household_power_consumption.txt", sep=";", header = TRUE)
data$Date = as.Date(data[,1], format = "%d/%m/%Y")
dataToUse <- data[data$Date >= "2007-02-01" & data$Date <= "2007-02-02", ]
png(file = "plot1.png")
hist(as.numeric(as.character(dataToUse[,3])), breaks = 12, col = "red", main = "Global Active Power", ylab = "Frequency", xlab = "Global Active Power [kW]")
dev.off()