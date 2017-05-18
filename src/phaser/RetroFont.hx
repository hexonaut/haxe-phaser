package phaser;

/**
* A Retro Font is similar to a BitmapFont, in that it uses a texture to render the text. However unlike a BitmapFont every character in a RetroFont
* is the same size. This makes it similar to a sprite sheet. You typically find font sheets like this from old 8/16-bit games and demos.
*/
@:native("Phaser.RetroFont")
extern class RetroFont extends phaser.RenderTexture {

	/**
	* A Retro Font is similar to a BitmapFont, in that it uses a texture to render the text. However unlike a BitmapFont every character in a RetroFont
	* is the same size. This makes it similar to a sprite sheet. You typically find font sheets like this from old 8/16-bit games and demos.
	* 
	* @param game Current game instance.
	* @param key The font set graphic set as stored in the Game.Cache.
	* @param characterWidth The width of each character in the font set.
	* @param characterHeight The height of each character in the font set.
	* @param chars The characters used in the font set, in display order. You can use the TEXT_SET consts for common font set arrangements.
	* @param charsPerRow The number of characters per row in the font set. If not given charsPerRow will be the image width / characterWidth.
	* @param xSpacing If the characters in the font set have horizontal spacing between them set the required amount here.
	* @param ySpacing If the characters in the font set have vertical spacing between them set the required amount here.
	* @param xOffset If the font set doesn't start at the top left of the given image, specify the X coordinate offset here.
	* @param yOffset If the font set doesn't start at the top left of the given image, specify the Y coordinate offset here.
	*/
	function new(game:phaser.Game, key:String, characterWidth:Float, characterHeight:Float, chars:String, ?charsPerRow:Float, ?xSpacing:Float, ?ySpacing:Float, ?xOffset:Float, ?yOffset:Float);
	
	/**
	* Align each line of multi-line text in the center.
	*/
	static var ALIGN_CENTER:String;
	
	/**
	* Align each line of multi-line text to the left.
	*/
	static var ALIGN_LEFT:String;
	
	/**
	* Align each line of multi-line text to the right.
	*/
	static var ALIGN_RIGHT:String;
	
	/**
	* Text Set 1 =  !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~
	*/
	static var TEXT_SET1:String;
	
	/**
	* Text Set 2 =  !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ
	*/
	static var TEXT_SET2:String;
	
	/**
	* Text Set 3 = ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789
	*/
	static var TEXT_SET3:String;
	
	/**
	* Text Set 4 = ABCDEFGHIJKLMNOPQRSTUVWXYZ 0123456789
	*/
	static var TEXT_SET4:String;
	
	/**
	* Text Set 5 = ABCDEFGHIJKLMNOPQRSTUVWXYZ.,/() '!?-*:0123456789
	*/
	static var TEXT_SET5:String;
	
	/**
	* Text Set 6 = ABCDEFGHIJKLMNOPQRSTUVWXYZ!?:;0123456789"(),-.'
	*/
	static var TEXT_SET6:String;
	
	/**
	* Text Set 7 = AGMSY+:4BHNTZ!;5CIOU.?06DJPV,(17EKQW")28FLRX-'39
	*/
	static var TEXT_SET7:String;
	
	/**
	* Text Set 8 = 0123456789 .ABCDEFGHIJKLMNOPQRSTUVWXYZ
	*/
	static var TEXT_SET8:String;
	
	/**
	* Text Set 9 = ABCDEFGHIJKLMNOPQRSTUVWXYZ()-0123456789.:,'"?!
	*/
	static var TEXT_SET9:String;
	
	/**
	* Text Set 10 = ABCDEFGHIJKLMNOPQRSTUVWXYZ
	*/
	static var TEXT_SET10:String;
	
	/**
	* Text Set 11 = ABCDEFGHIJKLMNOPQRSTUVWXYZ.,"-+!?()':;0123456789
	*/
	static var TEXT_SET11:String;
	
	/**
	* Alignment of the text when multiLine = true or a fixedWidth is set. Set to RetroFont.ALIGN_LEFT (default), RetroFont.ALIGN_RIGHT or RetroFont.ALIGN_CENTER.
	*/
	var align:String;
	
	/**
	* Automatically convert any text to upper case. Lots of old bitmap fonts only contain upper-case characters, so the default is true.
	* Default: true
	*/
	var autoUpperCase:Bool;
	
	/**
	* The height of each character in the font set.
	*/
	var characterHeight:Float;
	
	/**
	* The number of characters per row in the font set.
	*/
	var characterPerRow:Float;
	
	/**
	* If the characters in the font set have horizontal spacing between them set the required amount here.
	*/
	var characterSpacingX:Float;
	
	/**
	* If the characters in the font set have vertical spacing between them set the required amount here.
	*/
	var characterSpacingY:Float;
	
	/**
	* The width of each character in the font set.
	*/
	var characterWidth:Float;
	
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
	var fontSet:Image;
	
	/**
	* The FrameData representing this Retro Font.
	*/
	var frameData:phaser.FrameData;
	
	/**
	* If set to true all carriage-returns in text will form new lines (see align). If false the font will only contain one single line of text (the default)
	*/
	var multiLine:Bool;
	
	/**
	* If the font set doesn't start at the top left of the given image, specify the X coordinate offset here.
	*/
	var offsetX:Float;
	
	/**
	* If the font set doesn't start at the top left of the given image, specify the Y coordinate offset here.
	*/
	var offsetY:Float;
	
	/**
	* Sets if the stamp is smoothed or not.
	*/
	var smoothed:Bool;
	
	/**
	* The image that is stamped to the RenderTexture for each character in the font.
	*/
	var stamp:phaser.Image;
	
	/**
	* Set this value to update the text in this sprite. Carriage returns are automatically stripped out if multiLine is false. Text is converted to upper case if autoUpperCase is true.
	*/
	var text:String;
	
	/**
	* Updates the texture with the new text.
	*/
	function buildRetroFontText():Void;
	
	/**
	* Works out the longest line of text in _text and returns its length
	* 
	* @return The length of the longest line of text.
	*/
	function getLongestLine():Float;
	
	/**
	* Internal function that takes a single line of text (2nd parameter) and pastes it into the BitmapData at the given coordinates.
	* Used by getLine and getMultiLine
	* 
	* @param line The single line of text to paste.
	* @param x The x coordinate.
	* @param y The y coordinate.
	* @param customSpacingX Custom X spacing.
	*/
	function pasteLine(line:String, x:Float, y:Float, customSpacingX:Float):Void;
	
	/**
	* Internal helper function that removes all unsupported characters from the _text String, leaving only characters contained in the font set.
	* 
	* @param stripCR Should it strip carriage returns as well? - Default: true
	* @return A clean version of the string.
	*/
	function removeUnsupportedCharacters(?stripCR:Bool):String;
	
	/**
	* If you need this RetroFont to have a fixed width and custom alignment you can set the width here.
	* If text is wider than the width specified it will be cropped off.
	* 
	* @param width Width in pixels of this RetroFont. Set to zero to disable and re-enable automatic resizing.
	* @param lineAlignment Align the text within this width. Set to RetroFont.ALIGN_LEFT (default), RetroFont.ALIGN_RIGHT or RetroFont.ALIGN_CENTER. - Default: 'left'
	*/
	function setFixedWidth(width:Float, ?lineAlignment:String):Void;
	
	/**
	* A helper function that quickly sets lots of variables at once, and then updates the text.
	* 
	* @param content The text of this sprite.
	* @param multiLine Set to true if you want to support carriage-returns in the text and create a multi-line sprite instead of a single line.
	* @param characterSpacing To add horizontal spacing between each character specify the amount in pixels.
	* @param lineSpacing To add vertical spacing between each line of text, set the amount in pixels.
	* @param lineAlignment Align each line of multi-line text. Set to RetroFont.ALIGN_LEFT, RetroFont.ALIGN_RIGHT or RetroFont.ALIGN_CENTER. - Default: 'left'
	* @param allowLowerCase Lots of bitmap font sets only include upper-case characters, if yours needs to support lower case then set this to true.
	*/
	function setText(content:String, ?multiLine:Bool, ?characterSpacing:Float, ?lineSpacing:Float, ?lineAlignment:String, ?allowLowerCase:Bool):Void;
	
	/**
	* Updates the x and/or y offset that the font is rendered from. This updates all of the texture frames, so be careful how often it is called.
	* Note that the values given for the x and y properties are either ADDED to or SUBTRACTED from (if negative) the existing offsetX/Y values of the characters.
	* So if the current offsetY is 8 and you want it to start rendering from y16 you would call updateOffset(0, 8) to add 8 to the current y offset.
	* 
	* @param xOffset If the font set doesn't start at the top left of the given image, specify the X coordinate offset here.
	* @param yOffset If the font set doesn't start at the top left of the given image, specify the Y coordinate offset here.
	*/
	function updateOffset(?x:Float, ?y:Float):Void;
	
}

