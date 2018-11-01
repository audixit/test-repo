
library(ggplot2)


dd <- c(0.20, 0.20)
ll <- c("BEX Frequentist", "BEX Bayes Proposed")

df <- data.frame(ll, dd)

ggplot(df, aes(x=ll, y=dd))+ geom_bar(stat = "identity")+
  geom_text(aes(label = scales::percent(dd, accuracy = 1), vjust=-1, size=4))+theme_bw()+ 
  scale_y_continuous(labels = scales::percent_format(accuracy = 1), limits = c(0,1))+ theme(legend.position="none")+
  xlab("")+ylab("") + ggtitle("False Positive Rate")+
  theme(plot.title = element_text(hjust = 0.5))
  

ff <- c(15, 25)
ll <- c("BEX Frequentist", "BEX Bayes Proposed")
df_2 <- data.frame(ll, dd)

ggplot(df_2, aes(x=ll, y=ff))+ geom_bar(stat = "identity")+theme_bw()+
  geom_text(aes(label = ff, vjust=-1, size=4))+ 
  scale_y_continuous(limits = c(0,60))+ theme(legend.position="none")+
  xlab("")+ylab("") + ggtitle("Average Days")+
  theme(plot.title = element_text(hjust = 0.5))






