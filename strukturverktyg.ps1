# strukturverktyg.ps1
# Skapar en mappstruktur för ett nytt kundsystem
# Av: [Imer Kozhani]

function Skapa-KundsystemStruktur {
    # 1. Läs in kundnamn från användaren
    $kundnamn = Read-Host "Ange namn på kundsystemet (t.ex. 'Beijer Byggmaterial AB')"
    Write-Host "Du angav: $kundnamn"

    # 2. Definiera sökväg
    # ".\$kundnamn" betyder att mappen skapas i en katalog där skriptet körs
    $stig = ".\$kundnamn"

    try {
        # 3. Kolla om mappen redan finns
        if (Test-Path $stig) {
            throw "Mappen '$kundnamn' finns redan."
        }

        # 4. Skapa huvudmapp
        # New-Item används för att skapa själva huvudmappen med det namn användaren angav.
        # Out-Null används för att inte skriva ut resultatet till konsolen.
        New-Item -ItemType Directory -Path $stig | Out-Null

        # 5. Skapa undermappar
        # Här definieras de undermappar som alla kundsystem ska ha.
        $undermappar = @("dokumentation", "installation", "support", "loggar")
        foreach ($mapp in $undermappar) {
            # Join-Path används för att sätta ihop sökvägen till varje undermapp korrekt
            $fullStig = Join-Path -Path $stig -ChildPath $mapp
            New-Item -ItemType Directory -Path $fullStig | Out-Null
        }

        # 6. Skapa loggfil med dagens datum
        $datum = Get-Date -Format "yyyy-MM-dd"
        $tid = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
        $loggfil = Join-Path -Path $stig -ChildPath "loggar\logg_$datum.txt"
        Add-Content -Path $loggfil -Value "Kundsystemstruktur skapad: $tid"
        
        # Bekräftelse till användaren om att allt gick bra.
        Write-Host "Kundsystemstruktur för '$kundnamn' har skapats."

    } catch {
        # Om ett fel inträffar (t.ex. mappen finns redan) visas felmeddelandet här.
        Write-Host "Fel: $_"
    }
}

# Kör funktionen
Skapa-KundsystemStruktur
