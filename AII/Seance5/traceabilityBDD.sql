
DROP DATABASE IF EXISTS "traceability";
CREATE DATABASE "traceability" ;
\c traceability
DROP TABLE IF EXISTS "ProductionMonitoring";

CREATE TABLE ProductionMonitoring (
	PartId TEXT PRIMARY KEY,
	ProductTypeId INTEGER,
	PartState INTEGER,
	DefaultCode INTEGER,
	InsertBatch	TEXT,
	PlasticBatch TEXT,
	MoldId INTEGER,
	MoldingTemp REAL,
	Diameter REAL);
	
-- TO BE DONE: CREATE Tables ProductInfos et FaultCodes

\COPY ProductionMonitoring(PartId, ProductTypeId, PartState, DefaultCode, InsertBatch, PlasticBatch, MoldId, MoldingTemp, Diameter) FROM './ProductionMonitoring.csv' WITH CSV HEADER DELIMITER ';' NULL AS 'NULL';

-- TO BE DONE: IMPORT Tables ProductInfos et FaultCodes
