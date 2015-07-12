#Exploratory Data - Assignment #1

#Function to read, unpack and prepare the data for the graphs
getData <- function() {
	download.file("https://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip", destfile = "./household_power_Consumption.zip", method = "curl")
	unzip("./household_power_consumption.zip")

	#From inspection, the file has semicolon separators, set dates type and isolate to 2007-02-01 & 2007-02-02
	hpc <- read.delim("./household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE, header = TRUE)
	hpc_df <- data.frame(hpc)
	hpc_df$DateTime <- strptime(paste(hpc_df$Date, hpc_df$Time), "%d/%m/%Y %H:%M") 
	hpc_df_filter <-  subset(hpc_df, as.Date(DateTime) >= "2007-02-01" & as.Date(DateTime) <= "2007-02-02")
}
