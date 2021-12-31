-- comment /* */
-- copy to /tmp

-- mysql -u username -p --local-infile=1<F5> 

--mysqlimport --local -u user -p test customers.txt

-- mysqlimport -u root -p --fields-terminated-by=',' --local dbname tablename.csv


/* $ ls -lh /usr/local/var/mysql/
# Update to correct owner
$ sudo chown -R _mysql:admin /usr/local/var/mysql/*
*/
-- $ mysql -uroot -p -e 'SHOW VARIABLES WHERE Variable_Name="datadir"'
/* 
CREATE USER 'userName'@'%' IDENTIFIED BY '************';

GRANT ALL PRIVILEGES ON * . * TO 'userName'@'%' IDENTIFIED BY '************' WITH GRANT OPTION MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0 ;

GRANT ALL PRIVILEGES ON `userName\_%` . * TO 'userName'@'%';

chown -R mysql /var/lib/mysql/resource/

    GRANT ALL ON owncloud.* to ‘owncloud’@’localhost’ IDENTIFIED BY ‘owncloud_database_password’;

    FLUSH PRIVILEGES;
*/ 
drop database elementsdb;
create database elementsdb;
use elementsdb;
CREATE TABLE elements (
AtomicNumber integer ,
Element varchar(15) ,
Symbol varchar(3), 
AtomicMass real ,
Neutrons integer ,
Protons integer ,
Electrons integer,
Period integer ,
eGroup varchar(15), 
Phase integer ,
Radioactive varchar(3),
eNatural varchar(3),
Metal varchar(6),
Nonmetal varchar(8),
Metalloid varchar(9) ,
eType varchar(10),
AtomicRadius real, 
Electronegativity real, 
FirstIonization real, 
Density real,
MeltingPoint real, 
BoilingPoint real ,
Isotopes integer ,
Discoverer varchar(20), 
Year integer ,
SpecificHeat real, 
Shells integer ,
Valences integer
);
LOAD DATA local INFILE '/home/user/elements.csv' 
INTO TABLE elements
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
