package phaser.gameobjects;

@:native("Phaser.BitmapText")
extern class BitmapText extends phaser.gameobjects.components.Reset {
	
	/**
	 * BitmapText objects work by taking a texture file and an XML or JSON file that describes the font structure.
	 * It then generates a new Sprite object for each letter of the text, proportionally spaced out and aligned to 
	 * match the font structure.
	 * 
	 * BitmapText objects are less flexible than Text objects, in that they have less features such as shadows, fills and the ability 
	 * to use Web Fonts, however you trade this flexibility for rendering speed. You can also create visually compelling BitmapTexts by
	 * processing the font texture in an image editor, applying fills and any other effects required.
	 * 
	 * To create multi-line text insert \r, \n or \r\n escape codes into the text string.
	 * 
	 * If you are having performance issues due to the volume of sprites being rendered, and do not require the text to be constantly
	 * updating, you can use BitmapText.generateTexture to create a static texture from this BitmapText.
	 * 
	 * To create a BitmapText data files you can use:
	 * 
	 * BMFont (Windows, free): <a href='http://www.angelcode.com/products/bmfont/'>http://www.angelcode.com/products/bmfont/</a>
	 * Glyph Designer (OS X, commercial): <a href='http://www.71squared.com/en/glyphdesigner'>http://www.71squared.com/en/glyphdesigner</a>
	 * Littera (Web-based, free): <a href='http://kvazars.com/littera/'>http://kvazars.com/littera/</a>
	 * 
	 * For most use cases it is recommended to use XML. If you wish to use JSON, the formatting should be equal to the result of
	 * converting a valid XML file through the popular X2JS library. An online tool for conversion can be found here: <a href='http://codebeautify.org/xmltojson'>http://codebeautify.org/xmltojson</a>
	 * 
	 * If you were using an older version of Phaser (&lt; 2.4) and using the DOMish parser hack, please remove this. It isn't required any longer.
	 */
	function new (game:phaser.core.Game, x:Float, y:Float, font:String, ?text:String = '', ?size:Float = 32, ?align:String = 'left');
	
	/**
	 * The const type of this object.
	 */
	var type(default, null):Float;
	
	/**
	 * The const physics body type of this object.
	 */
	var physicsType(default, null):Float;
	
	/**
	 * The width in pixels of the overall text area, taking into consideration multi-line text.
	 */
	var textWidth:Float;
	
	/**
	 * The height in pixels of the overall text area, taking into consideration multi-line text.
	 */
	var textHeight:Float;
	
	/**
	 * The anchor value of this BitmapText.
	 */
	var anchor:phaser.geom.Point;
	
	/**
	 * The previous anchor value.
	 */
	var _prevAnchor:phaser.geom.Point;
	
	/**
	 * Private tracker for the letter sprite pool.
	 */
	var _glyphs:Array<Dynamic>;
	
	/**
	 * Internal cache var.
	 */
	var _maxWidth:Float;
	
	/**
	 * Internal cache var.
	 */
	var _text:String;
	
	/**
	 * Internal cache var.
	 */
	var _data:String;
	
	/**
	 * Internal cache var.
	 */
	var _font:String;
	
	/**
	 * Internal cache var.
	 */
	var _fontSize:Float;
	
	/**
	 * Internal cache var.
	 */
	var _align:String;
	
	/**
	 * Internal cache var.
	 */
	var _tint:Float;
	
	/**
	 * The dirty state of this object.
	 */
	var dirty:Bool;
	
	/**
	 * Automatically called by World.preUpdate.
	 */
	function postUpdate ():Void;
	
	/**
	 * The text to be displayed by this BitmapText object.
	 * 
	 * It's faster to use BitmapText.text = string, but this is kept for backwards compatibility.
	 */
	function setText (text:String):Void;
	
	/**
	 * Given the input text this will scan the characters until either a newline is encountered, 
	 * or the line exceeds maxWidth, taking into account kerning, character widths and scaling.
	 */
	function scanLine (data:Dynamic, scale:Dynamic, text:String):Dynamic;
	
	/**
	 * Given a text string this will scan each character in the string to ensure it exists
	 * in the BitmapText font data. If it doesn't the character is removed, or replaced with the replace argument.
	 * 
	 * If no font data has been loaded at all this returns an empty string, as nothing can be rendered.
	 */
	function cleanText (text:String, ?replace:String = ''):String;
	
	/**
	 * Renders text and updates it when needed.
	 */
	function updateText ():Void;
	
	/**
	 * If a BitmapText changes from having a large number of characters to having very few characters it will cause lots of
	 * Sprites to be retained in the BitmapText._glyphs array. Although they are not attached to the display list they
	 * still take up memory while sat in the glyphs pool waiting to be re-used in the future.
	 * 
	 * If you know that the BitmapText will not grow any larger then you can purge out the excess glyphs from the pool 
	 * by calling this method.
	 * 
	 * Calling this doesn't prevent you from increasing the length of the text again in the future.
	 */
	function purgeGlyphs ():Int;
	
	/**
	 * Updates the transform of this object.
	 */
	function updateTransform ():Void;
	
	/**
	 * @name Phaser.BitmapText#align
	 */
	var align:String;
	
	/**
	 * @name Phaser.BitmapText#tint
	 */
	var tint:Float;
	
	/**
	 * @name Phaser.BitmapText#font
	 */
	var font:String;
	
	/**
	 * @name Phaser.BitmapText#fontSize
	 */
	var fontSize:Float;
	
	/**
	 * @name Phaser.BitmapText#text
	 */
	var text:String;
	
	/**
	 * The maximum display width of this BitmapText in pixels.
	 * 
	 * If BitmapText.text is longer than maxWidth then the lines will be automatically wrapped 
	 * based on the last whitespace character found in the line.
	 * 
	 * If no whitespace was found then no wrapping will take place and consequently the maxWidth value will not be honored.
	 * 
	 * Disable maxWidth by setting the value to 0.
	 */
	var maxWidth:Float;
	
	/**
	 * Enable or disable texture smoothing for this BitmapText.
	 * 
	 * The smoothing is applied to the BaseTexture of this font, which all letters of the text reference.
	 * 
	 * Smoothing is enabled by default.
	 */
	var smoothed:Bool;
	
}
