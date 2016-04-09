data <- read.csv("./data/household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, 
	stringsAsFactors=F, comment.char="", quote='\"')
subsetdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

png("plot1.png")
with(subsetdata,hist(Global_active_power,main = "Global Active Power",col='red',xlab = "Global Active Power (kilowatts)"))
dev.off()

