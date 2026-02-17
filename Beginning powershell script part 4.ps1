$result = @()

$services = Get-Content C:\Users\Riivo\powershellscript\Services.txt

foreach($s in $services)
{
    $data = $null
    $data = Get-Service $s | Select Name, Status
    $result += $data
}

$result

$result = @()

$services = Get-Content "C:\Users\Riivo\powershellscript\Services.txt"

$services | ForEach-Object {

    Write-Host "Checking status of service: $_"

    $data = $null
    $data = Get-Service $_ | Select-Object Name, Status

    $result += $data
}

$result

#Practice 6

$students = Import-Csv "C:\Users\Riivo\powershellscript\students.csv"

$result = @()

foreach ($s in $students) {
    if ([int]$s.Age -ge 4 -and [int]$s.Age -le 10) {
        $school = "Junior"
    }
    elseif ([int]$s.Age -ge 11 -and [int]$s.Age -le 17) {
        $school = "Senior"
    }

    $result += [PSCustomObject]@{
        Name   = $s.Name
        School = $school
    }
}

#Practice 7

$desiredOrder = "Tom","Mary","Lily","John","Joe","Emily"
$result = $result | Sort-Object {[array]::IndexOf($desiredOrder, $_.Name)}

$result | Format-Table
$result | Export-Csv "C:\Users\Riivo\powershellscript\StudentSchoolOutput.csv" -NoTypeInformation

for($i = 1 ; $i -le 10 ; $i++)
{
 Write-Host "Current value : "$i -ForegroundColor Green
}

$colors = "Red","Green","Yellow","Blue"
$result = @()

for ($i = 1; $i -le 20; $i++) {
    $group = Get-Random -InputObject $colors
    $result += [PSCustomObject]@{
        RollNumber = $i
        Group      = $group
    }
}

$result | Format-Table -AutoSize
