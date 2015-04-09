test <- function(){
png(file="plot3.png", width=480, height=480)
data<-read.table('household_power_consumption.txt',header = TRUE,sep=';')
sub <- subset(data, Date == '1/2/2007' | Date == '2/2/2007')
attach(sub)
datetime <- strptime(paste(sub$Date, sub$Time), format = "%d/%m/%Y %H:%M:%S")
plot(datetime, as.numeric(as.character(Sub_metering_1)), type="l", xlab="", ylab="Energy sub metering")
lines(datetime, as.numeric(as.character(Sub_metering_2)), col = "red")
lines(datetime, as.numeric(as.character(Sub_metering_3)), col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"), lty=c(1,1))
dev.off()
}
test()