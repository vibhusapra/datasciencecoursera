pollutantmean <- function(directory, pollutant, id= 1:332) {
        filelist <- list.files(path= directory, pattern = ".csv", full.names = TRUE)
        values <- numeric()
        
        for(i in id) {
                data1 <- read.csv(filelist[i])
                values <- c(values, data1[["pollutant"]])
        }
        mean(values, na.rm= TRUE)
}