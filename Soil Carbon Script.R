library(MASS)
library(ggplot2)
library(dplyr)
library(scales)
library(readr)

Soil_C_Prestine=read.csv(file.choose(),header = TRUE)
Soil_C_CV=read.csv(file.choose(), header = TRUE)
Soil_C_Degraded=read.csv(file.choose(),header = TRUE)

glimpse(Soil_C_CV)

##Clover Valley 2017 and 2019 boxplots for all depths, 0-45cm####

ggplot(Soil_C_CV, aes(y=C.stock..kg.m2., x=factor(Soil.ID), fill=factor(Soil.ID), col=factor(Year)))+geom_boxplot()+scale_color_manual(values = c("Black","White"))
ggplot(Soil_C_CV, aes(y=C.stock..kg.m2., x=factor(Soil.ID), fill=factor(Soil.ID), col=factor(Year)))+geom_boxplot()+scale_color_manual(values = c("Black","White"))->Soil_R1
Soil_R1+theme(panel.background = element_rect("Gray"))+theme(panel.grid = element_line("lightgray"))
Soil_R1+theme(panel.background = element_rect("Gray"))+theme(panel.grid = element_line("lightgray"))->Soil_R2
Soil_R2+labs(title = "Clover Valley Carbon Stock Ranges (0-45 cm) ", x= "Site ID", y="Total Organic Carbon (kg/m2)", col="Year", fill="Site ID")
Soil_R2+labs(title = "Clover Valley Carbon Stock Ranges (0-45 cm) ", x= "Site ID", y="Total Organic Carbon (kg/m2)", col="Year", fill="Site ID")->Soil_R3
Soil_R3+theme(plot.title = element_text(hjust = 0.5, face = "bold"))
Soil_R3+theme(plot.title = element_text(hjust = 0.5, face = "bold"))->Clover_Valley_Total_Organic_Carbon_Boxplot

##Clover Valley Prestine Meadow 2019 boxplots for all depths, 0-45cm####

ggplot(Soil_C_Prestine, aes(y=C.stock..kg.m2., x=factor(Soil.ID), fill=factor(Soil.ID)))+geom_boxplot()
ggplot(Soil_C_Prestine, aes(y=C.stock..kg.m2., x=factor(Soil.ID), fill=factor(Soil.ID)))+geom_boxplot()->Soil_C_PR1
Soil_C_PR1+theme(panel.background = element_rect("Gray"))+theme(panel.grid = element_line("lightgray"))
Soil_C_PR1+theme(panel.background = element_rect("Gray"))+theme(panel.grid = element_line("lightgray"))->Soil_C_PR2
Soil_C_PR2+labs(title = "Clover Valley Control 2019 Carbon Stock Ranges (0-45 cm) ", x= "", y="Total Organic Carbon (kg/m2)", fill="Site ID")
Soil_C_PR2+labs(title = "Clover Valley Control 2019 Carbon Stock Ranges (0-45 cm) ", x= "", y="Total Organic Carbon (kg/m2)", fill="Site ID")->Soil_C_PR3
Soil_C_PR3+theme(plot.title = element_text(hjust = 0.5, face = "bold"))
Soil_C_PR3+theme(plot.title = element_text(hjust = 0.5, face = "bold"))->CV_Prestine_Boxplots


### Clover Valley Disturbed Meadow boxplots for all depths, 0-45 cm#####
ggplot(Soil_C_Degraded, aes(y=C.stock..kg.m2., x=factor(Soil.ID), fill=factor(Soil.ID)))+geom_boxplot()
ggplot(Soil_C_Degraded, aes(y=C.stock..kg.m2., x=factor(Soil.ID), fill=factor(Soil.ID)))+geom_boxplot()->Soil_C_PR1
Soil_C_PR1+theme(panel.background = element_rect("Gray"))+theme(panel.grid = element_line("lightgray"))
Soil_C_PR1+theme(panel.background = element_rect("Gray"))+theme(panel.grid = element_line("lightgray"))->Soil_C_PR2
Soil_C_PR2+labs(title = "Clover Valley Impact Meadow Carbon Stock Ranges (0-45 cm) ", x= "", y="Total Organic Carbon (kg/m2)", fill="Site ID")
Soil_C_PR2+labs(title = "Clover Valley Impact Meadow Carbon Stock Ranges (0-45 cm) ", x= "", y="Total Organic Carbon (kg/m2)", fill="Site ID")->Soil_C_PR3
Soil_C_PR3+theme(plot.title = element_text(hjust = 0.5, face = "bold"))
Soil_C_PR3+theme(plot.title = element_text(hjust = 0.5, face = "bold"))->CV_Prestine_Boxplots

