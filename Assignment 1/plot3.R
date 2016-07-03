#Importing data
data <- read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?")

#subsetting the data for the given dates
data <- subset(data,Date=="1/2/2007" | Date=="2/2/2007")

#Combining date and time into one variable
dateAndTime <- paste(data$Date,data$Time)
dateAndTime <- as.POSIXct(dateAndTime,format="%d/%m/%Y %H:%M:%S")

#Creating empty plot
plot(data$Sub_metering_1~dateAndTime,type="n",main="",xlab="",ylab="Energy sub metering")

#Creating lines for different sub meterings
lines(data$Sub_metering_1~dateAndTime)
lines(data$Sub_metering_2~dateAndTime,col="red")
lines(data$Sub_metering_3~dateAndTime,col="blue")

#Creating legend
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"),lty = c(1,1,1))
