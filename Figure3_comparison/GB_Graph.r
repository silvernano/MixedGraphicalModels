###--------------------------------------------------------------###
### Generating graphs for Poisson-Binary network
### Last updated: Mar.19th 2014
###--------------------------------------------------------------###


GB_Graph<-function(M1, lwb, upb, p){
  q=p;
  
  set.seed(12) 
  
  #####
  for(i in 1:M1){
    gr<-generator(p=p, q=q, lwb=lwb, upb=upb)
    write.table(gr[[1]],file=paste("./Graph/graphGB",2*p, " B", i,".csv",sep=""),row.names=F,col.names=F,sep=",")
    write.table(gr[[2]],file=paste("./Graph/graphGB",2*p, " P", i,".csv",sep=""),row.names=F,col.names=F,sep=",")
    write.table(gr[[3]],file=paste("./Graph/graphGB",2*p, " Phi", i,".csv",sep=""),row.names=F,col.names=F,sep=",")
    
  }
  
}