
install.packages("ggalluvial")

rm(list=ls())

# install.packages("ggalluvial")
library(tidyverse)
library(openxlsx)
library(ggalluvial)
library(gganimate)

### ejemplo 1

view(vaccinations)
ggplot(data = vaccinations,
       aes(axis1 = survey, axis2 = response, y = freq)) +
  geom_alluvium(aes(fill = response)) +
  geom_stratum() +
  geom_text(stat = "stratum",
            aes(label = after_stat(stratum))) +
  scale_x_discrete(limits = c("Encuesta", "Respuesta"),
                   expand = c(0.15, 0.05)) +
  theme_void()


### ejemplo 2.

setwd("~/R/Scripts - todos/proyecto_ferro")
proyecto_flor <- read.xlsx ("proyecto_flor.xlsx")
view(proyecto_flor)


ggplot(data = proyecto_flor,
       aes(axis1 = perfiles, axis2 = trabajos_it, y = pond_it)) +
  geom_alluvium(aes(fill = pond_it)) +
  geom_stratum() +
  geom_text(stat = "stratum",
            aes(label = after_stat(stratum))) +
  
  scale_x_discrete(limits = c("Encuesta", "Respuesta"),
                   expand = c(0.15, 0.05)) +
  theme_minimal()


