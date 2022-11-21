
rem 自动创建文件夹(以当前时间命名)_05-07-2022.bat
if "%time:~0,1%"==" " set "time=0%time:~1%"

@echo off
color 0a
for /f "tokens=*" %%a in ('time/t') do set now=%%a
set ymd=%date:~8,2%-%date:~5,2%-%date:~0,4%
set hms=%now:~0,2%%now:~3%%time:~6,2%
set dt=%hms%-%ymd%
echo %dt%
mkdir 华康-%ymd%
explorer 华康-%ymd%
::pause