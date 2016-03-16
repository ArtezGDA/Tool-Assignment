# Mou

![Mou icon](http://mouapp.com/Mou_128.png)

## Overview

**Mou**, the missing Markdown editor for *web developers*.

### Syntax

#### Strong and Emphasize 

**strong** or __strong__ ( Cmd + B )

*emphasize* or _emphasize_ ( Shift + Cmd + I )

**Sometimes I want a lot of text to be bold.
Like, seriously, a _LOT_ of text**

#### Blockquotes

> Right angle brackets &gt; are used for block quotes.

#### Links and Email

An email <example@example.com> link.

Simple inline link <http://chenluois.com>, another inline link [Smaller](http://smallerapp.com), one more inline link with title [Resize](http://resizesafari.com "a Safari extension").

A [reference style][id] link. Input id, then anywhere in the doc, define the link with corresponding id:

[id]: http://mouapp.com "Markdown editor on Mac OS X"

Titles ( or called tool tips ) in the links are optional.

#### Images

An inline image ![Smaller icon](http://smallerapp.com/favicon.ico "Title here"), title is optional.

A ![Resize icon][2] reference style image.

[2]: http://resizesafari.com/favicon.ico "Title"

#### Inline code and Block code

Inline code are surround by `acute` key. To create a block code:

	Indent each line by at least 1 tab, or 4 spaces.
    var Mou = exactlyTheAppIwant; 

####  Ordered Lists

Ordered lists are created using "1." + Space:

1. Odered list item
2. Odered list item
3. Odered list item

#### Unordered Lists

Unordered list are created using "*" + Space:

* Unordered list item
* Unordered list item
* Unordered list item 

Or using "-" + Space:

- Unordered list item
- Unordered list item
- Unordered list item

#### Hard Linebreak

End a line with two or more spaces will create a hard linebreak, called `<br />` in HTML. ( Control + Return )  
Above line ended with 2 spaces.

#### Horizontal Rules

Three or more asterisks or dashes:

***

---

- - - -

#### Headers

Setext-style:

This is H1
==========

This is H2
----------

atx-style:

# This is H1
## This is H2
### This is H3
#### This is H4
##### This is H5
###### This is H6


### Shortcuts

#### View

* Toggle live preview: Cmd + I
* Left/Right = 1/1: Cmd + 0
* Left/Right = 3/1: Cmd + +
* Left/Right = 1/3: Cmd + -
* Toggle layout orientation: Cmd + L
* Toggle fullscreen: Control + Cmd + F

#### Actions

* Copy HTML: Option + Cmd + C
* Strong: Select text, Cmd + B
* Emphasize: Select text, Shift + Cmd + I
* Link: Select text, Control + Shift + L
* Image: Select text, Control + Shift + I
* Uppercase: Select text, Control + U
* Lowercase: Select text, Control + Shift + U
* Titlecase: Select text, Control + Option + U
* Select Word: Control + Option + W
* Select Line: Shift + Cmd + L
* Select All: Cmd + A
* Deselect All: Cmd + D
* Insert entity <: Control + Shift + ,
* Insert entity >: Control + Shift + .
* Insert entity &: Control + Shift + 7
* Insert entity Space: Control + Shift + Space
* Shift Line Left: Cmd + [
* Shift Line Right: Cmd + ]
* New Line: Cmd + Return
* Comment: Cmd + /
* Hard Linebreak: Control + Return

#### Edit

* Auto complete current word: Esc
* Find: Cmd + F
* Close find bar: Esc

#### Export

* Export HTML: Cmd + E


### And more?

Don't forget to check Preferences, lots of useful options are there. You can Disable/enable **Show Live Preview** in new documents, Disable/enable **Auto pair**, **Make links clickable in Editor view**, change **Base Font**, choose another **Theme** or create your own!

Follow [@chenluois](http://twitter.com/chenluois) on Twitter for the latest news.

For feedbacks, use the menu `Help` - `Send Feedback`
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

[Tab converter demo](Wired.gif)
## Your Own Tool

### Concept
Browser window to PDF converter

Een tool waarmee je al je open tabs in de browser omzet naar een pdf-bestand met screenshot website, url en naam.
Het is mogelijk om door het pdf heen te scrollen en de informatie van de websites te bekijken.
### Sketch

### Demo
[Tab converter](Wired.gif)

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

