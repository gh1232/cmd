CREATE TEMPORARY TABLE csvtable

LOAD DATA INFILE 'PathToCSVFile' 
INTO TABLE csvtable 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
