Write-Host "I want to learn Powershell" -ForegroundColor DarkRed

#Variable
10+4
10-4
10*4

$a = 10
$b = 4
$a+$b
$a-$b
$a*$b

Write-Host "Data types" -ForegroundColor Red
# Data types
$v = 1 + 1
$v 
$v.GetType()
 
$v = '1' + '1'
$v
$v.GetType()

$v = 1.9
[int32]$v
[float]$v
[string]$v
[boolean]$v
[datetime]$v 