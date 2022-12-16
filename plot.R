library(ggplot2)

keys<-read.table("keys.txt",sep="\t")
keys[keys$license=="","license"]<-"unknown"

ggplot(keys,aes(license))+geom_histogram(stat="count") + theme(axis.text.x = element_text(angle = 90))
savePlot("licenses.png")
