# Here's a map of the primary home heating source by county in New Mexico. It's intentionally simple and static, using just the usmap package.

# This uses one ACS table: B25040, house heating fuel, and the ACS 5-year estimates for 2016, the single estimate, not including margin of error.  

# This begins with a .csv file. I previously cleaned the table in LibreOffice by removing some extraneous columns, trimming the county names, fixing spelling of Doña Ana County and renaming the file for clarity. Your workflow will vary.


#load packages

library(tidyverse)
library(usmap)

#read in data
heating <- read.csv("nm_counties_heating_16.csv", stringsAsFactors = F)

#make a vector for the discrete colors
heatscale <- c("Utility gas" = "skyblue3", "Electricity" = "khaki1", "Wood" = "sandybrown", "Bottle/tank/LP gas" = "violetred1")

#plot the map
plot_usmap("counties", data = heating, values = "top", include = "NM") +
	scale_fill_manual(name = "Fuel type", values = heatscale) +
	labs(title = "Primary home heating source in New Mexico by county",
	subtitle = "Data source: ACS 2016 5-year estimates")+
	theme(legend.position = "right")

#output 
png("heat1.png", width = 1800, height = 1274, units = "px", res = 300)
#paste code here
dev.off()

