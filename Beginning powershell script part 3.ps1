Write-Host "It is a good day" -ForegroundColor Green

Write-Host "It is a good day" -ForgeroundColor Yellow

Write-Host "It is a good day"

Write-Host "It is a good day" -ForegroundColor Cyan 

$i = 10
$j = 5
if ($i -gt $j)
{
Write-Host "$i is greater than $j"
}
else
{
Write-Host "$j is greater than $i"
}

Get-Service -Name Spooler

$service = Get-Service Spooler | Select Status

if($service.Status -eq "Running")
 {
  Write-Host "Service is Good" -ForegroundColor Green
 }
 elseif($service.status -eq "Stopped")
 {
  Write-Host "Service is Bad" -ForegroundColor Red
 }

Get-Service Fax

$service = Get-Service Fax | Select Status

if($service.Status -eq "Running")
 {
  Write-Host "Service is Good" -ForegroundColor Green
 }
 elseif($service.status -eq "Stopped")
 {
  Write-Host "Service is Bad" -ForegroundColor Red
 }
