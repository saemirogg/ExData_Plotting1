#Importing data
data <- read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?")

#subsetting the data for the given dates
data <- subset(data,Date=="1/2/2007" | Date=="2/2/2007")

#plotting histogram
hist(data$Global_active_power,col="red",xlab="Global Active Power (kilowatts)", main="Global Active Power")

