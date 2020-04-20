# Downloading File
download.file("https://github.com/markziemann/SLE712_files/blob/master/bioinfo_asst3_part1_files/mydata.tsv", destfile = "mydata.tsv")
x <- read.table("mydata.tsv")
head(x) 
str(x)

x <- read.table("mydata.tsv", header = TRUE)
head(x)
str(x)

x <- read.table("mydata.tsv", header = TRUE, stringsAsFactors = FALSE)
head(x)
str(x)

x <- read.table("mydata.tsv", header = TRUE, stringsAsFactors = FALSE, row.names = 1) # 1st way to save same things
head(x)
str(x)

x <- read.csv("mydata.tsv", sep="\t", stringsAsFactors = FALSE, row.names = 1) # 2nd ways to achienve same things
head(x)
str(x)

save.image("mydata.RData") # save data
load("myadata.RData") # load the data
