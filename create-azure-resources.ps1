
# Set variables
$resourceGroup = "cms"
$location = "East US"
$serverName = "flask-sql-server-4175"
$databaseName = "cms"
$adminLogin = "cmsadmin"
$storageAccountName = "cmsimages" 
$adminPasswordText = "CMS4dmin"

Import-Module SqlServer

Write-Host "Executing users table script..." -ForegroundColor Blue

Invoke-Sqlcmd -ServerInstance "$serverName.database.windows.net" `
              -Database $databaseName `
              -Username $adminLogin `
              -Password $adminPasswordText `
              -InputFile "sql_scripts/users-table-init.sql" `
              -ConnectionTimeout 30 `
              -QueryTimeout 30

Write-Host "Executing posts table script..." -ForegroundColor Blue
Invoke-Sqlcmd -ServerInstance "$serverName.database.windows.net" `
              -Database $databaseName `
              -Username $adminLogin `
              -Password $adminPasswordText `
              -InputFile "sql_scripts/posts-table-init.sql" `
              -ConnectionTimeout 30 `
              -QueryTimeout 30

Write-Host "✓ Database tables created and populated successfully!" -ForegroundColor Green