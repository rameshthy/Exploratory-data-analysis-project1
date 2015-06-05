
## -------Get the data from the source and unzip the package--------

# if(!file.exists("./Data")){dir.create("./Data")}
# fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
# file<-"./data/household_power_consumption.zip"
# download.file(fileUrl,file,method="curl")
# unzip(zipfile=file,exdir="./Data")
# ##path<- file.path("./Data" , "household_power_consumption.zip")

dataFile <- "./Data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()