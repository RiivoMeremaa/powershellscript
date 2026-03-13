# Küsi kasutaja ees- ja perenimi
$firstname = Read-Host "Sisesta kasutaja eesnimi"
$lastname = Read-Host "Sisesta kasutaja perenimi"

# Loo kasutajanimi (näiteks: eesnime esimene täht + perenimi)
$username = ($firstname.Substring(0,1) + $lastname).ToLower()

Write-Host "Loodud kasutajanimi on: $username"

# Proovi kasutajat kustutada
try {
    Remove-LocalUser -Name $username -ErrorAction Stop
    Write-Host "Kasutaja $username kustutamine õnnestus." -ForegroundColor Green
}
catch {
    Write-Host "Kasutaja $username kustutamine ebaõnnestus või kasutajat ei eksisteeri." -ForegroundColor Red
}