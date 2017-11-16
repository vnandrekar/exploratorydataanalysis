
getwd()
setwd("C:/Users/vnandrekar/Documents/data")
data_all <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data2 <- subset(data_full, Date %in% c(""1/2/2007","2/2/2007""))
hist(data2$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="blue")

png("plot1.png", width=480, height=480)
dev.off()
