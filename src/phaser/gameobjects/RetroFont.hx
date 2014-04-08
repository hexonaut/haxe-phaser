package phaser.gameobjects;

@:native("Phaser.RetroFont")
extern class RetroFont extends phaser.gameobjects.RenderTexture {
	var characterWidth:Float;
	var characterHeight:Float;
	var characterSpacingX:Float;
	var characterSpacingY:Float;
	var characterPerRow:Float;
	var offsetX:Float;
	var offsetY:Float;
	var align:String;
	var multiLine:Bool;
	var autoUpperCase:Bool;
	var customSpacingX:Float;
	var customSpacingY:Float;
	var fixedWidth:Float;
	var fontSet:Dynamic;
	var _text:String;
	var grabData:Dynamic;
	function setFixedWidth (width:Float, ?lineAlignment:String = 'left'):Void;
	function setText (content:String, ?multiLine:Bool = false, ?characterSpacing:Float = 0, ?lineSpacing:Float = 0, ?lineAlignment:String = 'left', ?allowLowerCase:Bool = false):Void;
	function buildRetroFontText ():Void;
	function getLongestLine ():Float;
	function removeUnsupportedCharacters (?stripCR:Bool = true):String;
	var text:String;
}
