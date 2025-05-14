# Strukturverktyg för Kundsystem

## Beskrivning
Detta PowerShell-skript skapar en färdig mappstruktur för ett nytt kundsystem. Det kan användas i IT-projekt där man hanterar nya kunder och vill snabbt sätta upp en strukturerad arbetsyta.

När du kör skriptet:
- Får du ange ett kundnamn (t.ex. "Beijer Byggmaterial AB").
- Det skapas en mapp med det namnet.
- Följande undermappar skapas automatiskt:
  - "dokumentation/" – tekniska dokument och kundinformation
  - "installation/" – installationsfiler, konfigurationsguider etc.
  - "support/" – ärenden, felsökningar, lösningar
  - "loggar/" – loggfiler och arbetslogg

En loggfil ("logg_YYYY-MM-DD.txt") skapas i "loggar/", med en tidsstämpel för när strukturen skapades.

## Så här kör du skriptet

1. Öppna PowerShell.
2. Navigera till mappen där "strukturverktyg.ps1" ligger:
```powershell
 cd "C:\Users\Imer Kozhani\Documents\Inlamning1"

```
 ## Reflektion

Det här projektet har lärt mig grunderna i hur man använder PowerShell för att automatisera praktiska IT-uppgifter, som att skapa mappar, loggfiler och arbeta med felhantering.
Att strukturera koden med funktioner såsom "try/catch" gjorde att skriptet blev mer robust.
En rolig aspekt av det hela var att jag valde riktiga företag som finns i Kalmar. 
Det kändes mer relevant att arbeta med ett exempel från byggbranschen.
Då man ser hur skriptet kan användas i verkliga sammanhang, t.ex. för att sätta upp projektstruktur för olika kundsystem inom bygg och materialförsörjning.

   
