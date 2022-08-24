# Load in the dplyr package
library(dplyr)

# Load tidyverse
library(tidyverse)

# Import and read MechaCar_mpg.cvs
MechaCar_table <- read.csv(file = 'MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Convert AWD into numeric
MechaCar_table$AWD <- as.numeric(MechaCar_table$AWD)

# Perform linear regression using lm() passing all six columns as variable to predict mpg
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table)

# Get summary to determine th ep-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table))


# Import and read Suspension_Coil.csv
Suspension_Coil_table <- read.csv(file= 'Suspension_Coil.csv', check.names = F,stringsAsFactors = F)

# Create a dataframe called total_summary to get the mean, median, varianve and Std of the suspensions coil's PSI column
total_summary <- Suspension_Coil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# Create a dataframe called lot_summary grouping each lot by the mean, median, variance, standard deviation of the suspension coil's PSI column
lot_summary <- Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
