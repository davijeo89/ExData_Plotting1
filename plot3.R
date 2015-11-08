data = read.table("household_power_consumption.txt", sep=";", header = TRUE)##Reading all the data
data$Date = as.Date(data[,1], format = "%d/%m/%Y")##Setting the first column as a data
datas = data[data$Date >= "2007-02-01" & data$Date <= "2007-02-02", ]##extracted the two dates of importance
times = strptime(paste(datas[,1], datas[,2]), format = "%Y-%m-%d %H:%M:%S")##extracting the first two columns and setting time to a date/time column
png(file = "plot3.png")
plot(times, datas$Sub_metering_1, ylab = "Energy Sub Metering", type = "l", xlab="", col ="black", ylim = range(c(0,40)))
#par(new=TRUE)
lines(times, datas$Sub_metering_2, col="red", type = "l", xlab="", ylab="",ylim = range(c(0,40)))
#par(new=TRUE)
lines(times, datas$Sub_metering_3, col="blue", type = "l", xlab="", ylab="",ylim = range(c(0,40)))
legend(x="topright", lty=c(1,1,1), col=c("black","red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off() 