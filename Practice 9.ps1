#Do While Loop

Write-Host "Do While Loop" -ForegroundColor Red

$i = 0
do
{
    Write-Host "Current Value is : " $i -ForegroundColor Cyan
    $i++
}while($i -lt 3)


$count = 0

do {
    $process = Get-Process -Name notepad -ErrorAction SilentlyContinue
    
    if ($process) {
        Write-Host "Notepad is running"
        $count++
        Start-Sleep -Seconds 1
    }

} while ($process)

Write-Host "All Notepad instances are closed."
Write-Host "The statement was displayed $count times."