source("main.R")

par(mfrow=c(2,2))

with(dataFeb, 
    {plot(strptime(paste(Date,Time), "%d/%m/%Y %H:%M:%S"), as.numeric(Global_active_power), type = "l", xlab="", ylab="Global Active Power");
     plot(strptime(paste(Date,Time), "%d/%m/%Y %H:%M:%S"), as.numeric(Voltage), type = "l", xlab="datetime", ylab="Voltage");
     plot(strptime(paste(Date,Time), "%d/%m/%Y %H:%M:%S"), as.numeric(Sub_metering_1), type = "l", xlab="", ylab="Energy sub metering");
     points(strptime(paste(Date,Time), "%d/%m/%Y %H:%M:%S"), as.numeric(Sub_metering_2), col="red", type="l");
     points(strptime(paste(Date,Time), "%d/%m/%Y %H:%M:%S"), as.numeric(Sub_metering_3), col="blue", type="l");
     legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), pch ="_");
     plot(strptime(paste(Date,Time), "%d/%m/%Y %H:%M:%S"), as.numeric(Global_reactive_power), type = "l", xlab="datetime", ylab="Global_reactive_power")})

dev.copy(png, "plot4.png", width=480, height=480)
dev.off()