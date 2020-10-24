complete<-function(directory,id = 1:332){
    id_files<-list.files(directory, full.names = TRUE)
    obs<- numeric()
    for (i in id ){
        file<-read.csv(id_files[i])
        obs<-c(obs,sum(complete.cases(file)))
    }
    result<-data.frame(id,obs)
    colnames(result)<-c("id","nobs")
    result
}