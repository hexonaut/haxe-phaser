package phaser;

/**
* A Frame is a single frame of an animation and is part of a FrameData collection.
*/
@:native("Phaser.Frame")
extern class Frame {

	/**
	* A Frame is a single frame of an animation and is part of a FrameData collection.
	* 
	* @param index The index of this Frame within the FrameData set it is being added to.
	* @param x X position of the frame within the texture image.
	* @param y Y position of the frame within the texture image.
	* @param width Width of the frame within the texture image.
	* @param height Height of the frame within the texture image.
	* @param name The name of the frame. In Texture Atlas data this is usually set to the filename.
	*/
	function new(index:Float, x:Float, y:Float, width:Float, height:Float, name:String);
	
	/**
	* The bottom of the frame (y + height).
	*/
	var bottom:Float;
	
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
	* Height of the frame.
	*/
	var height:Float;
	
	/**
	* The index of this Frame within the FrameData set it is being added to.
	*/
	var index:Float;
	
	/**
	* Useful for Texture Atlas files (is set to the filename value).
	*/
	var name:String;
	
	/**
	* The right of the Frame (x + width).
	*/
	var right:Float;
	
	/**
	* Is the frame rotated in the source texture?
	*/
	var rotated:Bool;
	
	/**
	* Height of the original sprite before it was trimmed.
	*/
	var sourceSizeH:Float;
	
	/**
	* Width of the original sprite before it was trimmed.
	*/
	var sourceSizeW:Float;
	
	/**
	* Height of the trimmed sprite.
	*/
	var spriteSourceSizeH:Float;
	
	/**
	* Width of the trimmed sprite.
	*/
	var spriteSourceSizeW:Float;
	
	/**
	* X position of the trimmed sprite inside original sprite.
	*/
	var spriteSourceSizeX:Float;
	
	/**
	* Y position of the trimmed sprite inside original sprite.
	*/
	var spriteSourceSizeY:Float;
	
	/**
	* Was it trimmed when packed?
	*/
	var trimmed:Bool;
	
	var uuid:String;
	
	/**
	* Width of the frame.
	*/
	var width:Float;
	
	/**
	* X position within the image to cut from.
	*/
	var x:Float;
	
	/**
	* Y position within the image to cut from.
	*/
	var y:Float;
	
	/**
	* Clones this Frame into a new Phaser.Frame object and returns it.
	* Note that all properties are cloned, including the name and index.
	* 
	* @return An exact copy of this Frame object.
	*/
	function clone():phaser.Frame;
	
	/**
	* Returns a Rectangle set to the dimensions of this Frame.
	* 
	* @param out A rectangle to copy the frame dimensions to.
	* @return A rectangle.
	*/
	function getRect(?out:phaser.Rectangle):phaser.Rectangle;
	
	/**
	* If the frame was trimmed when added to the Texture Atlas this records the trim and source data.
	* 
	* @param trimmed If this frame was trimmed or not.
	* @param actualWidth The width of the frame before being trimmed.
	* @param actualHeight The height of the frame before being trimmed.
	* @param destX The destination X position of the trimmed frame for display.
	* @param destY The destination Y position of the trimmed frame for display.
	* @param destWidth The destination width of the trimmed frame for display.
	* @param destHeight The destination height of the trimmed frame for display.
	*/
	function setTrim(trimmed:Bool, actualWidth:Float, actualHeight:Float, destX:Float, destY:Float, destWidth:Float, destHeight:Float):Void;
	
	/**
	* Adjusts of all the Frame properties based on the given width and height values.
	* 
	* @param width The new width of the Frame.
	* @param height The new height of the Frame.
	*/
	function resize(width:Float, height:Float):Void;
	
}

