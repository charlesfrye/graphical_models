library(foreign)

filepaths <- commandArgs(trailingOnly<-TRUE)

for (filepath in filepaths){
	filename = basename(filepath)
	folder = dirname(filepath)
	filebase <- substr(filename, 1, nchar(filename)-4)
	data <- read.dta(filepath)
	destination <- paste(folder,
			paste(filebase, ".csv", sep = ""),
			sep = "/")
	write.csv(data, destination)
}
