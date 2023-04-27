@echo off
set "year=%date:~0,4%"
set "month=%date:~5,2%"
set "day=%date:~8,2%"
set "hour_ten=%time:~0,1%"
set "hour_one=%time:~1,1%"
set "minute=%time:~3,2%"
set "second=%time:~6,2%"

if "%hour_ten%" == " " (
 set "time1=%year%%month%%day%0%hour_one%%minute%%second%"
) else (
 set "time1=%year%%month%%day%%hour_ten%%hour_one%%minute%%second%"
)

echo NOW TIME IS : %time1%


echo python3 novafinger.py  -X -Y -Z  %* --log-csv result-%time1%.csv
python3 novafinger.py  -X -Y -Z  %* --log-csv result-%time1%.csv

pause 