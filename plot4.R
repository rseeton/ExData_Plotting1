#Exploratory Data - #Assignment #1 - Graph #4

###########################################
#Get Data 
###########################################
source("getData.R")
getData()
###########################################
#Generate Plot
###########################################
png(filename = "plot4.png", width = 480, height = 480, units = "px", pointsize = 12,  bg = "white")
par(mfrow = c(2, 2))
with (hpc_df_filter, {
  plot(hpc_df_filter$DateTime, hpc_df_filter$Global_active_power, type="l", ylab = "Global Active Power (Kilowatts)", xlab="", main = "")
  plot(hpc_df_filter$DateTime, hpc_df_filter$Voltage, type="l", ylab = "Voltage", xlab="datetime", main = "")
  plot(hpc_df_filter$DateTime, hpc_df_filter$Sub_metering_1, type="l", ylab = "Energy sub metering", xlab="", main = "")
    lines(hpc_df_filter$DateTime, hpc_df_filter$Sub_metering_2, col = "RED")
    lines(hpc_df_filter$DateTime, hpc_df_filter$Sub_metering_3, col = "BLUE")
    legend('topright',,c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = c(1,1,1),col=c('black','red','blue'))
  plot(hpc_df_filter$DateTime, hpc_df_filter$Global_reactive_power, type="l",  xlab="datatime", ylab="Global_reactive_power" , main = "")
})
dev.off()
###########################################
