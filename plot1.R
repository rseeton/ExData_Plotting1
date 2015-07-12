#Exploratory Data - #Assignment #1 - Graph #1

###########################################
#Get Data 
###########################################
source("getData.R")
hpc_df_filter <- getData()
###########################################
#Generate Plot
###########################################
png(filename = "plot1.png", width = 480, height = 480, units = "px", pointsize = 12,  bg = "white")
hist(as.numeric(as.character(hpc_df_filter$Global_active_power)), xlab = "Global Active Power (Kilowatts)", col = "RED", main = "Global Active Power")
dev.off()

###########################################
