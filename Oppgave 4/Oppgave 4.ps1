#Oppgave4

 

$region = "Europe"

$url = "https://restcountries.com/v3.1/region/$region"

 

# Hent data fra API-et

$response = Invoke-RestMethod -Uri $url -Method Get

 

# Sjekk om det kom tilbake noen data

if ($response) {

    $countries = $response

    # Skriv ut responsen for å sjekke strukturen

foreach($country in $countries){

    '{0} is the capital of {1}' -f $country.capital[0]  , $country.name.common

}

} else {

   Write-Host "Kunne ikke hente data fra API-et."

}