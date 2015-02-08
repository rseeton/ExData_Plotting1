plot1 <- function() {
## Plot a simple histogram
## Bulk load, could be redesigned
## Subsetting to dates doesn't use 'Date' formats

options(stringsAsFactors = FALSE)

powerdata  <- read.delim("household_power_consumption.txt",  sep=";", header = TRUE, stringsAsFactors=FALSE )
targetdata <- subset(powerdata, Date == "1/2/2007" | Date == "2/2/2007")

png("./plot1.png")
hist(as.numeric(targetdata$Global_active_power), main="Global Active Power", xlab="Global Active Power (kilowatts)",ylab="Frequency", col="Red")
dev.off()
}

