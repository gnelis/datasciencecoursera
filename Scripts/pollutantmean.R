pollutantmean <- function(directory, pollutant, id = 1:332){
    id_files<-list.files(directory, full.names = TRUE)
    values<- numeric()
    for(i in id){
        file<-read.csv(id_files[i])
        values<-c(values,file[,pollutant])
    }
    mean(values, na.rm = TRUE)
}
