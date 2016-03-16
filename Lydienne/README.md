# Lydienne's Tools

## Color Picker

### Concept & Sketch
Iphone Color Picker App

Een Color Picker App voor je iPhone, makkelijk te gebruiken en altijd bij de hand.
Met de iPhone lens maak je een foto, de foto kunt je inzomen tot pixel blokken.
selecteer de pixelblok/kleur die je wilt en klik op opslaan.
Als je de kleur opsla krijg je een bestand binnen de app met de foto, geselecteerde kleur en de kleurcode in 3 verschillende kleursystemen.

Door de foto op te slaan kun je later ook andere kleuren uit de foto halen.
Door het een draagbare app te maken, kun je op elk moment interessante kleuren uit je omgeving opslaan in je kleuren database. 
### Prototype

[IPhone and Photoshop color picker](color_picker_2.gif)
## Your Own Tool

### Concept
Browser window to PDF converter

Een tool waarmee je al je open tabs in de browser omzet naar een pdf-bestand met screenshot website, url en naam.
Het is mogelijk om door het pdf heen te scrollen en de informatie van de websites te bekijken.
### Sketch

### Demo
[Tab converter](Wired.com_Tabs_3.gif)  
[Output PDF](Wired.com_Tabs.pdf)


```
set url_list to {}set the date_stamp to ((the current date) as string)set NoteTitle to report_Title & " | " & the date_stamp
tell application "Safari"	activate	set safariWindow to window 1	repeat with w in safariWindow		try			repeat with t in (tabs of w) --w = window				set TabTitle to (name of t) --t = tab				set TabURL to (URL of t)				set TabInfo to ("" & TabTitle & return & TabURL & return & return)				copy TabInfo to the end of url_list			end repeat		end try	end repeatend tell
de AppleScript's text item delimiters haalt een stuk tekst uitelkaar en haalt de data die je nodig hebt eruit. in dit geval de urls.set old_delim to AppleScript's text item delimitersset AppleScript's text item delimiters to returnset url_list to (NoteTitle & return & return & return & url_list) as textset AppleScript's text item delimiters to old_delim
ALFRED, KM, ETC.)tell application "Finder"	activate	set save_File to choose file name with prompt "Name this file:" default name report_Title default location (path to desktop folder)
tell application "System Events"	set save_File to open for access (save_File & ".txt" as string) with write permission	try		write url_list to save_File	end try	close access save_Fileend tellend tell
```

### How to install and use
U kunt gebruik maken van de script door het in een finder-venster menu te plaatsen. Wanneer u een browser heeft met veel tabs, hoef u simple web op de script icon te klikken en de pdf word geconverteert.

## Other Homework

