#!/usr/bin/env python
import subprocess
import time
import datetime

'''
	Let op!!!! Deze loop loopt oneindig door en je zult zelf het script moeten killen.
'''
while True:
	'''
		De naam van het bestand alvast setten zodat screencapture hem met specifieke naam opslaat
		en je daarna datzelfde bestand weer kan openen.

		Stel je doet twee keer de date bepalen, kan het zijn dat de secondes net verkeerd staan
		en dan hang je.
	'''
	fileprefix = datetime.datetime.now().strftime('%Y%m%d%H%M%S')
	filesuffix = ".png"
	# '''
	# 	Deze functie aanroep doet niets anders voer screencapture uit met als doel bestand opslaan
	# '''
	subprocess.Popen('screencapture -x ' + fileprefix + filesuffix, shell=True)
	# '''
	# 	Hier openen we het bestand in read-only bytes modus en geven de we variabele de naam file.
	# 	Daarna kan je er mee doen wat je wilt ik heb hier voor gekozen om de eerste bytes in te lezen en te kijken of het een PNG is
	# '''
	time.sleep(5)
	with open(fileprefix + filesuffix, 'rb') as file:
		if file.read()[1:4] == "PNG":
			print("It is a PNG")
		else:
			print("It is something else")
	# '''
	# 	Deze doet niets anders dan 60 seconden wachten totdat die weer bovenaan de while loop begint
	# '''
	time.sleep(55)
	
_____________
	
	Last login: Thu Mar 17 12:06:15 on ttys000
a-les1-04:~ a.tenhag$ ls
Applications	Documents	Library		Music		Public
Desktop		Downloads	Movies		Pictures
a-les1-04:~ a.tenhag$ cd Downloads/
a-les1-04:Downloads a.tenhag$ python screencapturetool.py
It is a PNG
It is a PNG
It is a PNG
It is a PNG














