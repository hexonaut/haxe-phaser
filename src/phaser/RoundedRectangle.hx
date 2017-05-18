package phaser;

/**
* The Rounded Rectangle object is an area defined by its position and has nice rounded corners,
* as indicated by its top-left corner point (x, y) and by its width and its height.
*/
@:native("Phaser.RoundedRectangle")
extern class RoundedRectangle extends pixi.RoundedRectangle {

	/**
	* The x coordinate of the top-left corner of the Rectangle.
	*/
	@:native("x")
	var RoundedRectangle_x:Float;
	
	/**
	* The y coordinate of the top-left corner of the Rectangle.
	*/
	@:native("y")
	var RoundedRectangle_y:Float;
	
	/**
	* The width of the Rectangle. This value should never be set to a negative.
	*/
	@:native("width")
	var RoundedRectangle_width:Float;
	
	/**
	* The height of the Rectangle. This value should never be set to a negative.
	*/
	@:native("height")
	var RoundedRectangle_height:Float;
	
	/**
	* The radius of the rounded corners.
	*/
	@:native("radius")
	var RoundedRectangle_radius:Float;
	
	/**
	* The const type of this object.
	*/
	var type:Float;
	
	/**
	* Returns a new RoundedRectangle object with the same values for the x, y, width, height and
	* radius properties as this RoundedRectangle object.
	*/
	@:native("clone")
	function RoundedRectangle_clone():RoundedRectangle;
	
	/**
	* Determines whether the specified coordinates are contained within the region defined by this Rounded Rectangle object.
	* 
	* @param x The x coordinate of the point to test.
	* @param y The y coordinate of the point to test.
	* @return A value of true if the RoundedRectangle Rectangle object contains the specified point; otherwise false.
	*/
	@:native("contains")
	function RoundedRectangle_contains(x:Float, y:Float):Bool;
	
}

