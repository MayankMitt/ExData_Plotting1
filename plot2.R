elecPower<-read.csv('household_power_consumption.txt', sep = ";")
elecPowerGivenDate <- elecPower[elecPower$Date=="1/2/2007" | elecPower$Date=="2/2/2007",]
elecPowerGivenDate$Global_active_power_Num <- as.numeric(as.character(elecPowerGivenDate$Global_active_power))
elecPowerGivenDate$dateTime <- as.factor(paste(elecPowerGivenDate$Date, elecPowerGivenDate$Time))
png("plot2.png", width = 480, height = 480, units = "px")
plot(elecPowerGivenDate$dateTime,elecPowerGivenDate$Global_active_power_Num, ylab="Global Active Power (kilowatts)", type = "n")
lines(elecPowerGivenDate$dateTime,elecPowerGivenDate$Global_active_power_Num)
dev.off()