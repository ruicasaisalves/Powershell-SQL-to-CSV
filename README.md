# Powershell-SQL-to-CSV
Powershell Script to Export and SQL query to CSV

## 1 : To execute the script, you should first install SQL Server module on Powershell
Install-Module -Name SqlServer

For more informations check the Microsoft site:
https://docs.microsoft.com/en-us/sql/powershell/download-sql-server-ps-module?view=sql-server-ver15

## 2 : Change the parameters according to your needs
$ServerName = Should point to your server;<br />
$dbname = The database the query should point;<br />
$FullPath = The path where you want to save CSV - the path  should be an existing one;<br />
$FileName = The name the file should have;<br />
$dtStart and $dtEnd = optional, in this case i am filtering the query to a specific date, but its optional, you can erase it.

## 3 : Run in Powershell, in Administrator mode
1 -  **Get-ExecutionPolicy**, if it is the first time you are running Powershell or if you are not sure you can run scripts.

2 - **Set-ExecutionPolicy Unrestricted** if you want to remove restrictions to running scripts

3 - After that you can run the script.

For more informations check the Microsoft site:
https://docs.microsoft.com/en-us/sql/powershell/download-sql-server-ps-module?view=sql-server-ver15

## 4 : Optional:
**-NoTypeInformation** Removes the type information from the header;<br />
**-Delimiter ';'**<br />
**-Append** by default the Export-CSV will overwrite over an existing file this way you only add lines, but will take in consideration any duplicate the query may have<br />
**-Encoding utf8** it depend on the accentuation on the words, this way latin accents are taken in consideration<br />

For more informations check the Microsoft site:
https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/export-csv?view=powershell-7.2
