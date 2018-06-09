# Check if data file exists or download it

if (!file.exists("household_power_consumption.txt")){
    print("I cannot locate text data file in your Working Directory-WD-");
    x <- menu(c("Yes", "No"), title = "Do you want me to download and unzip data from UCI Web Site\nand place it into your current working directory?");
    if (x == 1){download.file("https://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip",
                              destfile ="household_power_consumption.zip", method = "curl");
                unzip("household_power_consumption.zip")}                 
    else { stop("Please place txt file in your WD or re-run code and let me do it for you")}}

# Read data file if it is not in the memory and/or subset data

if(!c("dataFeb") %in% ls()){
    if(!c("dataRaw") %in% ls()){
        print("Reading data...depending on your processing capacity, it could take a while...");
        dataRaw <- read.table("household_power_consumption.txt", header = TRUE, sep=";", colClasses = "character", na.strings = "?");}
     dataFeb <- subset(dataRaw, as.Date(dataRaw$Date, "%d/%m/%Y")>"2007-01-31" & as.Date(dataRaw$Date, "%d/%m/%Y")<"2007-02-03")}




  
  



