Here's code for a map of the primary home heating source by county in New Mexico. 
It's intentionally simple and static, using just the usmap package.

This uses one ACS table: B25040, house heating fuel, the single estimate, not including margin of error.  

This begins with a .csv file. I previously cleaned the table in LibreOffice by removing some 
extraneous columns, trimming the county names, fixing spelling of Doña Ana County and renaming the file
for clarity. 

I also manually assigned the primary heating source manually, couldn't figure out how to do it in R.

Your workflow will vary.
