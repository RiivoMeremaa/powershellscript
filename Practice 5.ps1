#Write-Host "where/Where-Object" -ForegroundColor Blue

#Get-Service | where{$_.status -eq "Stopped"}

#Get-service | where{$_.status -eq "Stopped" -and $_.name -like "A*"}

#(Get-Service).where({$_.name -like "A*"})

#Practice 5

Write-Host "Pracitce 5" -ForegroundColor Red

Get-Process | where{$_.ProcessName -eq "notepad"} | Select ProcessName,Id

# Teine ülesanne 

$file = Get-ChildItem -Path "C:\temp\test" -Filter "*.csv" | Select-Object -First 1
Write-Host "`nFileName : $($file.Name)"
Write-Host "Size in KB : $($file.Length / 1KB)"
Write-Host "Size in MB : $($file.Length / 1MB)"