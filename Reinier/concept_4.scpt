display dialog "Weergave van denkwijze in mijn brein.

by Reinier Hijmans" buttons {"Ok"}

on negeer_een()
	display dialog "Weet je zeker dat je op deze manier wilt reageren?" buttons {"Ja, dat weet ik zeker", "NEE?!"}
	if result = {button returned:"Ja, dat weet ik zeker"} then
		my bedanken()
	else if result = {button returned:"NEE?!"} then
		display dialog "Iemand geeft jou het volgende complimentje:
'Goed werk vandaag!'

Hoe wil je hierop reageren?" buttons {"Negeer", "Bedanken", "WAT BEDOEL JE DAARMEE?!"} default button "Negeer"
		if result = {button returned:"Negeer"} then
			my negeer_een()
		else if result = {button returned:"Bedanken"} then
			my bedanken()
		else if result = {button returned:"WAT BEDOEL JE DAARMEE?!"} then

		end if
	end if
end negeer_een


on bedanken()
	display dialog "Je kan nu nog een belediging terug maken!" buttons {"Dat hoeft niet", "Beledigen"}
	if result = {button returned:"Dat hoeft niet"} then
		my negeer_een()

	else if result = {button returned:"Beledigen"} then
	end if
end bedanken


display dialog "Iemand geeft jou het volgende complimentje:
'Goed werk vandaag!'

Hoe wil je hierop reageren?" buttons {"Negeer", "Bedanken", "WAT BEDOEL JE DAARMEE?!"} default button "Negeer"

if result = {button returned:"Negeer"} then
	my negeer_een()
else if result = {button returned:"Bedanken"} then
	my bedanken()
else if result = {button returned:"WAT BEDOEL JE DAARMEE?!"} then

end if






on negeer_twee()
	display dialog "Weet je zeker dat je op deze manier wilt reageren?" buttons {"Ja, dat weet ik zeker", "NEE?!"}
	if result = {button returned:"Ja, dat weet ik zeker"} then
		my lachen()
	else if result = {button returned:"NEE?!"} then
		display dialog "Je komt een vriend tegen en hij zegt: Zo, ben je een paar kilotjes aangekomen?

Hoe wil je hierop reageren?" buttons {"Negeer", "Lachen", "Agressief"} default button "Negeer"
		if result = {button returned:"Negeer"} then
			my negeer_twee()
		else if result = {button returned:"Lachen"} then
			my lachen()
		else if result = {button returned:"Agressief"} then
		end if
	end if
end negeer_twee


on lachen()
	display dialog "Je kan nu nog een belediging terug maken!" buttons {"Dat hoeft niet", "Beledigen"}
	if result = {button returned:"Dat hoeft niet"} then
		my negeer_twee()

	else if result = {button returned:"Beledigen"} then
	end if
end lachen


display dialog "Je komt een vriend tegen en hij zegt: Zo, ben je een paar kilotjes aangekomen? 
Hoe wil je hierop reageren?" buttons {"Negeer", "Lachen", "Agressief"} default button "Negeer"

if result = {button returned:"negeer"} then
	my negeer_twee()
else if result = {button returned:"Lachen"} then
	my lachen()
else if result = {button returned:"Agressief"} then

end if





on negeer_drie()
	display dialog "Weet je zeker dat je op deze manier wilt reageren?" buttons {"Ja, dat weet ik zeker", "NEE?!"}
	if result = {button returned:"Ja, dat weet ik zeker"} then
		my aardig()
	else if result = {button returned:"NEE?!"} then
		display dialog "Je loopt over straat en krijgt een complimentje over je nieuwe schoenen van een onbekend persoon.
Wat gaat er door je hoofd?" buttons {"Negeer", "Wat aardig!", "Oprotten!"} default button "Negeer"
		if result = {button returned:"Negeer"} then
			my negeer_drie()
		else if result = {button returned:"Wat aardig!"} then
			my aardig()
		else if result = {button returned:"Oprotten!"} then

		end if
	end if
end negeer_drie


on aardig()
	display dialog "Je kan nu nog een belediging terug maken!" buttons {"Dat hoeft niet", "Beledigen"}
	if result = {button returned:"Dat hoeft niet"} then
		my negeer_drie()

	else if result = {button returned:"Beledigen"} then
	end if
end aardig


display dialog "Je loopt over straat en krijgt een complimentje over je nieuwe schoenen van een onbekend persoon.

Wat gaat er door je hoofd?" buttons {"Negeer", "Wat aardig!", "Oprotten!"} default button "Negeer"

if result = {button returned:"negeer"} then
	my negeer_drie()
else if result = {button returned:"Wat aardig!"} then
	my aardig()
else if result = {button returned:"Agressief"} then

end if




on negeer_vier()
	display dialog "Weet je zeker dat je op deze manier wilt reageren?" buttons {"Ja, dat weet ik zeker", "NEE?!"}
	if result = {button returned:"Ja, dat weet ik zeker"} then
		my genieten()
	else if result = {button returned:"NEE?!"} then
		display dialog "Je bent op stap met wat vrienden en jullie staan in de karaokebar, jij staat op het podium mee te lallen met je favoriete nummer. Je ziet een groep jongeren staan die je uitlachen.

Wat doe je?" buttons {"Negeer", "Genieten", "Op de vuist gaan"} default button "Negeer"
		if result = {button returned:"Negeer"} then
			my negeer_vier()
		else if result = {button returned:"Genieten"} then
			my genieten()
		else if result = {button returned:"Op de vuist gaan"} then

		end if
	end if
end negeer_vier


on genieten()
	display dialog "Je kan nu nog een belediging terug maken!" buttons {"Dat hoeft niet", "Beledigen"}
	if result = {button returned:"Dat hoeft niet"} then
		my negeer_vier()

	else if result = {button returned:"Beledigen"} then
	end if
end genieten


display dialog "Je bent op stap met wat vrienden en jullie staan in de karaokebar, jij staat op het podium mee te lallen met je favoriete nummer. Je ziet een groep jongeren staan die je uitlachen.

Wat doe je?" buttons {"Negeer", "Genieten", "Op de vuist gaan"} default button "Negeer"

if result = {button returned:"negeer"} then
	my negeer_vier()
else if result = {button returned:"Genieten"} then
	my genieten()
else if result = {button returned:"Agressief"} then

end if





on niks()
	display dialog "Weet je zeker dat je op deze manier wilt reageren?" buttons {"Ja, dat weet ik zeker", "NEE?!"}
	if result = {button returned:"Ja, dat weet ik zeker"} then
		my bellen()
	else if result = {button returned:"NEE?!"} then
		display dialog "Je hebt best een serieus gesprek op whatsapp maar je wacht al een tijd op een reactie van je vriend.

Wat denk je?" buttons {"Niks aan de hand", "Even bellen", "??? SEND"} default button "Niks aan de hand"
		if result = {button returned:"Niks aan de hand"} then
			my niks()
		else if result = {button returned:"Even bellen"} then
			my bellen()
			if result = {button returned:"??? SEND"} then

			end if
		end if
	end if
end niks


on bellen()
	display dialog "Wat hij kan, kan jij dat niet beter?" buttons {"Nee", "INDERDAAD!?"}
	if result = {button returned:"Nee"} then
		my niks()

	else if result = {button returned:"INDERDAAD!?"} then
	end if
end bellen


display dialog "Je hebt best een serieus gesprek op whatsapp maar je wacht al een tijd op een reactie van je vriend.

Wat denk je?" buttons {"Niks aan de hand", "Even bellen", "??? SEND"} default button "Niks aan de hand"

if result = {button returned:"Niks aan de hand"} then
	my niks()
else if result = {button returned:"Even bellen"} then
	my bellen()
else if result = {button returned:"??? SEND"} then

end if



display dialog "Gefeliciteerd!
Je hebt de cyclus verbroken!" buttons {"Eindelijk!"}
