# Load in the dplyr package
library(dplyr)

# Import and read MechaCar_mpg.cvs
MechaCar_table <- read.csv(file = 'MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Convert AWD into numeric
MechaCar_table$AWD <- as.numeric(MechaCar_table$AWD)

# Perform linear regression using lm() passing all six columns as variable to predict mpg
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table)

# Get summary to determine th ep-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table))
