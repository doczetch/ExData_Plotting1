dataFile <- "/Users/sexybaboy/Documents/Files/Zetch/Online Courses/Data Science Specialization Feb18/GitHub/datasciencecoursera/Exploratory Data Analysis/Course Project 1/household_power_consumption.txt"
data <- read.table(dataFile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(globalActivePower, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()