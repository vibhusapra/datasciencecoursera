corr <- function(directory,threshold=0){
        a<-list.files("specdata")
        for (i in a) {
                data <- read.csv(paste(directory, "/", i, sep =""))
                x<-complete.cases(data)
                j<-sum(as.numeric(x))
                sulfate<-data[,2]
                nitrate<-data[,3]
                b<-cor(sulfate,nitrate)
        }  
        if (j>threshold) 
                return(b) 
        else
                numeric()
}