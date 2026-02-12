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

$nameArray = @("Muhammed","Osama","Radical Larry")
$nameArray[0]
$nameArray[1]
$nameArray[2]

# Practice 1
$array1 = @(1, 2, 3)
$array2 = @(4, 5, 6)

$array3 = @()

$array3 += $array1[0] + $array2[0]
$array3 += $array1[1] + $array2[1]
$array3 += $array1[2] + $array2[2]

$array3

$users = @(
    [PSCustomObject]@{
        FirstName     = "John"
        LastName      = "Smith"
        MiddleInitial = "D"
        Age           = 40
    }
    [PSCustomObject]@{
        FirstName     = "Joe"
        LastName      = "Parker"
        MiddleInitial = "L"
        Age           = 32
    }
    [PSCustomObject]@{
        FirstName     = "Gary"
        LastName      = "Smith"
        MiddleInitial = "N"
        Age           = 25
    }
)

$users | Format-Table -AutoSize

$daysWorked  = @{John=12; Joe=20; Mary=18}
$salaryPerDay = @{John=100; Joe=120; Mary=150}
$salary = @{}

foreach ($name in $daysWorked.Keys) {
    $salary[$name] = $daysWorked[$name] * $salaryPerDay[$name]
}

$users = @()
foreach ($name in $daysWorked.Keys) {
    $users += [PSCustomObject]@{
        Name         = $name
        DaysWorked   = $daysWorked[$name]
        SalaryPerDay = $salaryPerDay[$name]
        Salary       = $salary[$name]
    }
}

$users | Format-Table -AutoSize

Get-Service ALG

Get-Service App*

Get-Service A*

Get-Date

Get-Date |Fl

Get-Date | Format-List

Get-Service BITS | Format-List

Get-Service BITS | Format-List *

Get-Service BITS | Format-List *name*

Get-Date | Format-Table

Get-Date | FT

Get-Service BITS

Get-Service BITS | Format-Table

Get-Service BITS | Format-Table -AutoSize

Get-Service BITS | Format-Table -Auto

Get-Service a*

Get-Service a* | Sort-Object Status

Get-Service EventLog

Get-Service EventLog | fl

$service = Get-Service EventLog | Select Name,Status

$service 