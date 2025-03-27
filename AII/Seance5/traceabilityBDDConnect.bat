@ECHO OFF
cd
chcp 1252
REM psql traceability postgres 	
psql postgresql://postgres:postgres@localhost:5432/traceability

pause
