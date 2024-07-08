#Oppgave2

 

# Les innholdet fra filen

$filePath = "/Users/igor/downloads/Legendery-palm-tree-main/Oppgave 2/array.json"

$fileContent = Get-Content -Path $filePath | ConvertFrom-Json

 

$evenNumbers = $fileContent | Where-Object { $_ % 2 -eq 0 }

$sumOfEvenNumbers=$evenNumbers | Measure-Object -Sum | Select-Object -ExpandProperty Sum

# Skriv ut partallene og summen

Write-Output "partall: $($evenNumbers -join ', ')"

Write-Output "summen av alle partall: $($sumOfEvenNumbers)"

 