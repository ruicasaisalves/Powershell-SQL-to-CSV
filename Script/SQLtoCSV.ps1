param
(
[Parameter(Mandatory = $false)] [String] $ServerName = '.\sql19',
[Parameter(Mandatory = $false)] [String] $dbname = 'StackOverflowDEV',
[Parameter(Mandatory = $false)] [String] $FullPath = 'C:\Temp\',
[Parameter(Mandatory = $false)] [String] $FileName = 'StackOverflow_Users_Notas.csv',
[Parameter(Mandatory = $false)] [datetime] $dtStart = "2008-10-01",
[Parameter(Mandatory = $false)] [datetime] $dtEnd = "2008-10-10"
)

$Query = "SELECT TOP (1000) [Id]
      ,[CreationDate]
      ,[DisplayName]
      ,[DownVotes]
      ,[LastAccessDate]
      ,[Location]
      ,[Reputation]
      ,[UpVotes]
      ,[Views]
      ,[AccountId]
  FROM [Users]
  where CreationDate> '$dtStart' and CreationDate<'$dtEnd'
  order by CreationDate desc"

invoke-sqlcmd -query $Query -database $dbname -serverinstance $ServerName |export-csv -NoTypeInformation -path $FullPath$FileName -Delimiter ';'
