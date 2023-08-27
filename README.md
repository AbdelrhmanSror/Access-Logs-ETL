# Web Server Access Log ETL using Shell Scripting

This repository contains a Bash script that performs an ETL (Extract, Transform, Load) process using shell scripting. The script downloads a gzipped web server access log file, extracts and transforms the data, and then loads it into a PostgreSQL database.

## Features

- Automates the ETL process for log data
- Downloads and extracts log files
- Transforms data for database compatibility
- Loads transformed data into PostgreSQL
- Easily configurable PostgreSQL connection
  
## Output Data

The following table displays a sample of the output data from the PostgreSQL database after performing the ETL process:

|       timestamp       |  latitude  |  longitude  |              visitorid               |
|---------------------- |------------|-------------|--------------------------------------|
| 2021-02-07 13:55:01   | -16.23949  | -132.90744  | EDB35D96-3B72-7765-BD21-E955A87675B2 |
| 2020-07-16 15:36:41   | -34.19226  | -154.14365  | 7AEBC97C-7BD4-BA94-837A-8CDB3E880226 |
| 2021-09-13 05:50:33   |  33.04489  |   41.19598 | 39712A91-BBC8-EF3E-F984-4BDBC47057E9 |
| 2020-07-13 16:23:35   | -50.85272  | -108.75484  | 06A1B090-9696-2173-2A3B-D2C45AA069D6 |
| 2022-02-11 02:09:34   | -61.60674  |   82.79596 | DE2D0452-0772-8F82-5E97-0B7354F84DEC |
| 2021-03-07 19:38:33   | -35.13919  | -171.89367  | 2E8AF9FB-711B-DABC-0B54-A583EA6CA5FC |
| 2020-08-25 01:58:29   |  34.55951  |  -16.45943 | F8FC0124-BE9E-2E57-645F-B015E16DD116 |
| 2021-09-05 08:16:37   | -33.69251  | -174.17613  | 03B8EE90-19BB-48DC-9990-005BF80B8846 |
| ...                    |   ...      |    ...      | ...                                  |

## Usage

1. Make sure you have PostgreSQL installed and configured.
2. Clone this repository: `git clone https://github.com/AbdelrhmanSror/Access-Logs-ETL.git`
3. Navigate to the repository: `cd Access-Logs-ETL`
4. Make the Bash script executable: `chmod +x access-log.sh`
5. Run the script: `./access-log.sh`

Make sure to modify the PostgreSQL connection details in the script according to your setup.

