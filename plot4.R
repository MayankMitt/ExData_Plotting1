elecPower<-read.csv('household_power_consumption.txt', sep = ";")
elecPowerGivenDate <- elecPower[elecPower$Date=="1/2/2007" | elecPower$Date=="2/2/2007",]
elecPowerGivenDate$Sub_metering_1_Num <- as.numeric(as.character(elecPowerGivenDate$Sub_metering_1))
elecPowerGivenDate$Sub_metering_2_Num <- as.numeric(as.character(elecPowerGivenDate$Sub_metering_2))
elecPowerGivenDate$Sub_metering_3_Num <- as.numeric(as.character(elecPowerGivenDate$Sub_metering_3))
elecPowerGivenDate$Global_active_power_Num <- as.numeric(as.character(elecPowerGivenDate$Global_active_power))
elecPowerGivenDate$Global_reactive_power_Num <- as.numeric(as.character(elecPowerGivenDate$Global_reactive_power))
elecPowerGivenDate$Voltage_Num <- as.numeric(as.character(elecPowerGivenDate$Voltage))
elecPowerGivenDate$dateTime <- as.factor(paste(elecPowerGivenDate$Date, elecPowerGivenDate$Time))
png("plot4.png", width = 480, height = 480, units = "px")
par(mfrow = c(2,2))
plot(elecPowerGivenDate$dateTime,elecPowerGivenDate$Global_active_power_Num, ylab="Global Active Power", type = "n")
lines(elecPowerGivenDate$dateTime,elecPowerGivenDate$Global_active_power_Num)

plot(elecPowerGivenDate$dateTime,elecPowerGivenDate$Voltage_Num, ylab="Voltage", type = "n")
lines(elecPowerGivenDate$dateTime,elecPowerGivenDate$Voltage_Num)

plot(elecPowerGivenDate$dateTime,elecPowerGivenDate$Sub_metering_1_Num, ylab="Energy Sub metering", type = "n")
lines(elecPowerGivenDate$dateTime,elecPowerGivenDate$Sub_metering_1_Num, col="black")
lines(elecPowerGivenDate$dateTime,elecPowerGivenDate$Sub_metering_2_Num, col="red")
lines(elecPowerGivenDate$dateTime,elecPowerGivenDate$Sub_metering_3_Num, col="blue")
legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd=2, bty="n")

plot(elecPowerGivenDate$dateTime,elecPowerGivenDate$Global_reactive_power_Num, ylab="Global_reactive_power", type = "n")
lines(elecPowerGivenDate$dateTime,elecPowerGivenDate$Global_reactive_power_Num)
dev.off()