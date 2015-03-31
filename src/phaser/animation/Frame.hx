package phaser.animation;

@:native("Phaser.Frame")
extern class Frame {
	
	/**
	 * A Frame is a single frame of an animation and is part of a FrameData collection.
	 */
	function new (index:Float, x:Float, y:Float, width:Float, height:Float, name:String, uuid:String);
	
	/**
	 * The index of this Frame within the FrameData set it is being added to.
	 */
	var index:Float;
	
	/**
	 * X position within the image to cut from.
	 */
	var x:Float;
	
	/**
	 * Y position within the image to cut from.
	 */
	var y:Float;
	
	/**
	 * Width of the frame.
	 */
	var width:Float;
	
	/**
	 * Height of the frame.
	 */
	var height:Float;
	
	/**
	 * Useful for Texture Atlas files (is set to the filename value).
	 */
	var name:String;
	
	/**
	 * DEPRECATED: A link to the PIXI.TextureCache entry.
	 */
	var uuid:String;
	
	/**
	 * Center X position within the image to cut from.
	 */
	var centerX:Float;
	
	/**
	 * Center Y position within the image to cut from.
	 */
	var centerY:Float;
	
	/**
	 * The distance from the top left to the bottom-right of this Frame.
	 */
	var distance:Float;
	
	/**
	 * Rotated? (not yet implemented)
	 */
	var rotated:Bool;
	
	/**
	 * Either 'cw' or 'ccw', rotation is always 90 degrees.
	 */
	var rotationDirection:String;
	
	/**
	 * Was it trimmed when packed?
	 */
	var trimmed:Bool;
	
	/**
	 * Width of the original sprite.
	 */
	var sourceSizeW:Float;
	
	/**
	 * Height of the original sprite.
	 */
	var sourceSizeH:Float;
	
	/**
	 * X position of the trimmed sprite inside original sprite.
	 */
	var spriteSourceSizeX:Float;
	
	/**
	 * Y position of the trimmed sprite inside original sprite.
	 */
	var spriteSourceSizeY:Float;
	
	/**
	 * Width of the trimmed sprite.
	 */
	var spriteSourceSizeW:Float;
	
	/**
	 * Height of the trimmed sprite.
	 */
	var spriteSourceSizeH:Float;
	
	/**
	 * The right of the Frame (x + width).
	 */
	var right:Float;
	
	/**
	 * The bottom of the frame (y + height).
	 */
	var bottom:Float;
	
	/**
	 * If the frame was trimmed when added to the Texture Atlas this records the trim and source data.
	 */
	function setTrim (trimmed:Bool, actualWidth:Float, actualHeight:Float, destX:Float, destY:Float, destWidth:Float, destHeight:Float):Void;
	
	/**
	 * Clones this Frame into a new Phaser.Frame object and returns it.
	 * Note that all properties are cloned, including the name, index and UUID.
	 */
	function clone ():phaser.animation.Frame;
	
	/**
	 * Returns a Rectangle set to the dimensions of this Frame.
	 */
	function getRect (?out:phaser.geom.Rectangle):phaser.geom.Rectangle;
	
}
