# Functions

Write-Host "Functions" -ForegroundColor Black

function SayHello {
    Write-Host "My name is Jake"
    Write-Host "I am 25 years old"
    Write-Host "I like powershell"
}

SayHello

function hi
{
param
(
[string]$name,
[int]$age
)
Write-Host "My name is $name" -ForegroundColor Red
Write-Host "My age is $age" -ForegroundColor Black
Write-Host "I like powershell" -ForegroundColor DarkGreen
}

hi -name Joe -age 35


#Practice 12

Write-Host "Practice 12" -ForegroundColor Red

function countstart {
    $start = Get-Service | Where-Object {$_.Status -eq "Running"}
    Write-Host "Total services in running state = $($start.Count)"
}

function countstop {
    $stop = Get-Service | Where-Object {$_.Status -eq "Stopped"}
    Write-Host "Total services in stopped state = $($stop.Count)"
}

countstart
countstop



function countservice {
    param (
        [string]$status
    )
    
    if ($status -eq "Running") {
        $start = Get-Service | Where-Object {$_.Status -eq "Running"}
        Write-Host "Total services in running state = $($start.Count)"
    } 
    elseif ($status -eq "Stopped") {
        $stop = Get-Service | Where-Object {$_.Status -eq "Stopped"}
        Write-Host "Total services in stopped state = $($stop.Count)"
    } 
    else {
        Write-Host "Invalid status. Please enter 'Running' or 'Stopped'."
    }
}

countservice -status "Running"
countservice -status "Stopped"