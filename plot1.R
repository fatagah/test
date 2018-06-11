power <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
power$Date <- as.Date(power$Date, format ="%d/%m/%Y")
df <- power[(power$Date=="2007-02-01") | (power$Date=="2007-02-02"),]
df$Global_active_power <- as.numeric(as.character(df$Global_active_power))
hist(df$Global_active_power,  xlab = "Global Active Power (kilowatts)", main = "Gobal Active Power", col = "red")
table(df$Global_active_power)

dev.copy(png, file = "plot1.png", width = 480, height = 480)
dev.off()

