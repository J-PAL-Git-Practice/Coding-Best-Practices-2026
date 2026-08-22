#!/usr/bin/env Rscript
rm(list = ls()) ##Clean up workspace
library(haven)
library(plyr)
library(dplyr)
library(babynames)
setwd('~/Documents/SA_RST_25_CBP_Lab/Template_folder')

dat <- read_dta('primary_cleaned.dta')
kur <- filter(dat, district==1)
mah <- filter(dat, district==2)

kv <- c('Thanesar', 'Pehowa', 'Ladwa', 'Shahabad', 'Ismailabad', 'Babain',
        'Kaul', 'Bhuna', 'Bhor Saidan', 'Rattangarh', 'Kalayat','Chhachrauli',
        'Dayalpur', 'Sultanpur', 'Siwan', 'Jyotisar', 'Amin', 'Thol','Kheri Gujran',
        'Narkatari')

le <- length(kv)
kvc <- replicate(nrow(kur),sample(kv,1,replace = TRUE))
kur$Village <- kvc


mv <- c('Narnaul','Mahendergarh','Kanina','Ateli','Nizampur','Satnali',
        'Duloth Jat', 'Jhanjra Sheran', 'Kharkhara','Ranila',
        'Mohindergarh','Loharu','Bawal','Rewari Gate','Kanti',
        'Kharkhari','Sihag','Chhillar','Rampura','Khirni')

le <- length(mv)
mvc <- replicate(nrow(mah),sample(mv,1,replace = TRUE))
mah$Village <- mvc

fin <- rbind(kur,mah)

fin <- select(fin,c(1:22,455,23:454))

#### Adding names, govt id #, and emails:

baby_data <- data.frame(babynames)
names <- distinct(baby_data,name)
ns <- sample(names$name,nrow(fin))
fin$Name <- ns

fin$email <- paste0(fin$Name,'@gmail.com')

govtid <- ceiling(runif(nrow(fin),123456789,999999999))
fin$Govt_id <- govtid

fin <- select(fin,c(1:10,456:ncol(fin),11:455))
write_dta(fin,'primary_cleaned_adjusted.dta')


  
  