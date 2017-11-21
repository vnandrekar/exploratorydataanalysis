
getwd()
setwd("C:/Users/vnandrekar/Documents/data")
data_all <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data2 <- subset(data_all, Date %in% c("1/2/2007","2/2/2007"))
hist(data2$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="blue")


##export to PNG
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
