 // https://forums.adobe.com/thread/2010653  
// By Trevor http://www.creative-scripts.com  
  
  
CC_FLAG = +(9 <= parseFloat(app.version));  
Image.prototype.refresh = CC_FLAG ? // prototype by Marc Autret http://www.indiscripts.com/  
    function()  
    {  
        var wh = this.size;  
        this.size = [1+wh[0],1+wh[1]];  
        this.size = [wh[0],wh[1]];  
        wh = null;  
    }:  
    function()  
    {  
        this.size = [this.size[0],this.size[1]];  
    };  
  
  
var boxEmpty = ScriptUI.newImage("\u0089PNG\r\n\x1A\n\x00\x00\x00\rIHDR\x00\x00\x00\x12\x00\x00\x00\x11\b\x06\x00\x00\x00\u00D0Z\u00FC\u00F9\x00\x00\x00\x04sBIT\b\b\b\b|\bd\u0088\x00\x00\x00\tpHYs\x00\x00\x0B\x12\x00\x00\x0B\x12\x01\u00D2\u00DD~\u00FC\x00\x00\x00\x16tEXtCreation Time\x0003/23/14Y6\u00F4+\x00\x00\x00\x1CtEXtSoftware\x00Adobe Fireworks CS6\u00E8\u00BC\u00B2\u008C\x00\x00\x00\u00ADIDAT8\u008D\u00ED\u00931\n\u00C30\fE\u009F\u008B\u0087\x1C47\u00CC\u00852\x04b0DN\x06\u00C98\t\u00E9PZhi\u00C1-\u00DD\u00DA7I\u00CB\u00E3KH\u00AEm\u00DB\u00A3i\x1A\u009Cs\u0094R\u00D8\u00B6\u008D\x1Ar\u00CE\u0088\b!\x04\u00FA\u00BE\u00C7\u009B\x19\u00EB\u00BA\u00B2\u00EF;fF)\u00A5J\u00A4\u00AA\u00C4\x18\x19\u0086\u0081i\u009A\u00F0\u00F3<\x03\u00D0u]\u0095\u00E0\x11\u00E7\x1C\x00^D\u00AAS<\"\"\u00B7\u00DA\u009B\x19\u00AA\u00FA\u00B6DU\u00EFD\u00A7\u008F\u00A2<\u00E1/\u00FAi\u0091WU\u0096e\x01.\u008FX{\u009C\u00AA\u00CA\u00F5\u00BD\x00|\b\u0081\u0094\x12\u00E38\x12c\u00AC\x16\u00E5\u009CI)\u00DDz\x07\x1C\u00F5\x03\u00BC\u00E6k;:\x03)\x15k\u00D6\x00\u00CA?,\x00\x00\x00\x00IEND\u00AEB`\u0082"),  
    boxTicked =  ScriptUI.newImage("\u0089PNG\r\n\x1A\n\x00\x00\x00\rIHDR\x00\x00\x00\x12\x00\x00\x00\x11\b\x06\x00\x00\x00\u00D0Z\u00FC\u00F9\x00\x00\x00\x04sBIT\b\b\b\b|\bd\u0088\x00\x00\x00\tpHYs\x00\x00\x0B\x12\x00\x00\x0B\x12\x01\u00D2\u00DD~\u00FC\x00\x00\x00\x16tEXtCreation Time\x0003/23/14Y6\u00F4+\x00\x00\x00\x1CtEXtSoftware\x00Adobe Fireworks CS6\u00E8\u00BC\u00B2\u008C\x00\x00\x01rIDAT8\u008D\u00A5\u0093\u00BF\u00AA\u00EA@\x10\u0087\u00BF\x1CR\u00D8ie\u00AB\u00A5\u0095A\u00C1\u00DAg\u00B0\u00B4\u008A\u0085}|\x03\u00F3&\u00DAZY\u00F8\x02\u00BEA\x04k\u00D1BD\bd\u00A3\u00E2&\u00C4?s\n\u00CF\u0089\u00F7\u00C4\u00CB5\u0087\u00FB\u0083\u0085\u009D\u009D\u009D\u008F\u0099\u009D\x1D\u00A3\u00DF\u00EFK\u00A1P\u00C00\f\u0092$\u00E1z\u00BD\u0092Gq\x1C\u00A3\u0094b\u00BF\u00DF\u00B3\u00D9l0\u00A3(\u00E2r\u00B9p\u00BB\u00DD\u0088\u00A2\u0088$Ir\u0081\u00B4\u00D6\u00F8\u00BE\u00CFv\u00BB%\b\x02\u00CC\u00C3\u00E1\x00\u00C0l6\u00CB\x05\u00C8\u00CA0\f\x00L\u00A5T\u00EE,\u00B2RJ\u00A5\u00FB\u008F(\u008A8\u009DN\u00BF\x02\u00B8\u00AEK\u00A5Ra\u00B9\\\u00A6g\u00E6o\x00\u008B\u00C5\u0082^\u00AF\x07\u00C0d2\u00A1\\.?3\u00CA\x0B\x19\u008F\u00C74\x1A\r\x00\u00E6\u00F39\u00F5z\u00FD\u00E7\u0085f\u00B3)\u00B5ZM\u00FE\u00A5\u00E1p(\u0080X\u0096%J)\x11\x119\u009F\u00CF\u00B2Z\u00AD\x04x\u00AC,\u00C8\u00F3<\u00F1</\u00B5m\u00DB~\u0081\u00BC\x059\u008E\u0093:\u00A6\u00D3\u00A9\u008CF#\x01\u00A4X,\u00FE\u0080\u00BF\x05)\u00A5\u00C4\u00B2\u00AC4\u00F8OhVoK[\u00AF\u00D7O'\u0088\u00E38\x7F}\u00B7,\u00E8\u00A5k\u00D5j\x15\u00DB\u00B6\x01h\u00B7\u00DB\u00B8\u00AE\u009B\u00AB\u00AB\u00A6\u00D6\u009A\u00E3\u00F1\b<\x06Qk\u00CD`0\u00A0\u00D5j\u00D1\u00EDv\u00B9\u00DF\u00EF\x04A\u00F0\x12\u00A8\u00B5\u00E6{\u00BC\x00\u008CR\u00A9$a\x18\u00B2\u00DB\u00ED\u00F0}\x1F\u00ADu\u00AE\f\u00E28&\fC:\u009D\u00CE\x03\u00F4U\u00E3\x7F+\u00F7\u00CF~\u00A7Ox t\u00B6'\u00B82C\x00\x00\x00\x00IEND\u00AEB`\u0082"),  
    w = new Window('dialog'),  
    p = w.add('panel'),  
    b1 = w.add('button',undefined, "Tick");  
    b2 = w.add('button',undefined, "Un Tick");  
    img = p.add('image', undefined, boxEmpty),  
  
  
  
  
b1.onClick = function (){changeImage(img, boxTicked)};  
b2.onClick = function (){changeImage(img, boxEmpty)};  
  
  
function changeImage (image, SUInewImage) {  
    image.onDraw = function () {  
        image.graphics.drawImage(SUInewImage,0,0);  
    }  
    image.refresh();  
}  
  
  
w.show();