NK<-read.csv2("NK_cell_BA_2020batch.txt",header = T,sep = "\t")
head(NK)
p<-ggpairs(NK,mapping =aes(col=Liver.transplant),lower = list(combo = wrap("facethist", bins = 20)))
p<-ggpairs(NK,mapping =aes(col=case.control),lower = list(combo = wrap("facethist", bins = 20)))
p
head(NK)
NK
p <- ggplot(NK, aes(y =CD56dimCD16bright..mature., x= Aza.mg.kg.d,color=case.control)) + geom_point() + ggtitle("aza~matureNK")
p
p2 <- ggplot(NK, aes(y =CD56brightCD16.., x= Aza.mg.kg.d,color=case.control)) + geom_point()  + ggtitle("aza~naive")
p2
my_model<-lm(CD56dimCD16bright..mature.~Aza.mg.kg.d, data = NK)
my_model2<-lm(CD56brightCD16..~Aza.mg.kg.d, data = NK)
summary(my_model)
summary(my_model2)