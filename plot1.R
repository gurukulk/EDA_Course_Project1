#Reading the data file, the memory rquired to open this file of 2,075,259 rows and 9 columns came out to be 142 Mb. 
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]   #subset the data table for 1st & 2nd date of february
globalActivePower <- as.numeric(subSetData$Global_active_power)  #GlobalActivepower is being converted to numeric
png("plot1.png", width=480, height=480)  #creating a png file plot1.png with width & height 0f 480 pixels
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")  #creating a hostogram & saving the data in png file
dev.off()


