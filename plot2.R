plot2 <- function() {
## Plot a simple histogram
## Bulk load, could be redesigned
## Subsetting to dates doesn't use 'Date' formats

options(stringsAsFactors = FALSE)

powerdata  <- read.delim("household_power_consumption.txt",  sep=";", header = TRUE, stringsAsFactors=FALSE )
targetdata <- subset(powerdata, Date == "1/2/2007" | Date == "2/2/2007")

targetdata$datetime <- as.POSIXlt(paste(as.Date(targetdata$Date, format="%d/%m/%Y"), targetdata$Time, sep=" "))

png("./plot2.png")
plot(targetdata$datetime, as.numeric(targetdata$Global_active_power), ylab="Global Active Power (kilowatts)", xlab="",type="l")
dev.off()			#Close file for plot

}

