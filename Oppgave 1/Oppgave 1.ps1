#Oppgave1

 

# Les innholdet fra filen

$filePath = "/Users/igor/downloads/Legendery-palm-tree-main/Oppgave1/file.txt"

$fileContent = Get-Content -Path $filePath

 

Write-Output 'before reverse' $fileContent

 

# Reverser hver linje

 

$reversedContent = foreach ($line in $fileContent) {

    -join ($line.ToCharArray() | Sort-Object {$_} -Descending)

}

# Skriv ut den omvendte teksten

Write-Output 'after reverse'

 

Write-Output $reversedContent

 

 