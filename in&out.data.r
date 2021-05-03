
library(ggplot2)
library(hrbrthemes)
library(readxl)
library(dplyr)
library(hrbrthemes)
library(GGally)



### Importing data ###########################################################################################

pdf(file = "C:\\Users\\TOSHIBA\\Desktop\\Players.pdf",height = 4, width = 10)

######Harry Kane
Evolution<-read_excel("C:\\Users\\TOSHIBA\\Desktop\\FPL Project\\Players\\Harry Kane\\Evolution.xlsx")
Evolution<-as.data.frame(Evolution)

ggplot(Evolution ,aes(x=season, y=c(Evolution$all))) +
  geom_line( color="grey") +
  geom_point(shape=21, color="black", fill="#3D195B", size=3) +
  ggtitle("Harry Kane")+ 
  xlab("Gameweek")+
  ylab("Goals + Assists ")+ 
  scale_x_continuous(breaks = c(seq(1,38)))+
  scale_y_continuous(breaks = c(seq(1,12)))+  
  geom_hline(yintercept = 4.26, color="#3D195B")



######Aubameyang
Evolution<-read_excel("C:\\Users\\TOSHIBA\\Desktop\\FPL Project\\Players\\Aubameyang.xlsx", sheet = 10)
Evolution<-as.data.frame(Evolution)

ggplot(Evolution ,aes(x=season, y=c(Evolution$all))) +
  geom_line( color="grey") +
  geom_point(shape=21, color="black", fill="#3D195B", size=3) +
  ggtitle("Pierre-Emerick Aubameyang")+ 
  xlab("Gameweek")+
  ylab("Goals + Assists ")+ 
  scale_x_continuous(breaks = c(seq(1,38)))+
  scale_y_continuous(breaks = c(seq(1,15)))+  
  geom_hline(yintercept = 6.42, color="#3D195B")


######Jamie Vardy
Evolution<-read_excel("C:\\Users\\TOSHIBA\\Desktop\\FPL Project\\Players\\Jamie Vardy.xlsx", sheet = 7)
Evolution<-as.data.frame(Evolution)

ggplot(Evolution ,aes(x=season, y=c(Evolution$all))) +
  geom_line( color="grey") +
  geom_point(shape=21, color="black", fill="#3D195B", size=3) +
  ggtitle("Jamie Vardy")+ 
  xlab("Gameweek")+
  ylab("Goals + Assists ")+ 
  scale_x_continuous(breaks = c(seq(1,38)))+
  scale_y_continuous(breaks = c(seq(1,10)))+  
  geom_hline(yintercept = 3.65, color="#3D195B")

######Mohamed Salah
Evolution<-read_excel("C:\\Users\\TOSHIBA\\Desktop\\FPL Project\\Players\\Mohamed Salah.xlsx", sheet = 6)
Evolution<-as.data.frame(Evolution)

ggplot(Evolution ,aes(x=season, y=c(Evolution$all))) +
  geom_line( color="grey") +
  geom_point(shape=21, color="black", fill="#3D195B", size=3) +
  ggtitle("Mohamed Salah")+ 
  xlab("Gameweek")+
  ylab("Goals + Assists ")+ 
  scale_x_continuous(breaks = c(seq(1,38)))+
  scale_y_continuous(breaks = c(seq(1,10)))+  
  geom_hline(yintercept = 4, color="#3D195B")


######Sergio Aguero
Evolution<-read_excel("C:\\Users\\TOSHIBA\\Desktop\\FPL Project\\Players\\Sergio Aguero.xlsx", sheet = 10)
Evolution<-as.data.frame(Evolution)

ggplot(Evolution ,aes(x=season, y=c(Evolution$all))) +
  geom_line( color="grey") +
  geom_point(shape=21, color="black", fill="#3D195B", size=3) +
  ggtitle("Sergio Aguero")+ 
  xlab("Gameweek")+
  ylab("Goals + Assists ")+ 
  scale_x_continuous(breaks = c(seq(1,38)))+
  scale_y_continuous(breaks = c(seq(1,13)))+  
  geom_hline(yintercept = 6.15, color="#3D195B")


######Kevin de Bruyne
Evolution<-read_excel("C:\\Users\\TOSHIBA\\Desktop\\FPL Project\\Players\\Kevin de Bruyne.xlsx", sheet = 7)
Evolution<-as.data.frame(Evolution)

ggplot(Evolution ,aes(x=season, y=c(Evolution$all))) +
  geom_line( color="grey") +
  geom_point(shape=21, color="black", fill="#3D195B", size=3) +
  ggtitle("Kevin de Bruyne")+ 
  xlab("Gameweek")+
  ylab("Goals + Assists ")+ 
  scale_x_continuous(breaks = c(seq(1,38)))+
  scale_y_continuous(breaks = c(seq(1,9)))+  
  geom_hline(yintercept = 3.52, color="#3D195B")



######Raheem Sterling
Evolution<-read_excel("C:\\Users\\TOSHIBA\\Desktop\\FPL Project\\Players\\Raheem Sterling.xlsx", sheet = 8)
Evolution<-as.data.frame(Evolution)

ggplot(Evolution ,aes(x=season, y=c(Evolution$all))) +
  geom_line( color="grey") +
  geom_point(shape=21, color="black", fill="#3D195B", size=3) +
  ggtitle("Raheem Sterling")+ 
  xlab("Gameweek")+
  ylab("Goals + Assists ")+ 
  scale_x_continuous(breaks = c(seq(1,38)))+
  scale_y_continuous(breaks = c(seq(1,8)))+  
  geom_hline(yintercept = 3.73, color="#3D195B")



######Timo Werner
Evolution<-read_excel("C:\\Users\\TOSHIBA\\Desktop\\FPL Project\\Players\\Timo Werner.xlsx", sheet = 5)
Evolution<-as.data.frame(Evolution)

ggplot(Evolution ,aes(x=season, y=c(Evolution$all))) +
  geom_line( color="grey") +
  geom_point(shape=21, color="black", fill="#3D195B", size=3) +
  ggtitle("Timo Werner")+ 
  xlab("Gameweek")+
  ylab("Goals + Assists ")+ 
  scale_x_continuous(breaks = c(seq(1,34)))+
  scale_y_continuous(breaks = c(seq(1,11)))+  
  geom_hline(yintercept = 3.23, color="#3D195B")



######Heung min Son
Evolution<-read_excel("C:\\Users\\TOSHIBA\\Desktop\\FPL Project\\Players\\Heung min Son.xlsx", sheet = 6)
Evolution<-as.data.frame(Evolution)

ggplot(Evolution ,aes(x=season, y=c(Evolution$all))) +
  geom_line( color="grey") +
  geom_point(shape=21, color="black", fill="#3D195B", size=3) +
  ggtitle("Heung min Son")+ 
  xlab("Gameweek")+
  ylab("Goals + Assists ")+ 
  scale_x_continuous(breaks = c(seq(1,34)))+
  scale_y_continuous(breaks = c(seq(1,6)))+  
  geom_hline(yintercept = 2.26, color="#3D195B")


######Raul Jimenez
Evolution<-read_excel("C:\\Users\\TOSHIBA\\Desktop\\FPL Project\\Players\\Raul Jimenez.xlsx", sheet = 3)
Evolution<-as.data.frame(Evolution)

ggplot(Evolution ,aes(x=season, y=c(Evolution$all))) +
  geom_line( color="grey") +
  geom_point(shape=21, color="black", fill="#3D195B", size=3) +
  ggtitle("Raul Jimenez")+ 
  xlab("Gameweek")+
  ylab("Goals + Assists ")+ 
  scale_x_continuous(breaks = c(seq(1,34)))+
  scale_y_continuous(breaks = c(seq(1,3)))+  
  geom_hline(yintercept = 1.15, color="#3D195B")



dev.off()






