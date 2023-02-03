# Script Settings and Resources
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Data Import and Cleaning
raw_df = read.csv("../data/week3.csv")
raw_df$timeStart = as.POSIXct(raw_df$timeStart, format = "%Y-%m-%d %H:%M:%S")
raw_df$timeEnd = as.POSIXct(raw_df$timeEnd, format = "%Y-%m-%d %H:%M:%S")
clean_df = raw_df[!grepl(pattern = "2017-06", raw_df$timeStart),]
clean_df = clean_df[clean_df$q6 == 1,]