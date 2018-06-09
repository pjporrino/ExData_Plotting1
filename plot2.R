source("main.R")

par(mfrow=c(1,1))

with(dataFeb, plot(strptime(paste(Date,Time), "%d/%m/%Y %H:%M:%S"), as.numeric(Global_active_power), type = "l", xlab="", ylab="Global Active Power (Kilowatts)"))
dev.copy(png, "plot2.png", width=480, height=480)
dev.off()