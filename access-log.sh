#!/bin/bash

# This script performs an ETL (Extract, Transform, Load) process using shell scripting.
# It downloads a gzipped log file, extracts and transforms the data, and loads it into a PostgreSQL database.

# Download and extract the web server access log file
wget -N "https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/ETL%20using%20shell%20scripting/web-server-access-log.txt.gz" && gunzip -f web-server-access-log.txt.gz

# Create a table called "access_logs" if it doesn't exist in the database
echo "CREATE TABLE IF NOT EXISTS access_logs (timestamp varchar(50), latitude float, longitude float, visitorid varchar(50));" | psql --username=postgres --host=localhost --dbname=template1

# Extract specific columns from the log file, replace "#" with ",", and save as "transform-data.csv"
cut -d"#" -f1-4 web-server-access-log.txt | tr "#" "," > transform-data.csv

# Load data from "transform-data.csv" into the "access_logs" table in the database
echo "\COPY access_logs FROM 'transform-data.csv' WITH (FORMAT csv, HEADER)" | psql --username=postgres --host=localhost --dbname=template1;

# Retrieve and display all records from the "access_logs" table
echo "SELECT * FROM access_logs;" | psql --username=postgres --host=localhost --dbname=template1;
