@echo off
set /p db="Database: "
echo %db%
mysql -u root -p %db% < %1
exit /b

