source("main.R")

par(mfrow=c(1,1))

with(dataFeb, hist(as.numeric(Global_active_power), xlab = "Global Active Power (Kilowatts)", col="red", main = "Global Active Power"))
dev.copy(png, "plot1.png", width=480, height=480)
dev.off()
