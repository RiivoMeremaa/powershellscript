#While loop
Write-Host "While loop" -ForegroundColor Red

$i = 0
while($i -lt 3)
{
    Write-Host "Current Value is : " $i -ForegroundColor Yellow
    $i++
}

#Practice 8

while (Get-Process -Name notepad -ErrorAction SilentlyContinue)
{
    Write-Host "Notepad is running"
    Start-Sleep -Seconds 2
}

Write-Host "All Notepad instances are closed. Loop ended."