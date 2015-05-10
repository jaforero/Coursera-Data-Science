## Getting the Data
dataF <- "./data/household_power_consumption.txt"
data <- read.table(dataF, header=T, sep=";", stringsAsFactors=F, dec=".", na.strings= "?")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## Subsetting the Data
data<- subset(data, (data$Date == "1/2/2007" | data$Date== "2/2/2007")) 

## Creating Plot 1
png("plot1.png", width=480, height=480)
hist(data$Global_active_power, col= "red", xlab= "Global Active Power (kilowatts)", ylab="Frequency", main= "Global Active Power")
dev.off()
