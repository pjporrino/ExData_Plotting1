source("main.R")

par(mfrow=c(1,1))

with(dataFeb, 
     {plot(strptime(paste(Date,Time), "%d/%m/%Y %H:%M:%S"), as.numeric(Sub_metering_1), type = "l", xlab="", ylab="Energy sub metering");
      points(strptime(paste(Date,Time), "%d/%m/%Y %H:%M:%S"), as.numeric(Sub_metering_2), col="red", type="l");
      points(strptime(paste(Date,Time), "%d/%m/%Y %H:%M:%S"), as.numeric(Sub_metering_3), col="blue", type="l");
      legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), pch ="_")})
dev.copy(png, "plot3.png", width=480, height=480)
dev.off()
