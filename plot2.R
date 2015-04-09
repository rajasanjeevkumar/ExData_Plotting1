test <- function(){
png(file="plot2.png", width=480, height=480)
data<-read.table('household_power_consumption.txt',header = TRUE,sep=';')
sub <- subset(data, Date == '1/2/2007' | Date == '2/2/2007')
attach(sub)
datetime <- strptime(paste(sub$Date, sub$Time), format = "%d/%m/%Y %H:%M:%S")
plot(datetime, as.numeric(as.character(Global_active_power)), type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
}
test()