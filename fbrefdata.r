
library(ggplot2)
library(hrbrthemes)
library(readxl)
library(dplyr)


##############################################################################################
pdf(file = "C:\\Users\\TOSHIBA\\Desktop\\Advanced metrics.pdf",height = 8, width = 12)

###GK
Goalkeepers <-read_excel("C:\\Users\\TOSHIBA\\Desktop\\FPL Project\\Fbref data\\GK.xlsx")

#filtering data
gk<- Goalkeepers %>% filter(starting>5)
gk<-as.data.frame(gk)

#############  save rate xG-ga diff
ggplot(gk, aes(x= gk$`saves%`, y=gk$`PSxG+/-`)) +
  geom_point(size=2, color="#3D195B") +
  geom_text(
    label=gk$Player, 
    nudge_y = 0.32,
    check_overlap = F )+
  xlab("Shot save rate(%) (higher is better)")+
  ylab("Xg post-shot minus Goals allowed (higher is better)")+
  ggtitle("Goalkeepers")

#############  save rate xG-ga diff
ggplot(gk, aes(x= gk$`CleanSheet%`, y=gk$`goals conceeded90`)) +
  geom_point(size=2, color="#3D195B") +
  geom_text(
    label=gk$Player, 
    nudge_y = 0.029,
    check_overlap = F )+
  xlab("Clean Sheet rate(%) (higher is better)")+
  ylab("Goals allowed per 90 (lower is better)")+
  ggtitle("Goalkeepers")


##############################################################################################
##############################################################################################
##############################################################################################

ALL_players <-read_excel("C:\\Users\\TOSHIBA\\Desktop\\FPL Project\\Fbref data\\Players data 19-20.xlsx")
###Field players
players<- ALL_players %>% filter( ALL_players$`90s` >5, Pos %in% c("FW"))   

pdf(file = "C:\\Users\\TOSHIBA\\Desktop\\Forwards.pdf",height = 8, width = 12)

############# xG--xA
ggplot(players, aes(x= players$`xG`, y=players$`xA`)) +
  geom_point(size=2, color="#3D195B") +
  geom_text(
    label=players$Player, 
    nudge_y = 0.3,
    check_overlap = T )+
  xlab("expected Goals (higher is better)")+
  ylab("expected Assists (higher is better)")+
  ggtitle("xG-xA")


############# (Goals-xG)---(Assists-xA) Measure to Goal contribution performance
ggplot(players, aes(x= players$`G-xG`, y=players$`A-xA`)) +
  geom_point(size=2, color="#3D195B") +
  geom_text(
    label=players$Player, 
    nudge_y = 0.2,
    check_overlap = T )+
  xlab("Goals-xG (higher is better)")+
  ylab("Assists-xA (higher is better)")+
  ggtitle("(Goals minus xG)---(Assists minus xA) Measure to Goal contribution performance")


############# Creative output
ggplot(players, aes(x= players$Shoot_Creating_Actions90, y=players$Goal_Creating_Actions90)) +
  geom_point(size=2, color="#3D195B") +
  geom_text(
    label=players$Player, 
    nudge_y = 0.025,
    check_overlap = T )+
  xlab(" Shot creating actions per 90 (higher is better)")+
  ylab(" Goal creating ctions per 90 (higher is better)")+
  ggtitle("Creative output")



dev.off()
##############################################################################################
##############################################################################################
##############################################################################################









