#Ülesanne 1

$firstName = Read-Host "Sisesta kasutaja eesnimi "
$lastName  = Read-Host "Sisesta kasutaja perenimi "

if ($FirstName -notmatch "^[a-zA-Z]+$" -or $LastName -notmatch "^[a-zA-Z]+$") {
    Write-Host "Viga: Nimi võib sisaldada ainult ladina tähti!" -ForegroundColor Red
    exit
}

$UserName = ($FirstName + "." + $LastName).ToLower()

$FullName = "$FirstName $LastName"
$Description = "Local user $FullName"

$Password = ConvertTo-SecureString "Parool1!" -AsPlainText -Force

$ExistingUser = Get-LocalUser -Name $UserName -ErrorAction SilentlyContinue

if ($ExistingUser) {
    Write-Host "Viga: Kasutaja $UserName juba eksisteerib!" -ForegroundColor Red
}
else {

New-LocalUser -Name $UserName `
                  -Password $Password `
                  -FullName $FullName `
                  -Description $Description `
                  -ErrorAction SilentlyContinue

  if ($?) {
        Write-Host "Kasutaja $UserName on edukalt loodud." -ForegroundColor Green
    }
    else {
        Write-Host "Kasutaja loomine ebaõnnestus." -ForegroundColor Red
    }
}