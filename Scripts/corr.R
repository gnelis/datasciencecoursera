corr<-function(directory, threshold = 0){
    id_files<-list.files(directory, full.names = TRUE)
    result<-numeric()
    for(i in seq_along(id_files)){
        file<-read.csv(id_files[i])
        obs<-sum(complete.cases(file))
        if (obs > threshold){
            x<-file[,"sulfate"]
            y<-file[,"nitrate"]
            result<-c(result,cor(x,y,use = "complete.obs"))
        }
    }
    result
}