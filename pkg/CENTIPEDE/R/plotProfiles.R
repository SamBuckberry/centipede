plotProfile <- function(Profile,Mlen=0,xlab="Dist. to motif (bp)",ylab="Cut-site probability",legTitle="",legPos="topright"){
  par(cex=1.0)
  S <- length(Profile);
  W <- ((S/2)-Mlen)/2;
  plot((1:(S/2)),Profile[1:(S/2)],axes='F',xlab="",ylab="",ylim=c(0,max(Profile)*1.12),type='l',lwd=2,col='darkblue')
  lines((1:(S/2)),Profile[(S/2+1):S],lwd=2,type='l',col='darkred')
  ##axis(1,at=seq(1,S/2,len=5),labels=c(-100,-50,0,50,100)/100*(S/2-Mlen)/2,padj=-1.5,tck=-0.02)
  axis (1,at=seq(1,W,len=3),labels=-(W+1-seq(1,W+1,len=3)),padj=-1.0,tck=-0.01)
  axis (1,at=W+Mlen+seq(1,W,len=3),labels=seq(0,W,len=3),padj=-1.0,tck=-0.01)
  axis (1,at=W+seq(1,Mlen),labels=NA,padj=-1.2,tck=+0.01,col='purple4')
  axis(2,padj=1.0,tck=-0.02)
  abline(v=c(W,W+Mlen+1),lty=2)
  mtext(xlab,1,padj=1.6,cex=1.0)
  mtext(ylab,2,padj=-2,cex=1.0)
  ##  abline(v=c(-Mlen/2,+Mlen/2),lwd=2,lty=2,col='black');
  ##  legend("topright",c("Reads from + strand -->","Reads from - strand <--"),lty=c(1,1),col=c("darkblue","darkred"))
  if(missing(legTitle))
    legend(legPos,c("For. strand","Rev. strand"),lwd=2,lty=c(1,1),col=c("darkblue","darkred"))
  else{
    legend(legPos,legTitle,bty="n")
  }
##  box()
##  legend("topright",legTitle,bty="n")
}


