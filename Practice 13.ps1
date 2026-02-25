#Practice 13 

function ShowMainMenu {
    Clear-Host
    Write-Host "`t`t`tArea Calculator" -ForegroundColor Cyan
    Write-Host "`n`t`t`tMain Menu" -ForegroundColor Cyan
    Write-Host "`nPlease select the option to perform the respective task:`n" -ForegroundColor White
    Write-Host "1: Area of Square" -ForegroundColor Green
    Write-Host "2: Area of Rectangle" -ForegroundColor Green
    Write-Host "3: Area of Circle" -ForegroundColor Green
    Write-Host "4: Area of Triangle" -ForegroundColor Green
    Write-Host "5: Exit`n" -ForegroundColor Green
    $choice = Read-Host "Enter your choice"
    return $choice
}

function ShowNextMenu {
    Write-Host "`n`nPlease select the next option:" -ForegroundColor White
    Write-Host "`n1: Return to Main Menu" -ForegroundColor Green
    Write-Host "2: Exit`n" -ForegroundColor Green
    $choice = Read-Host "Enter your choice"
    
    if ($choice -eq "1") {
        return $true
    }
    elseif ($choice -eq "2") {
        Write-Host "Exiting... Goodbye!" -ForegroundColor Red
        exit
    }
    else {
        Write-Host "`nInvalid choice! Please try again." -ForegroundColor Red
        return $false
    }
}

function CalculateSquareArea {
    Clear-Host
    Write-Host "`t`t`tArea of Square`n" -ForegroundColor Cyan
    $side = [int](Read-Host "Enter the side of the square")
    $area = $side * $side
    Write-Host "`nArea of the square: $area" -ForegroundColor Green
}

function CalculateRectangleArea {
    Clear-Host
    Write-Host "`t`tArea of Rectangle`n" -ForegroundColor Cyan
    $length = [int](Read-Host "Enter length of the rectangle")
    $breadth = [int](Read-Host "Enter breadth of the rectangle")
    $area = $length * $breadth
    Write-Host "`nArea of the rectangle: $area" -ForegroundColor Green
}

function CalculateCircleArea {
    Clear-Host
    Write-Host "`t`tArea of Circle`n" -ForegroundColor Cyan
    $radius = [int](Read-Host "Enter the radius of the circle")
    $area = 3.14 * $radius * $radius
    Write-Host "`nArea of the circle: $area" -ForegroundColor Green
}

function CalculateTriangleArea {
    Clear-Host
    Write-Host "`t`tArea of Triangle`n" -ForegroundColor Cyan
    $height = [int](Read-Host "Enter height of the triangle")
    $base = [int](Read-Host "Enter base of the triangle")
    $area = 0.5 * $height * $base
    Write-Host "`nArea of the triangle: $area" -ForegroundColor Green
}

do {
    $choice = ShowMainMenu

    switch ($choice) {
        1 { cls; CalculateSquareArea }
        2 { cls; CalculateRectangleArea }
        3 { cls; CalculateCircleArea }
        4 { cls; CalculateTriangleArea }
        5 { Write-Host "Exiting the application. Goodbye!" -ForegroundColor Red; exit }
        default { Write-Host "`nInvalid choice! Please select a valid option." -ForegroundColor Red }
    }

    $continue = $false
    while (-not $continue) {
        $continue = ShowNextMenu
    }

} while ($true)