package phaser.gameobjects;

@:native("Phaser.RetroFont")
extern class RetroFont extends phaser.gameobjects.RenderTexture {
	
	/**
	 * The width of each character in the font set.
	 */
	var characterWidth:Float;
	
	/**
	 * The height of each character in the font set.
	 */
	var characterHeight:Float;
	
	/**
	 * If the characters in the font set have horizontal spacing between them set the required amount here.
	 */
	var characterSpacingX:Float;
	
	/**
	 * If the characters in the font set have vertical spacing between them set the required amount here.
	 */
	var characterSpacingY:Float;
	
	/**
	 * The number of characters per row in the font set.
	 */
	var characterPerRow:Float;
	
	/**
	 * If the font set doesn't start at the top left of the given image, specify the X coordinate offset here.
	 */
	var offsetX:Float;
	
	/**
	 * If the font set doesn't start at the top left of the given image, specify the Y coordinate offset here.
	 */
	var offsetY:Float;
	
	/**
	 * Alignment of the text when multiLine = true or a fixedWidth is set. Set to RetroFont.ALIGN_LEFT (default), RetroFont.ALIGN_RIGHT or RetroFont.ALIGN_CENTER.
	 */
	var align:String;
	
	/**
	 * If set to true all carriage-returns in text will form new lines (see align). If false the font will only contain one single line of text (the default)
	 */
	var multiLine:Bool;
	
	/**
	 * Automatically convert any text to upper case. Lots of old bitmap fonts only contain upper-case characters, so the default is true.
	 */
	var autoUpperCase:Bool;
	
	/**
	 * Adds horizontal spacing between each character of the font, in pixels.
	 */
	var customSpacingX:Float;
	
	/**
	 * Adds vertical spacing between each line of multi-line text, set in pixels.
	 */
	var customSpacingY:Float;
	
	/**
	 * If you need this RetroFont image to have a fixed width you can set the width in this value.
	 * If text is wider than the width specified it will be cropped off.
	 */
	var fixedWidth:Float;
	
	/**
	 * A reference to the image stored in the Game.Cache that contains the font.
	 */
	var fontSet:Dynamic;
	
	/**
	 * The text of the font image.
	 */
	var _text:String;
	
	/**
	 * An array of rects for faster character pasting.
	 */
	var grabData:Array<Dynamic>;
	
	/**
	 * If you need this FlxSprite to have a fixed width and custom alignment you can set the width here.<br>
	 * If text is wider than the width specified it will be cropped off.
	 */
	function setFixedWidth (width:Float, ?lineAlignment:String = 'left'):Void;
	
	/**
	 * A helper function that quickly sets lots of variables at once, and then updates the text.
	 */
	function setText (content:String, ?multiLine:Bool = false, ?characterSpacing:Float = 0, ?lineSpacing:Float = 0, ?lineAlignment:String = 'left', ?allowLowerCase:Bool = false):Void;
	
	/**
	 * Updates the BitmapData of the Sprite with the text
	 */
	function buildRetroFontText ():Void;
	
	/**
	 * Works out the longest line of text in _text and returns its length
	 */
	function getLongestLine ():Float;
	
	/**
	 * Internal helper function that removes all unsupported characters from the _text String, leaving only characters contained in the font set.
	 */
	function removeUnsupportedCharacters (?stripCR:Bool = true):String;
	
	/**
	 * @name Phaser.BitmapText#text
	 */
	var text:String;
	
}
