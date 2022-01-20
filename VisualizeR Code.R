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

MyData <- read.csv("./Traits.csv")
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

# Question 4 ----------------------------------------------------------------------------------
## A bivariate plot of two continuous variables, colour-coded for 2 or more groups and scaled in 
## size based on a third continous variable 

# Question 5 ----------------------------------------------------------------------------------
## One graph of your choice, of any type, using any data. Create this using ggplot() with parameters 
## to make the graph look as clean (no unnecessary lines or shading) . Try to reproduce a clean but 
## eye-catching figure that you might see in a journal like Nature or Science.














