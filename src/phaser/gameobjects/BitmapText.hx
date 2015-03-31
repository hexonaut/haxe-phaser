package phaser.gameobjects;

@:native("Phaser.BitmapText")
extern class BitmapText extends phaser.pixi.text.BitmapText {
	
	/**
	 * BitmapText objects work by taking a texture file and an XML file that describes the font structure.
	 * It then generates a new Sprite object for each letter of the text, proportionally spaced out and aligned to 
	 * match the font structure.
	 * 
	 * BitmapText objects are less flexible than Text objects, in that they have less features such as shadows, fills and the ability 
	 * to use Web Fonts, however you trade this flexibility for rendering speed. You can also create visually compelling BitmapTexts by 
	 * processing the font texture in an image editor, applying fills and any other effects required.
	 * 
	 * To create a BitmapText you can use:
	 * 
	 * BMFont (Windows, free): <a href='http://www.angelcode.com/products/bmfont/'>http://www.angelcode.com/products/bmfont/</a>
	 * Glyph Designer (OS X, commercial): <a href='http://www.71squared.com/en/glyphdesigner'>http://www.71squared.com/en/glyphdesigner</a>
	 * Littera (Web-based, free): <a href='http://kvazars.com/littera/'>http://kvazars.com/littera/</a>
	 */
	function new (game:phaser.core.Game, x:Float, y:Float, font:String, ?text:String = '', ?size:Float = 32);
	
	/**
	 * The const type of this object.
	 */
	var type(default, null):Float;
	
	/**
	 * The const physics body type of this object.
	 */
	var physicsType(default, null):Float;
	
	/**
	 * Internal cache var.
	 */
	var _text:String;
	
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
	 * Internal cache var. Holds the previous textWidth.
	 */
	var _tw:Float;
	
	/**
	 * Internal cache var. Holds the previous textHeight.
	 */
	var _th:Float;
	
	/**
	 * Automatically called by World.preUpdate.
	 */
	function postUpdate ():Void;
	
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
	 * The text string to be displayed by this Text object, taking into account the style settings.
	 */
	var text:String;
	
}
