# Esmee's Tools

## Color Picker Concept 

#####Remove Shadow

You're thinking about to paint a wall in your house, but a part of the wall is predominates of shadows. 
Now you have choosen a color but a part of the wall is darker because of the shadow then the color that you wanted. This color picker makes your wall balanced in one color. 

This color picker translates different color gradient on the picture of the wall in one equal colors.  With this you're wall has one color. The sun with it's shadows plays no role anymore. 

The Color picker is inspired by the Mitre 10 Virtual Wall Painter.

### Color Picker Sketch
#####Demo

![](ColorPicker/Schets1.jpg =210x)![](ColorPicker/Schets2.jpg =210x)
![](ColorPicker/Schets3.jpg =210x)![](ColorPicker/Schets4.jpg =210x)
![](ColorPicker/Schets5.jpg =210x)![](ColorPicker/Schets6.jpg =210x)

#####Manquette

![](ColorPicker/manquette/1.jpg =608x)

![](ColorPicker/manquette/2.jpg =200x)  ![](ColorPicker/manquette/3.jpg =200x)  ![](ColorPicker/manquette/4.jpg =200x)

With paint

![](ColorPicker/manquette/5.jpg =200x)  ![](ColorPicker/manquette/6.jpg =200x)  ![](ColorPicker/manquette/7.jpg =200x)

Printer inkt

![](ColorPicker/manquette/8.jpg =200x)  ![](ColorPicker/manquette/9.jpg =200x)  
![](ColorPicker/manquette/10.jpg =200x)  ![](ColorPicker/manquette/11.jpg =200x)
### Color Picker Prototype

#####Demo

Step 1: You make a picture of the wall or import an image. 

Step 2: Select the color that you want.

Step 3: Count al de different colors of the wall.

Step 4: Shows you a equal color wall.

Step 5: Shows you a sheet what you need on your wall.

#####Manquette

## Your Own Tool

### Ruler Tool Concept
In Indesign, Photoshop and Illustrator are the pageviews different by every percent. When you want 100% pageview it's in indesign smaller then in photoshop. The problem is you whant to see an A4 page but when you take it om you screen it's bigger or smaller. How do you know if the image and text are too big or too small?

The Ruler Tool gives you full size images where you can compare now if you image is bigger then you own pen. It makes it easyer to reference your design to objects that you carry.

### Ruler Tool Sketch

Indesign format:

100%

![](Ruler/schets/1.jpg =200x) ![](Ruler/schets/2.jpg =200x) ![](Ruler/schets/3.jpg =200x)
![](Ruler/schets/4.jpg =200x) ![](Ruler/schets/5.jpg =200x) ![](Ruler/schets/6.jpg =200x)

Photoshop format:

16,7% ![](Ruler/schets/7.jpg =270x) 25$ ![](Ruler/schets/8.jpg =270x) 

50%  ![](Ruler/schets/9.jpg =270x) 100% ![](Ruler/schets/10.jpg =270x)


### Ruler Tool Demo
```
///////////////////////////////////////////////////////////////////////////////
// main - main function
///////////////////////////////////////////////////////////////////////////////
function main() {
	// user settings
	var prefs = new Object();
	prefs.sourceFolder         = '~';  // default browse location (default: '~')
	prefs.removeFileExtensions = true; // remove filename extensions for imported layers (default: true)
	prefs.savePrompt           = false; // display save prompt after import is complete (default: false)
	prefs.closeAfterSave       = false; // close import document after saving (default: false)

	// prompt for source folder
	var sourceFolder = Folder.selectDialog('Please select the folder to be imported:', Folder(prefs.sourceFolder));

	// ensure the source folder is valid
	if (!sourceFolder) {
		return;
	}
	else if (!sourceFolder.exists) {
		alert('Source folder not found.', 'Script Stopped', true);
		return;
	}

	// add source folder to user settings
	prefs.sourceFolder = sourceFolder;

	// get a list of files
	var fileArray = getFiles(prefs.sourceFolder);

	// if files were found, proceed with import
	if (fileArray.length) {
		importFolderAsLayers(fileArray, prefs);
	}
	// otherwise, diplay message
	else {
		alert("The selected folder doesn't contain any recognized images.", 'No Files Found', false);
	}
}

///////////////////////////////////////////////////////////////////////////////
// getFiles - get all files within the specified source
///////////////////////////////////////////////////////////////////////////////
function getFiles(sourceFolder) {
	// declare local variables
	var fileArray = new Array();
	var extRE = /\.(?:png|gif|jpg|bmp|tif|psd)$/i;

	// get all files in source folder
	var docs = sourceFolder.getFiles();
	var len = docs.length;
	for (var i = 0; i < len; i++) {
		var doc = docs[i];

		// only match files (not folders)
		if (doc instanceof File) {
			// store all recognized files into an array
			var docName = doc.name;
			if (docName.match(extRE)) {
				fileArray.push(doc);
			}
		}
	}

	// return file array
	return fileArray;
}

///////////////////////////////////////////////////////////////////////////////
// importFolderAsLayers - imports a folder of images as named layers
///////////////////////////////////////////////////////////////////////////////
function importFolderAsLayers(fileArray, prefs) {
	// create a new document
	var newDoc = documents.add(300, 300, 72, 'Imported Layers', NewDocumentMode.RGB, DocumentFill.TRANSPARENT, 1);
	var newLayer = newDoc.activeLayer;

	// loop through all files in the source folder
	for (var i = 0; i < fileArray.length; i++) {
		// open document
		var doc = open(fileArray[i]);

		// get document name (and remove file extension)
		var name = doc.name;
		if (prefs.removeFileExtensions) {
			name = name.replace(/(?:\.[^.]*$|$)/, '');
		}

		// convert to RGB; convert to 8-bpc; merge visible
		doc.changeMode(ChangeMode.RGB);
		doc.bitsPerChannel = BitsPerChannelType.EIGHT;
		doc.artLayers.add();
		doc.mergeVisibleLayers();

		// rename layer; duplicate to new document
		var layer = doc.activeLayer;
		layer.name = name;
		layer.duplicate(newDoc, ElementPlacement.PLACEATBEGINNING);

		// close imported document
		doc.close(SaveOptions.DONOTSAVECHANGES);
	}	

	// delete empty layer; reveal and trim to fit all layers
	newLayer.remove();
	newDoc.revealAll();
	newDoc.trim(TrimType.TRANSPARENT, true, true, true, true);

	// save the final document
	if (prefs.savePrompt) {
		// PSD save options
		var saveOptions = new PhotoshopSaveOptions();
		saveOptions.layers = true;
		saveOptions.embedColorProfile = true;

		// prompt for save name and location
		var saveFile = File.saveDialog('Save the new document as:');
		if (saveFile) {
			newDoc.saveAs(saveFile, saveOptions, false, Extension.LOWERCASE);
		}

		// close import document
		if (prefs.closeAfterSave) {
			newDoc.close(SaveOptions.DONOTSAVECHANGES);
		}
	}
}

///////////////////////////////////////////////////////////////////////////////
// isCorrectVersion - check for Adobe Photoshop CS2 (v9) or higher
///////////////////////////////////////////////////////////////////////////////
function isCorrectVersion() {
	if (parseInt(version, 10) >= 9) {
		return true;
	}
	else {
		alert('This script requires Adobe Photoshop CS2 or higher.', 'Wrong Version', false);
		return false;
	}
}

///////////////////////////////////////////////////////////////////////////////
// showError - display error message if something goes wrong
///////////////////////////////////////////////////////////////////////////////
function showError(err) {
	if (confirm('An unknown error has occurred.\n' +
		'Would you like to see more information?', true, 'Unknown Error')) {
			alert(err + ': on line ' + err.line, 'Script Error', true);
	}
}


// test initial conditions prior to running main function
if (isCorrectVersion()) {
	// remember ruler units; switch to pixels
	var originalRulerUnits = preferences.rulerUnits;
	preferences.rulerUnits = Units.PIXELS;

	try {
		main();
	}
	catch(e) {
		// don't report error on user cancel
		if (e.number != 8007) {
			showError(e);
		}
	}

	// restore original ruler unit
	preferences.rulerUnits = originalRulerUnits;
}
```
### How to install and use
This script combines a series of images from the selected folder into a new document. All layers are named according to the file they represent. The script handles various formats, color modes, and bit-depths, and even preserves transparency.

#####Download
To download this script, see map: Ruler (Ctrl-click on the Mac), and choose "Save Target As". Save the folder Ruler on your Desktop.

Download the script and copy it from your Desktop into your "Adobe Photoshop CC or CS#/Presets/Scripts" folder.

#####Installation
After restarting Photoshop, the script should appear in the File > Scripts menu > Browse to find your folder.

#####Add

You can add you own images in this folder. Cut your object out the background and then it's transparent. Save them in Photoshop at full size to PNG. PNG saves your transparent background.


##License (MIT License)

Apeace Leaflet is released under the MIT license.

Copyright © 2016 Esmee Ellson

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

