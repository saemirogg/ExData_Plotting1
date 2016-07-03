#Importing data
data <- read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?")

#subsetting the data for the given dates
data <- subset(data,Date=="1/2/2007" | Date=="2/2/2007")

#Combining date and time into one variable
dateAndTime <- paste(data$Date,data$Time)
dateAndTime <- as.POSIXct(dateAndTime,format="%d/%m/%Y %H:%M:%S")

#Creating empty plot
plot(data$Global_active_power~dateAndTime,type="n",main="",xlab="",ylab="Global Active Power (kilowatts)")

#Putting the line on the plot
lines(data$Global_active_power~dateAndTime)
