Main();  
  
function Main() {  
    var doc = app.activeDocument;  
    var imgFile = new File("~/Desktop/Test.jpg");  
    // Select the rectangle to place the image  
    var rec = app.selection[0];  
    try {  
        var img = rec.place(imgFile);  
    }  
    catch(err) {  
        $.writeln(err.message + ", line: " + err.line);  
    }  
}