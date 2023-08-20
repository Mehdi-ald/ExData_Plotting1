PowerData <- read.table("./household_power_consumption.txt", sep = ";", header = TRUE)
PowerData$Date <- as.Date(PowerData$Date, "%d/%m/%Y")
library(dplyr)
Subset_PowerData <- filter(PowerData, Date == as.Date("2007-02-01") | Date == as.Date("2007-02-02"))
Subset_PowerData$Global_active_power <- as.numeric(Subset_PowerData$Global_active_power, na.rm = TRUE)
png("Plot_1.png", width = 480, height = 480)
hist(Subset_PowerData$Global_active_power, main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()
