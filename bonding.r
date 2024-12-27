head(df)
library(tidyverse)
library(showtext)
showtext.auto()

df <-tibble::tribble(
        ~pcb,   ~설비, ~setting_temp,  ~COF, ~mes_temp,
    "1_left", "1호기",          415L,   "1_left",       184,
    "1_left", "2호기",          415L,   "1_left",     175.9,
    "1_left", "3호기",          415L,   "1_left",     181.9,
    "1_left", "1호기",          415L, "2_center",     199.2,
    "1_left", "2호기",          415L, "2_center",     197.2,
    "1_left", "3호기",          415L, "2_center",     196.6,
    "1_left", "1호기",          415L,  "3_right",     192.3,
    "1_left", "2호기",          415L,  "3_right",     188.9,
    "1_left", "3호기",          415L,  "3_right",     193.6,
  "2_center", "1호기",          400L,   "1_left",     194.3,
  "2_center", "2호기",          400L,   "1_left",     186.9,
  "2_center", "3호기",          400L,   "1_left",     188.2,
  "2_center", "1호기",          400L, "2_center",     196.9,
  "2_center", "2호기",          400L, "2_center",     195.4,
  "2_center", "3호기",          400L, "2_center",     192.9,
  "2_center", "1호기",          400L,  "3_right",     182.4,
  "2_center", "2호기",          400L,  "3_right",     181.7,
  "2_center", "3호기",          400L,  "3_right",     185.9,
   "3_right", "1호기",          415L,   "1_left",     193.6,
   "3_right", "2호기",          415L,   "1_left",     188.2,
   "3_right", "3호기",          415L,   "1_left",     181.3,
   "3_right", "1호기",          415L, "2_center",     199.5,
   "3_right", "2호기",          415L, "2_center",     196.4,
   "3_right", "3호기",          415L, "2_center",     196.2,
   "3_right", "1호기",          415L,  "3_right",     178.7,
   "3_right", "2호기",          415L,  "3_right",     174.5,
   "3_right", "3호기",          415L,  "3_right",     177.2
  )


test <- tibble::tribble(
            ~설비, ~setting_temp,  ~COF, ~mes_temp,
          "1호기",          320L,   "1_left",     142.9,
          "2호기",          320L,   "1_left",     144.6,
          "3호기",          320L,   "1_left",     137.4,
          "1호기",          320L, "2_center",     152.3,
          "2호기",          320L, "2_center",       153,
          "3호기",          320L, "2_center",     150.8,
          "1호기",          320L,  "3_right",     139.4,
          "2호기",          320L,  "3_right",       142,
          "3호기",          320L,  "3_right",     137.3,
          "1호기",          350L,   "1_left",     151.9,
          "2호기",          350L,   "1_left",     153.3,
          "3호기",          350L,   "1_left",     149.5,
          "1호기",          350L, "2_center",     165.6,
          "2호기",          350L, "2_center",     163.4,
          "3호기",          350L, "2_center",     161.8,
          "1호기",          350L,  "3_right",     151.5,
          "2호기",          350L,  "3_right",     152.8,
          "3호기",          350L,  "3_right",     151.9,
          "1호기",          370L,   "1_left",     164.8,
          "2호기",          370L,   "1_left",     160.7,
          "3호기",          370L,   "1_left",     158.6,
          "1호기",          370L, "2_center",     179.7,
          "2호기",          370L, "2_center",     171.4,
          "3호기",          370L, "2_center",     176.7,
          "1호기",          370L,  "3_right",     163.2,
          "2호기",          370L,  "3_right",     158.4,
          "3호기",          370L,  "3_right",     158.6,
          "1호기",          400L,   "1_left",       180,
          "2호기",          400L,   "1_left",     176.1,
          "3호기",          400L,   "1_left",       178,
          "1호기",          400L, "2_center",     191.2,
          "2호기",          400L, "2_center",       188,
          "3호기",          400L, "2_center",       189,
          "1호기",          400L,  "3_right",     177.2,
          "2호기",          400L,  "3_right",     176.2,
          "3호기",          400L,  "3_right",     174.7
          )

test <- tibble::tribble(
        ~pcb,   ~설비, ~setting_temp,  ~COF, ~mes_temp,
    "1_left", "1호기",          320L,   "1_left",       134,
    "1_left", "2호기",          320L,   "1_left",       137,
    "1_left", "3호기",          320L,   "1_left",     129.7,
    "1_left", "1호기",          320L, "2_center",       153,
    "1_left", "2호기",          320L, "2_center",     153.1,
    "1_left", "3호기",          320L, "2_center",     143.1,
    "1_left", "1호기",          320L,  "3_right",       141,
    "1_left", "2호기",          320L,  "3_right",     143.8,
    "1_left", "3호기",          320L,  "3_right",     139.4,
  "2_center", "1호기",          320L,   "1_left",     152.9,
  "2_center", "2호기",          320L,   "1_left",     150.9,
  "2_center", "3호기",          320L,   "1_left",     150.7,
  "2_center", "1호기",          320L, "2_center",     158.8,
  "2_center", "2호기",          320L, "2_center",     161.9,
  "2_center", "3호기",          320L, "2_center",     154.7,
  "2_center", "1호기",          320L,  "3_right",     145.1,
  "2_center", "2호기",          320L,  "3_right",     146.3,
  "2_center", "3호기",          320L,  "3_right",     149.9,
   "3_right", "1호기",          320L,   "1_left",     138.3,
   "3_right", "2호기",          320L,   "1_left",     142.9,
   "3_right", "3호기",          320L,   "1_left",     142.3,
   "3_right", "1호기",          320L, "2_center",       150,
   "3_right", "2호기",          320L, "2_center",     151.3,
   "3_right", "3호기",          320L, "2_center",     144.1,
   "3_right", "1호기",          320L,  "3_right",     129.9,
   "3_right", "2호기",          320L,  "3_right",     131.8,
   "3_right", "3호기",          320L,  "3_right",     125.7,
    "1_left", "1호기",          350L,   "1_left",     141.1,
    "1_left", "2호기",          350L,   "1_left",       143,
    "1_left", "3호기",          350L,   "1_left",     142.8,
    "1_left", "1호기",          350L, "2_center",       163,
    "1_left", "2호기",          350L, "2_center",     163.5,
    "1_left", "3호기",          350L, "2_center",     154.3,
    "1_left", "1호기",          350L,  "3_right",     151.6,
    "1_left", "2호기",          350L,  "3_right",     153.4,
    "1_left", "3호기",          350L,  "3_right",     151.7,
  "2_center", "1호기",          350L,   "1_left",     165.4,
  "2_center", "2호기",          350L,   "1_left",     164.8,
  "2_center", "3호기",          350L,   "1_left",     160.5,
  "2_center", "1호기",          350L, "2_center",     170.8,
  "2_center", "2호기",          350L, "2_center",     173.4,
  "2_center", "3호기",          350L, "2_center",     164.5,
  "2_center", "1호기",          350L,  "3_right",     160.5,
  "2_center", "2호기",          350L,  "3_right",       152,
  "2_center", "3호기",          350L,  "3_right",     160.3,
   "3_right", "1호기",          350L,   "1_left",     152.1,
   "3_right", "2호기",          350L,   "1_left",     156.6,
   "3_right", "3호기",          350L,   "1_left",     151.8,
   "3_right", "1호기",          350L, "2_center",     162.4,
   "3_right", "2호기",          350L, "2_center",       163,
   "3_right", "3호기",          350L, "2_center",     161.4,
   "3_right", "1호기",          350L,  "3_right",     140.1,
   "3_right", "2호기",          350L,  "3_right",       139,
   "3_right", "3호기",          350L,  "3_right",     142.6,
    "1_left", "1호기",          370L,   "1_left",     154.3,
    "1_left", "2호기",          370L,   "1_left",     152.6,
    "1_left", "3호기",          370L,   "1_left",       149,
    "1_left", "1호기",          370L, "2_center",     175.7,
    "1_left", "2호기",          370L, "2_center",       171,
    "1_left", "3호기",          370L, "2_center",     165.4,
    "1_left", "1호기",          370L,  "3_right",     164.3,
    "1_left", "2호기",          370L,  "3_right",     158.6,
    "1_left", "3호기",          370L,  "3_right",     161.4,
  "2_center", "1호기",          370L,   "1_left",     180.9,
  "2_center", "2호기",          370L,   "1_left",     171.9,
  "2_center", "3호기",          370L,   "1_left",     179.8,
  "2_center", "1호기",          370L, "2_center",     185.9,
  "2_center", "2호기",          370L, "2_center",     177.7,
  "2_center", "3호기",          370L, "2_center",     181.2,
  "2_center", "1호기",          370L,  "3_right",     172.3,
  "2_center", "2호기",          370L,  "3_right",     164.5,
  "2_center", "3호기",          370L,  "3_right",     169.1,
   "3_right", "1호기",          370L,   "1_left",     165.7,
   "3_right", "2호기",          370L,   "1_left",     160.3,
   "3_right", "3호기",          370L,   "1_left",     157.7,
   "3_right", "1호기",          370L, "2_center",     175.2,
   "3_right", "2호기",          370L, "2_center",     169.5,
   "3_right", "3호기",          370L, "2_center",     168.2,
   "3_right", "1호기",          370L,  "3_right",     148.8,
   "3_right", "2호기",          370L,  "3_right",     145.5,
   "3_right", "3호기",          370L,  "3_right",     149.9,
    "1_left", "1호기",          400L,   "1_left",     174.7,
    "1_left", "2호기",          400L,   "1_left",     167.8,
    "1_left", "3호기",          400L,   "1_left",     162.6,
    "1_left", "1호기",          400L, "2_center",     188.8,
    "1_left", "2호기",          400L, "2_center",     184.7,
    "1_left", "3호기",          400L, "2_center",     182.1,
    "1_left", "1호기",          400L,  "3_right",     176.4,
    "1_left", "2호기",          400L,  "3_right",       176,
    "1_left", "3호기",          400L,  "3_right",     179.6,
  "2_center", "1호기",          400L,   "1_left",     194.3,
  "2_center", "2호기",          400L,   "1_left",     186.9,
  "2_center", "3호기",          400L,   "1_left",     188.2,
  "2_center", "1호기",          400L, "2_center",     196.9,
  "2_center", "2호기",          400L, "2_center",     195.4,
  "2_center", "3호기",          400L, "2_center",     192.9,
  "2_center", "1호기",          400L,  "3_right",     182.4,
  "2_center", "2호기",          400L,  "3_right",     181.7,
  "2_center", "3호기",          400L,  "3_right",     185.9,
   "3_right", "1호기",          400L,   "1_left",     183.2,
   "3_right", "2호기",          400L,   "1_left",     181.6,
   "3_right", "3호기",          400L,   "1_left",     174.7,
   "3_right", "1호기",          400L, "2_center",     188.1,
   "3_right", "2호기",          400L, "2_center",     184.2,
   "3_right", "3호기",          400L, "2_center",     184.6,
   "3_right", "1호기",          400L,  "3_right",     160.1,
   "3_right", "2호기",          400L,  "3_right",     162.7,
   "3_right", "3호기",          400L,  "3_right",     164.9
  )




test |> 

  ggplot(aes(x=setting_temp, y=mes_temp, col=COF, group=COF))+
  geom_point(size= 2)+geom_smooth(method="lm", se=F)+
  geom_hline(yintercept = 185, col="blue", linetype = "dashed")+
  geom_hline(yintercept = 200, col="red", linetype = "dashed")+
  geom_hline(yintercept = 170, col="red", linetype = "dashed")+
#  geom_vline(xintercept = 415, col="black", linetype = "dashed")+
  theme_bw()+
  facet_wrap(~설비,)+
  xlim(c(320,415))+ylim(c(130,200))+
  labs(title = "씨엔씨 FOB 설비별, 셋팅온도별 Boding부 온도",
       subtitle = "설비 : 1,2,3호기, Tab 위치 : Left, Center, Right",
       
       x="셋팅 온도",
       y="측정 온도")
       


df |> 
  mutate(setting_temp = as.factor(setting_temp)) |> 
  ggplot(aes(x=COF, y=mes_temp, col=setting_temp, group=pcb, shape=설비))+
  geom_point(size= 2)+geom_smooth(se=F)+
  facet_wrap(~pcb,labeller = label_both)+
  geom_hline(yintercept = 185, col="blue", linetype = "dashed")+
  geom_hline(yintercept = 200, col="red", linetype = "dashed")+
  geom_hline(yintercept = 170, col="red", linetype = "dashed")+
  theme_bw()+
  
  labs(title = "씨엔씨 FOB 설비별, 최적 셋팅 온도에서  Boding부 온도",
       subtitle = "설비 : 1,2,3호기, Tab 위치 : Left, Center, Right, PCB 위치 : Left, Center, Right",

       x="COF 위치",
       y="측정 온도")

  

test |> 
  ggplot(aes(x=setting_temp, y=mes_temp, col=COF, group=COF))+
  geom_point(size= 2)+geom_smooth(method="lm", se=F)+
  geom_hline(yintercept = 185, col="blue", linetype = "dashed")+
  geom_hline(yintercept = 200, col="red", linetype = "dashed")+
  geom_hline(yintercept = 170, col="red", linetype = "dashed")+
  #  geom_vline(xintercept = 415, col="black", linetype = "dashed")+
  theme_bw()+
  facet_wrap(설비~pcb,labeller= label_both)+
  #xlim(c(320,415))+ylim(c(130,200))+
  labs(title = "씨엔씨 FOB 설비별, 셋팅온도별 Boding부 온도",
       subtitle = "설비 : 1,2,3호기, Tab 위치 : Left, Center, Right",
       
       x="셋팅 온도",
       y="측정 온도")



test |> 
  mutate(setting_temp = as.factor(setting_temp)) |> 
  ggplot(aes(x=setting_temp, y=mes_temp, fill=setting_temp))+
  geom_boxplot()+
  geom_hline(yintercept = 185, col="blue", linetype = "dashed")+
  geom_hline(yintercept = 200, col="red", linetype = "dashed")+
  geom_hline(yintercept = 170, col="red", linetype = "dashed")+
  #  geom_vline(xintercept = 415, col="black", linetype = "dashed")+
  theme_bw()+
  facet_wrap(설비~pcb,labeller= label_both)+
  #xlim(c(320,415))+ylim(c(130,200))+
  labs(title = "씨엔씨 FOB 설비별, 셋팅온도별 Boding부 온도",
       subtitle = "설비 : 1,2,3호기, Tab 위치 : Left, Center, Right",
       
       x="셋팅 온도",
       y="측정 온도")+
  theme(legend.position = "none")


df |> 
  mutate(setting_temp = as.factor(setting_temp)) |> 
  ggplot(aes(x=설비, y=mes_temp, fill=setting_temp))+
  geom_boxplot() +
  facet_wrap(~pcb,labeller= label_both)+
  geom_hline(yintercept = 185, col="blue", linetype = "dashed")+
  geom_hline(yintercept = 200, col="red", linetype = "dashed")+
  geom_hline(yintercept = 170, col="red", linetype = "dashed")+
  theme_bw()+
  ylim(c(130,200))+
  
  labs(title = "씨엔씨 FOB 설비별, 최적 셋팅 온도에서  Boding부 온도",
       subtitle = "설비 : 1,2,3호기, Tab 위치 : Left, Center, Right, PCB 위치 : Left, Center, Right",
       
       x="설비",
       y="측정 온도")


  
