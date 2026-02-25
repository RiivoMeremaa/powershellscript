#Switch

Write-Host "Switch" -ForegroundColor Red

Write-Host "Check Service Status" -ForegroundColor Green
Write-Host "1: Check status of Windows Audio service" -ForegroundColor Yellow
Write-Host "2: Check status of Print Spooler service" -ForegroundColor Yellow
Write-Host "3: Check status of Netlogon service" -ForegroundColor Yellow

$choice = Read-Host "Please enter your choice"
switch($choice)
{
1
{
Get-Service Audiosrv
}
2
{
Get-Service Spooler
}
3
{
Get-Service Netlogon
}
}

#Practice 11

Write-Host "Practice 11" -ForegroundColor DarkRed

$num1 = [double](Read-Host "Enter the first number")
$num2 = [double](Read-Host "Enter the second number")

$choice = Read-Host "1. Add  2. Subtract  3. Multiply  4. Divide  5. Exit"

switch ($choice) {
    1 {Write-Host "$num1 + $num2 = $($num1 + $num2)"}
    2 {Write-Host "$num1 - $num2 = $($num1 - $num2)"}
    3 {Write-Host "$num1 * $num2 = $($num1 * $num2)"}
    4 {
        if ($num2 -eq 0) {
            Write-Host "Error: Division by zero"
        } else {
            Write-Host "$num1 / $num2 = $($num1 / $num2)"
        }
    }
    5 {Write-Host "Goodbye!"}
    default {Write-Host "Invalid choice"}
}