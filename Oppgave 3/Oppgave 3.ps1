#Oppgave 3

 

$folderPath = "/Users/igor/downloads/Legendery-palm-tree-main/Oppgave 3"

 

# Funksjon for å telle filer som matcher mønster og filtype

function CountMatchingFiles {

    param (

        [string]$folderPath,

        [string]$pattern,

        [string]$fileType

    )

 

    # Hent alle filer i mappen og undermapper

    $files = Get-ChildItem -Path $folderPath -File -Recurse

 

    # Tell antall filer som matcher mønster og filtype

    $count = 0

    foreach ($file in $files) {

        if ($file.Extension -eq ".$fileType" -and (Get-Content $file.FullName | Select-String -Pattern $pattern -Quiet)) {

            $count++

        }

    }

 

    return $count

}

 

# Kjør funksjonen og lagre antallet matcher

$matchingFileCount = CountMatchingFiles -folderPath $folderPath -pattern "Sommer" -fileType "txt"

 

# Skriv ut resultatet

Write-Host "Antall filer som matcher mønster 'Sommer' og filtype '.txt': $matchingFileCount"

 