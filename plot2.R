#Exploratory Data - #Assignment #1 - Graph #2

###########################################
#Get Data 
###########################################
source("getData.R")
hpc_df_filter <- getData()
###########################################
#Generate Plot
###########################################
png(filename = "plot2.png", width = 480, height = 480, units = "px", pointsize = 12,  bg = "white")
plot(hpc_df_filter$DateTime, hpc_df_filter$Global_active_power, type="l", ylab = "Global Active Power (Kilowatts)", xlab="", main = "")
dev.off()

###########################################
