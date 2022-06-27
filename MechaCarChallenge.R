## Deliverable 1
library(dplyr)
mechacar_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(mechacar_df)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_df))

## Deliverable 2
library(tidyverse)
suspension_coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
head(suspension_coil_table)
summarize_coil_table <- suspension_coil_table %>% group_by() %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups='keep')
summarize_coil_table_by_lot <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups='keep')

## Deliverable 3
suspension_coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
t.test(suspension_coil_table$PSI,mu=1500)

t.test(subset(suspension_coil_table,Manufacturing_Lot=="Lot1")$PSI,mu=1500)
t.test(subset(suspension_coil_table,Manufacturing_Lot=="Lot2")$PSI,mu=1500)
t.test(subset(suspension_coil_table,Manufacturing_Lot=="Lot3")$PSI,mu=1500)