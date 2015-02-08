plot3 <- function() {
## Plot a simple histogram
## Bulk load, could be redesigned

options(stringsAsFactors = FALSE)

powerdata  <- read.delim("household_power_consumption.txt",  sep=";", header = TRUE, stringsAsFactors=FALSE )
targetdata <- subset(powerdata, Date == "1/2/2007" | Date == "2/2/2007")

targetdata$datetime <- as.POSIXlt(paste(as.Date(targetdata$Date, format="%d/%m/%Y"), targetdata$Time, sep=" "))

#png(filename="./plot2.png") 	#Prepare file for plot
plot(targetdata$datetime, as.numeric(targetdata$Sub_metering_1 	), ylab="Global Active Power (kilowatts)", xlab="",type="l")
par(new=T)
plot(as.numeric(targetdata$Sub_metering_2 ),type="l",axes=F,col=3)
par(new=t)
plot(as.numeric(targetdata$Sub_metering_3 ),type="l",axes=F,col=4)
par(new=F)
#dev.off()			#Close file for plot

}

