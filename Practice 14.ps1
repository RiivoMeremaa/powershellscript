# Practice 14
$reportFile = "C:\Temp\report.txt"

#Bin
"" | Out-File $reportFile

$name = Read-Host "Enter your name"
$count = Read-Host "How many times to greet?"

$count = [int]$count

$output = @()

for ($i = 1; $i -le $count; $i++) {
    $greeting = "Hello, $name! ($i)"
    Write-Host $greeting
    $output += $greeting
}

#System info

Write-Host "Quick system information"

$computerName = "Computer Name: $env:COMPUTERNAME"
$userName = "Logged-in User: $env:USERNAME"
$psVersion = "PowerShell Version: $($PSVersionTable.PSVersion)"

Write-Host $computerName
Write-Host $userName
Write-Host $psVersion

$output += "System info"
$output += $computerName
$output += $userName
$output += $psVersion

#CMDLET

Write-Host ""
Write-Host "First 3 processes"

$processes = Get-Process | Select-Object -First 3 Name, Id
Write-Host $processes

$output += ""
$output += "First 3 processes"
$output += $processes

#Services

Write-Host ""
Write-Host "First 3 services"

$services = Get-Service | Select-Object -First 3 Name, Status
Write-Host $services

$output += ""
$output += "First 3 services"
$output += $services

#PowerShell Version

Write-Host ""
Write-Host "PowerShell version controll"

if ($PSVersionTable.PSVersion.Major -lt 5) {
    $message = "WARNING: PowerShell version is below 5!"
}
else {
    $message = "PowerShell version is suitable."
}

Write-Host $message
$output += ""
$output += "--- Version Check ---"
$output += $message

#Save

$output | Out-File $reportFile -Append

#End

Write-Host "==========================="
Write-Host "Script finished successfully"
Write-Host "==========================="

#Date and time

$dateTime = "Date & Time: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
Write-Host $dateTime
$output += ""
$output += $dateTime