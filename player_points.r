
library(ggplot2)
library(hrbrthemes)
library(readxl)
library(dplyr)
library(readr)


data.19.20 <-read_excel("C:\\Users\\TOSHIBA\\Desktop\\FPL Project\\FPL_dataset.xlsx")

pdf(file = "C:\\Users\\TOSHIBA\\Desktop\\Points19-20.pdf",height = 7, width = 10)
##############################################################################################
#########Goalkeepers

### 19-20
data.filtered<- data.19.20 %>% filter(Position == "GK" & `90_mins_played` >=5)

ggplot(data.filtered, aes(x= data.filtered$`Points/90`, y=data.filtered$`Points/cost`)) +
  geom_point(size=2, color="#3D195B") +
  geom_text(
    label=data.filtered$Player, 
    nudge_y = 0.01,
    check_overlap = F )+
  xlab("Points per 90 mins")+
  ylab("Points per cost")+
  ggtitle("Goalkeepers")


##############################################################################################
data.filtered<- data.19.20 %>% filter(Position == "DEF" & `90_mins_played` >=5)
ggplot(data.filtered, aes(x= data.filtered$`Points/90`, y=data.filtered$`Points/cost`)) +
  geom_point(size=2, color="#3D195B") +
  geom_text(
    label=data.filtered$Player, 
    nudge_y = 0.024,
    check_overlap = T )+
  xlab("Points per 90 mins")+
  ylab("Points per 1 millionÂ£")+
  ggtitle("Defenders")

##############################################################################################
data.filtered<- data.19.20 %>% filter(Position == "MID" & `90_mins_played` >=5)
ggplot(data.filtered, aes(x= data.filtered$`Points/90`, y=data.filtered$`Points/cost`)) +
  geom_point(size=2, color="#3D195B") +
  geom_text(
    label=data.filtered$Player, 
    nudge_y = 0.014,
    check_overlap = T )+
  xlab("Points per 90 mins")+
  ylab("Points per 1 millionÂ£")+
  ggtitle("Midfielders")

##############################################################################################
data.filtered<- data.19.20 %>% filter(Position == "FOR" & `90_mins_played` >=5)
ggplot(data.filtered, aes(x= data.filtered$`Points/90`, y=data.filtered$`Points/cost`)) +
  geom_point(size=2, color="#3D195B") +
  geom_text(
    label=data.filtered$Player, 
    nudge_y = 0.029,
    check_overlap = T )+
  xlab("Points per 90 mins")+
  ylab("Points per 1 millionÂ£")+
  ggtitle("Forwards")

dev.off()


##############################################################################################
### 20-21

data.20.21 <- read_excel("C:\\Users\\TOSHIBA\\Desktop\\FPL Project\\fpl20-21.xlsx")

#########Goalkeepers

pdf(file = "C:\\Users\\TOSHIBA\\Desktop\\Points20-21.pdf",height = 7, width = 10)


data.filtered.20.21<-as.data.frame(data.filtered.20.21)
data.filtered.20.21<- data.20.21 %>% filter(position == "Goalkeeper" & `90mins_played` >=5)

ggplot(data.filtered.20.21, aes(x= data.filtered.20.21$points90 ,
                                y=data.filtered.20.21$value_season )) +
  geom_point(size=2, color="#3D195B") +
  geom_text(
    label=data.filtered.20.21$web_name, 
    nudge_y = 0.5,
    check_overlap = F )+
  xlab("Points per 90 mins")+
  ylab("Points per cost")+
  ggtitle("Goalkeepers")+
  annotate("text",x= Inf , y=-Inf, label = "Seif eddine Mejri",
           hjust=1.1, vjust=-1.01, col="#3D195B", cex=3,
           fontface = "bold", alpha = 0.8)+
  annotate('text', label='Data scraped from official FPL website', x=-Inf, y=Inf, hjust=0, vjust=1 ,
           col="#3D195B", cex=2.5)

##############################################################################################

#########Defenders
data.filtered.20.21<-as.data.frame(data.filtered.20.21)
data.filtered.20.21<- data.20.21 %>% filter(position == "Defender" & `minutes` >=450)

ggplot(data.filtered.20.21, aes(x= data.filtered.20.21$points90 ,
                                y=data.filtered.20.21$value_season )) +
  geom_point(size=2, color="#3D195B") +
  geom_text(
    label=data.filtered.20.21$web_name, 
    nudge_y = 0.5,
    check_overlap = T )+
  xlab("Points per 90 mins")+
  ylab("Points per cost")+
  ggtitle("Defenders")+
  annotate("text",x= Inf , y=-Inf, label = "Seif eddine Mejri",
           hjust=1.1, vjust=-1.01, col="#3D195B", cex=3,
           fontface = "bold", alpha = 0.8)+
  annotate('text', label='Data scraped from official FPL website', x=-Inf, y=Inf, hjust=0, vjust=1 ,
           col="#3D195B", cex=2.5)

##############################################################################################

#########Midfielders
data.filtered.20.21<-as.data.frame(data.filtered.20.21)
data.filtered.20.21<- data.20.21 %>% filter(position == "Midfielder" & `minutes` >=450)

ggplot(data.filtered.20.21, aes(x= data.filtered.20.21$points90 ,
                                y=data.filtered.20.21$value_season )) +
  geom_point(size=2, color="#3D195B") +
  geom_text(
    label=data.filtered.20.21$web_name, 
    nudge_y = 0.45,
    check_overlap = T )+
  xlab("Points per 90 mins")+
  ylab("Points per cost")+
  ggtitle("Midfielders")+
  annotate("text",x= Inf , y=-Inf, label = "Seif eddine Mejri",
           hjust=1.1, vjust=-1.01, col="#3D195B", cex=3,
           fontface = "bold", alpha = 0.8)+
  annotate('text', label='Data scraped from official FPL website', x=-Inf, y=Inf, hjust=0, vjust=1 ,
           col="#3D195B", cex=2.5)

##############################################################################################

#########Forwards
data.filtered.20.21<-as.data.frame(data.filtered.20.21)
data.filtered.20.21<- data.20.21 %>% filter(position == "Forward" & `minutes` >=450)

ggplot(data.filtered.20.21, aes(x= data.filtered.20.21$points90 ,
                                y=data.filtered.20.21$value_season )) +
  geom_point(size=2, color="#3D195B") +
  geom_text(
    label=data.filtered.20.21$web_name, 
    nudge_y = 0.4,
    check_overlap = T )+
  xlab("Points per 90 mins")+
  ylab("Points per cost")+
  ggtitle("Forwards")+
  annotate("text",x= Inf , y=-Inf, label = "Seif eddine Mejri",
           hjust=1.1, vjust=-1.01, col="#3D195B", cex=3,
           fontface = "bold", alpha = 0.8)+
  annotate('text', label='Data scraped from official FPL website', x=-Inf, y=Inf, hjust=0, vjust=1 ,
           col="#3D195B", cex=2.5)


dev.off()

##############################################################################################
##############################################################################################

GW_data_19_20 <- read_csv(".merged_gw.csv")
GW_data_19_20<-as.data.frame(GW_data_19_20)
library("writexl")
write_xlsx(GW_data_19_20,"C:\\Users\\TOSHIBA\\Desktop\\data.xlsx")


GW_data_19_20 <-read_excel("C:\\Users\\TOSHIBA\\Desktop\\FPL Project\\every_player_gw_19-20.xlsx")

GW_data_19_20_filtered<- GW_data_19_20 %>% filter( total_points >=10)


pdf(file = "C:\\Users\\TOSHIBA\\Desktop\\10pointers.pdf",height = 8, width = 15)


##############################
#Bubble plot
df10<-table(GW_data_19_20_filtered$total_points,GW_data_19_20_filtered$opponent_team)
df10<-as.data.frame(df10)
ggplot(df10, aes(x=Var1, y=Var2, size = Freq)) +
  geom_point(alpha=0.7 , color="#3D195B")+
  xlab("Points")+
  ylab("Opponent ranking")+
  ggtitle("When does a Player score 10 or more in FPL")+
  scale_size(range = c(.1, 15), name="Occurences")

##############################
###HOME AWAY

GW_data_19_20_filtered

home.away<-as.data.frame(sort(table(GW_data_19_20_filtered$was_home),decreasing = T))
home.away$Var1<-c("Home","Away")

ggplot(home.away, aes(x=Var1, y=Freq)) + 
  geom_bar(stat = "identity",color=c("grey30","#3D195B"), fill= "#3D195B")+ 
  geom_bar(stat = "identity",color= "#3D195B"  , fill= "#3D195B")+
  xlab("Location")+
  ylab("Occurences")+
  ggtitle("Where does players score 10 point or more")

####opponent ranking
op.ranking<-as.data.frame(table(GW_data_19_20_filtered$opponent_team))
ggplot(op.ranking, aes(x=Var1, y=Freq)) + 
  geom_bar(stat = "identity",color= "#3D195B"  , fill= "#3D195B")+
  xlab("Opponent ranking")+
  ylab("Occurences")+
  ggtitle("Againt which teams players score 10 point or more")

###Gameweek
gw<-as.data.frame(table(GW_data_19_20_filtered$GW))
ggplot(gw, aes(x=Var1, y=Freq)) + 
  geom_bar(stat = "identity",color= "#3D195B"  , fill= "#3D195B")+
  xlab("Gameweek")+
  ylab("Occurences")+
  ggtitle("On which Gameweek players score 10 point or more")


dev.off()
