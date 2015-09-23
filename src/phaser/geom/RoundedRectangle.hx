package phaser.geom;

@:native("Phaser.RoundedRectangle")
extern class RoundedRectangle {
	
	/**
	 * The Rounded Rectangle object is an area defined by its position and has nice rounded corners, 
	 * as indicated by its top-left corner point (x, y) and by its width and its height.
	 */
	function new (?x:Float = 0, ?y:Float = 0, ?width:Float = 0, ?height:Float = 0, ?radius:Float = 20);
	
	/**
	 * The x coordinate of the top-left corner of the Rectangle.
	 */
	var x:Float;
	
	/**
	 * The y coordinate of the top-left corner of the Rectangle.
	 */
	var y:Float;
	
	/**
	 * The width of the Rectangle. This value should never be set to a negative.
	 */
	var width:Float;
	
	/**
	 * The height of the Rectangle. This value should never be set to a negative.
	 */
	var height:Float;
	
	/**
	 * The radius of the rounded corners.
	 */
	var radius:Float;
	
	/**
	 * The const type of this object.
	 */
	var type(default, null):Float;
	
	/**
	 * Returns a new RoundedRectangle object with the same values for the x, y, width, height and
	 * radius properties as this RoundedRectangle object.
	 */
	function clone ():phaser.geom.RoundedRectangle;
	
	/**
	 * Determines whether the specified coordinates are contained within the region defined by this Rounded Rectangle object.
	 */
	function contains (x:Float, y:Float):Bool;
	
}
