data = read.table("household_power_consumption.txt", sep=";", header = TRUE)##Reading all the data
data$Date = as.Date(data[,1], format = "%d/%m/%Y")##Setting the first column as a data
datas = data[data$Date >= "2007-02-01" & data$Date <= "2007-02-02", ]##extracted the two dates of importance
times = strptime(paste(datas[,1], datas[,2]), format = "%Y-%m-%d %H:%M:%S")##extracting the first two columns and setting time to a date/time column
png(file = "plot2.png")
plot(times, datas$Global_active_power, ylab = "Global Active Power [kW]", type = "l", xlab="")
dev.off()