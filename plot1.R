test <- function(){
png(file="plot1.png", width=480, height=480)
data<-read.table('household_power_consumption.txt',header = TRUE,sep=';')
sub <- subset(data, Date == '1/2/2007' | Date == '2/2/2007')
attach(sub)
hist(as.numeric(as.character(Global_active_power)), breaks = 12, col='red', main='Global Active Power', xlab='Global Active Power (kilowatts)', ylab='Frequency')
dev.off()
}
test()