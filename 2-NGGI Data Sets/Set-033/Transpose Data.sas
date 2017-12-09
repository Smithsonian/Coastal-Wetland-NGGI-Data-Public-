proc import datafile="S:\Biogeochemistry\NOAA US Carbon Accounting\US Coastal Carbon Accounting\3-Third Data Compilation\Set-033\US-BC-Entry-33.xlsx"
out=InputData
dbms=excel
replace;
sheet="Data";

proc transpose data=InputData
out=TransData (drop=_NAME_ _LABEL_ Location Classification Properties Biomass_Accounting Soil_Accounting);
id source; var site1--site1;
run;

proc export data=TransData
outfile="S:\Biogeochemistry\NOAA US Carbon Accounting\US Coastal Carbon Accounting\3-Third Data Compilation\Set-033\US-BC-Analysis-33.csv" replace dbms=csv;
run;