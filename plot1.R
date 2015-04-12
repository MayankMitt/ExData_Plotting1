elecPower<-read.csv('household_power_consumption.txt', sep = ";")
elecPowerGivenDate <- elecPower[elecPower$Date=="1/2/2007" | elecPower$Date=="2/2/2007",]
elecPowerGivenDate$Global_active_power_Num <- as.numeric(as.character(elecPowerGivenDate$Global_active_power))
png("plot1.png", width = 480, height = 480, units = "px")
hist(elecPowerGivenDate$Global_active_power_Num, col="Red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()