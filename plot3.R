#Exploratory Data - #Assignment #1 - Graph #3

###########################################
#Get Data 
###########################################
source("getData.R")
hpc_df_filter <- getData()
###########################################
#Generate Plot
###########################################
png(filename = "plot3.png", width = 480, height = 480, units = "px", pointsize = 12,  bg = "white")
plot(hpc_df_filter$DateTime, hpc_df_filter$Sub_metering_1, type="l", ylab = "Energy sub metering", xlab="", main = "")
lines(hpc_df_filter$DateTime, hpc_df_filter$Sub_metering_2, col = "RED")
lines(hpc_df_filter$DateTime, hpc_df_filter$Sub_metering_3, col = "BLUE")
legend('topright',,c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = c(1,1,1),col=c('black','red','blue'))
dev.off()

###########################################
