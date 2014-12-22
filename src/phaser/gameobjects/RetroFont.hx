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
	var offsetX(default, null):Float;
	
	/**
	 * If the font set doesn't start at the top left of the given image, specify the Y coordinate offset here.
	 */
	var offsetY(default, null):Float;
	
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
	 * The FrameData representing this Retro Font.
	 */
	var frameData:phaser.animation.FrameData;
	
	/**
	 * The image that is stamped to the RenderTexture for each character in the font.
	 */
	var stamp(default, null):phaser.gameobjects.Image;
	
	/**
	 * If you need this RetroFont to have a fixed width and custom alignment you can set the width here.
	 * If text is wider than the width specified it will be cropped off.
	 */
	function setFixedWidth (width:Float, ?lineAlignment:String = 'left'):Void;
	
	/**
	 * A helper function that quickly sets lots of variables at once, and then updates the text.
	 */
	function setText (content:String, ?multiLine:Bool = false, ?characterSpacing:Float = 0, ?lineSpacing:Float = 0, ?lineAlignment:String = 'left', ?allowLowerCase:Bool = false):Void;
	
	/**
	 * Updates the texture with the new text.
	 */
	function buildRetroFontText ():Void;
	
	/**
	 * Internal function that takes a single line of text (2nd parameter) and pastes it into the BitmapData at the given coordinates.
	 * Used by getLine and getMultiLine
	 */
	function pasteLine (line:String, x:Float, y:Float, customSpacingX:Float):Void;
	
	/**
	 * Works out the longest line of text in _text and returns its length
	 */
	function getLongestLine ():Float;
	
	/**
	 * Internal helper function that removes all unsupported characters from the _text String, leaving only characters contained in the font set.
	 */
	function removeUnsupportedCharacters (?stripCR:Bool = true):String;
	
	/**
	 * Updates the x and/or y offset that the font is rendered from. This updates all of the texture frames, so be careful how often it is called.
	 * Note that the values given for the x and y properties are either ADDED to or SUBTRACTED from (if negative) the existing offsetX/Y values of the characters.
	 * So if the current offsetY is 8 and you want it to start rendering from y16 you would call updateOffset(0, 8) to add 8 to the current y offset.
	 */
	function updateOffset (?xOffset:Float = 0, ?yOffset:Float = 0):Void;
	
	/**
	 * @name Phaser.BitmapText#text
	 */
	var text:String;
	
}
