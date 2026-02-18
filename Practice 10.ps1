#Do Untill Loop

Write-Host "Do Untill Loop" -ForegroundColor Red

$i = 0
do
{
    Write-Host "Current Value is : " $i -ForegroundColor Cyan
    $i++
}until($i -ge 3)


#Practice 10

Write-Host "Practice 10" -ForegroundColor Red

$count = 0

do {
    Write-Host "Notepad is running"
    $count++
    Start-Sleep -Seconds 1
}
until (-not (Get-Process -Name notepad -ErrorAction SilentlyContinue))

Write-Host "All Notepad instances are closed."
Write-Host "The statement was displayed $count times."
