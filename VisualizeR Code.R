# Visualize-R
# Roshael Chellappah
# BIOL 434 - Dr. Collauti
# January 19th, 2022

# see word document "Visualize-R Part I.docx" for Part I of assignment.

# PART 2 - VISUALIZATIONS
# **Data Overview**

# Dong, Lei et al. (2020), Data from: Phylogenetic structure and formation mechanism of shrub 
# communities in arid and semi-arid areas of the Mongolian Plateau, Dryad, Dataset, 
# https://doi.org/10.5061/dryad.6m905qfvv

# This paper studied the phylogenetic structure of the shrub communities in arid and semiarid 
# areas of the Mongolian Plateau. The main variables within the dataset "Traits.csv" are the 
# phylogenetic signals of the height(cm), canopy (m2), leaf length (cm) and leaf width (mm) of 
# studied shrubs and subshrubs.

MyData <- read.csv("./Traits.csv", header = T)
library(ggplot2)
str(MyData)

# Question 1 ----------------------------------------------------------------------------------
## A frequency distribution of a single continuous variable
qplot(x = height_cm, data = MyData, binwidth = 5)

# Question 2 ----------------------------------------------------------------------------------
## A bivariate plot of two continuous variables
qplot(x = height_cm, y = leafwidth_mm, data = MyData)

# Question 3 ----------------------------------------------------------------------------------
## A boxplot of a continuous variable measured in 2 or more groups
### this dataset has many rows, so for the purposes of this question, I will be using only the first
### 7 rows
qplot(x = genus, y = height_cm, data = MyData[1:7,], geom = "boxplot")

# Question 4 ----------------------------------------------------------------------------------
## A bivariate plot of two continuous variables, colour-coded for 2 or more groups and scaled in 
## size based on a third continous variable 
qplot(x = height_cm, y = leafwidth_mm, data = MyData[1:7,], size = leaflength_cm, colour = genus)

# Question 5 ----------------------------------------------------------------------------------
## One graph of your choice, of any type, using any data. Create this using ggplot() with parameters 
## to make the graph look as clean (no unnecessary lines or shading) . Try to reproduce a clean but 
## eye-catching figure that you might see in a journal like Nature or Science.

MyData2 <- read.csv("Traits _wo_uniques.csv")

mytheme <- theme(axis.line = element_line(colour = "black"),
                axis.ticks = element_line(colour = "black"),
                legend.background = element_blank(),
                legend.key = element_blank(),
                panel.background = element_rect(fill = "white"),
                panel.border = element_rect(colour = "black", fill=NA, size=1))
  
ggplot(MyData) +
  geom_point(aes(x = height_cm, y = leaflength_cm), size = 3, alpha = 0.5) +
  geom_smooth(aes(x = height_cm, y = leaflength_cm), method = "lm", se = FALSE, colour = "red") +
  scale_x_continuous(name = "Shrub Height (cm)") +
  scale_y_continuous(name = "Srub Leaf Length (cm)") +
  mytheme


