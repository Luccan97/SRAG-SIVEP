
setwd("C:\\GISA_Lucca\\Projetos_Lucca_GISA\\Outros\\SRAG")

srag <- read.csv("srag2021.csv", sep = ';', dec = ',', encoding = 'windows-1250')

library(Hmisc)
library(lubridate)
library(dplyr)
library(plyr)


srag <- filter(srag, srag$SG_UF == 'SP')

# DATA DE NOTIFICACAOO
srag$DT_NOTIFIC <- dmy(srag$DT_NOTIFIC)

# SEMANA DE NOTIFICACAOO
srag$SEM_NOT <- as.numeric(srag$SEM_NOT)

# DATA PRIMEIROS SINTOMAS
srag$DT_SIN_PRI <- dmy(srag$DT_SIN_PRI)

# SEMANA PRIMEIROS SINTOMAS
srag$SEM_PRI <- as.numeric(srag$SEM_PRI)
count(srag$SEM_PRI)

# UF DE NOTIFICACAO
srag$SG_UF_NOT <- as.factor(srag$SG_UF_NOT)
count(srag$SG_UF_NOT)

# CODIGO REGIONAL
srag$CO_REGIONA <- as.factor(srag$CO_REGIONA)
count(srag$CO_REGIONA)

# ID MUNICIPIO
options(max.print = 30000)
count(srag$ID_MUNICIP)
srag$ID_MUNICIP <- as.factor(srag$ID_MUNICIP)

# CODIGO MUNICIPIO/UNIDADE DE NOTIFICACAO
count(srag$CO_MUN_NOT)
srag$CO_MUN_NOT <- as.factor(srag$CO_MUN_NOT)
count(srag$CO_UNI_NOT)
srag$CO_UNI_NOT <- as.factor(srag$CO_UNI_NOT)

# SEXO 
count(srag$CS_SEXO)
srag$CS_SEXO <- as.factor(srag$CS_SEXO)

# DATA DE NASCIMENTO 
srag$DT_NASC <- dmy(srag$DT_NASC)

# TIPO IDADE e CODIGO IDADE
srag$TP_IDADE <- as.factor(srag$TP_IDADE)
srag$COD_IDADE <- as.factor(srag$COD_IDADE)

# CODIGOS GESTANTE/RACA/ETNIA/ESCOLARIDADE
srag$CS_GESTANT <- as.factor(srag$CS_GESTANT)
srag$CS_RACA <- as.factor(srag$CS_RACA)
srag$CS_ETINIA <- as.factor(srag$CS_ETINIA)
srag$CS_ESCOL_N <- as.factor(srag$CS_ESCOL_N)

# PAIS e UF
count(srag$ID_PAIS)
srag$ID_PAIS <- as.factor(srag$ID_PAIS)
srag$SG_UF <- as.factor(srag$SG_UF)

# CODIGOS E ID DE REGIAO E MUNICIPIO DE RESIDENCIA
srag$CO_RG_RESI <- as.factor(srag$CO_RG_RESI)
srag$CO_MUN_RES <- as.factor(srag$CO_MUN_RES)
srag$ID_MN_RESI <- as.factor(srag$ID_MN_RESI)

# CODIGOS E ID DE REGIÃO E MUNICIPIO DE RESIDENCIA
srag$CO_RG_INTE <- as.factor(srag$CO_RG_INTE)
srag$CO_MUN_INTE <- as.factor(srag$CO_MUN_INTE)
srag$ID_MN_INTE <- as.factor(srag$ID_MN_INTE)

