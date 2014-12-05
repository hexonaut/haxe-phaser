package phaser.geom;

@:native("Phaser.Rectangle")
extern class Rectangle {
	
	/**
	 * Creates a new Rectangle object with the top-left corner specified by the x and y parameters and with the specified width and height parameters.
	 * If you call this function without parameters, a Rectangle with x, y, width, and height properties set to 0 is created.
	 */
	function new (x:Float, y:Float, width:Float, height:Float);
	
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
	 * Adjusts the location of the Rectangle object, as determined by its top-left corner, by the specified amounts.
	 */
	function offset (dx:Float, dy:Float):phaser.geom.Rectangle;
	
	/**
	 * Adjusts the location of the Rectangle object using a Point object as a parameter. This method is similar to the Rectangle.offset() method, except that it takes a Point object as a parameter.
	 */
	function offsetPoint (point:phaser.geom.Point):phaser.geom.Rectangle;
	
	/**
	 * Sets the members of Rectangle to the specified values.
	 */
	function setTo (x:Float, y:Float, width:Float, height:Float):phaser.geom.Rectangle;
	
	/**
	 * Scales the width and height of this Rectangle by the given amounts.
	 */
	function scale (x:Float, ?y:Float):phaser.geom.Rectangle;
	
	/**
	 * Centers this Rectangle so that the center coordinates match the given x and y values.
	 */
	function centerOn (x:Float, y:Float):phaser.geom.Rectangle;
	
	/**
	 * Runs Math.floor() on both the x and y values of this Rectangle.
	 */
	function floor ():Void;
	
	/**
	 * Runs Math.floor() on the x, y, width and height values of this Rectangle.
	 */
	function floorAll ():Void;
	
	/**
	 * Copies the x, y, width and height properties from any given object to this Rectangle.
	 */
	function copyFrom (source:Dynamic):phaser.geom.Rectangle;
	
	/**
	 * Copies the x, y, width and height properties from this Rectangle to any given object.
	 */
	function copyTo (source:Dynamic):Dynamic;
	
	/**
	 * Increases the size of the Rectangle object by the specified amounts. The center point of the Rectangle object stays the same, and its size increases to the left and right by the dx value, and to the top and the bottom by the dy value.
	 */
	function inflate (dx:Float, dy:Float):phaser.geom.Rectangle;
	
	/**
	 * The size of the Rectangle object, expressed as a Point object with the values of the width and height properties.
	 */
	function size (?output:phaser.geom.Point):phaser.geom.Point;
	
	/**
	 * Returns a new Rectangle object with the same values for the x, y, width, and height properties as the original Rectangle object.
	 */
	function clone (?output:phaser.geom.Rectangle):phaser.geom.Rectangle;
	
	/**
	 * Determines whether the specified coordinates are contained within the region defined by this Rectangle object.
	 */
	function contains (x:Float, y:Float):Bool;
	
	/**
	 * Determines whether the first Rectangle object is fully contained within the second Rectangle object.
	 * A Rectangle object is said to contain another if the second Rectangle object falls entirely within the boundaries of the first.
	 */
	function containsRect (b:phaser.geom.Rectangle):Bool;
	
	/**
	 * Determines whether the two Rectangles are equal.
	 * This method compares the x, y, width and height properties of each Rectangle.
	 */
	function equals (b:phaser.geom.Rectangle):Bool;
	
	/**
	 * If the Rectangle object specified in the toIntersect parameter intersects with this Rectangle object, returns the area of intersection as a Rectangle object. If the Rectangles do not intersect, this method returns an empty Rectangle object with its properties set to 0.
	 */
	function intersection (b:phaser.geom.Rectangle, out:phaser.geom.Rectangle):phaser.geom.Rectangle;
	
	/**
	 * Determines whether the two Rectangles intersect with each other.
	 * This method checks the x, y, width, and height properties of the Rectangles.
	 */
	function intersects (b:phaser.geom.Rectangle, tolerance:Float):Bool;
	
	/**
	 * Determines whether the coordinates given intersects (overlaps) with this Rectangle.
	 */
	function intersectsRaw (left:Float, right:Float, top:Float, bottom:Float, tolerance:Float):Bool;
	
	/**
	 * Adds two Rectangles together to create a new Rectangle object, by filling in the horizontal and vertical space between the two Rectangles.
	 */
	function union (b:phaser.geom.Rectangle, ?out:phaser.geom.Rectangle):phaser.geom.Rectangle;
	
	/**
	 * Returns a string representation of this object.
	 */
	function toString ():String;
	
	/**
	 * @name Phaser.Rectangle#halfWidth
	 */
	var halfWidth(default, null):Float;
	
	/**
	 * @name Phaser.Rectangle#halfHeight
	 */
	var halfHeight(default, null):Float;
	
	/**
	 * The sum of the y and height properties. Changing the bottom property of a Rectangle object has no effect on the x, y and width properties, but does change the height property.
	 */
	var bottom:Float;
	
	/**
	 * The location of the Rectangles bottom right corner as a Point object.
	 */
	var bottomRight:phaser.geom.Point;
	
	/**
	 * The x coordinate of the left of the Rectangle. Changing the left property of a Rectangle object has no effect on the y and height properties. However it does affect the width property, whereas changing the x value does not affect the width property.
	 */
	var left:Float;
	
	/**
	 * The sum of the x and width properties. Changing the right property of a Rectangle object has no effect on the x, y and height properties, however it does affect the width property.
	 */
	var right:Float;
	
	/**
	 * The volume of the Rectangle derived from width * height.
	 */
	var volume(default, null):Float;
	
	/**
	 * The perimeter size of the Rectangle. This is the sum of all 4 sides.
	 */
	var perimeter(default, null):Float;
	
	/**
	 * The x coordinate of the center of the Rectangle.
	 */
	var centerX:Float;
	
	/**
	 * The y coordinate of the center of the Rectangle.
	 */
	var centerY:Float;
	
	/**
	 * A random value between the left and right values (inclusive) of the Rectangle.
	 */
	var randomX:Float;
	
	/**
	 * A random value between the top and bottom values (inclusive) of the Rectangle.
	 */
	var randomY:Float;
	
	/**
	 * The y coordinate of the top of the Rectangle. Changing the top property of a Rectangle object has no effect on the x and width properties.
	 * However it does affect the height property, whereas changing the y value does not affect the height property.
	 */
	var top:Float;
	
	/**
	 * The location of the Rectangles top left corner as a Point object.
	 */
	var topLeft:phaser.geom.Point;
	
	/**
	 * The location of the Rectangles top right corner as a Point object.
	 */
	var topRight:phaser.geom.Point;
	
	/**
	 * Determines whether or not this Rectangle object is empty. A Rectangle object is empty if its width or height is less than or equal to 0.
	 * If set to true then all of the Rectangle properties are set to 0.
	 */
	var empty:Bool;
	
	/**
	 * Increases the size of the Rectangle object. This method is similar to the Rectangle.inflate() method except it takes a Point object as a parameter.
	 */
	function inflatePoint (a:phaser.geom.Rectangle, point:phaser.geom.Point):phaser.geom.Rectangle;
	
	/**
	 * Determines whether the specified coordinates are contained within the region defined by the given raw values.
	 */
	function containsRaw (rx:Float, ry:Float, rw:Float, rh:Float, x:Float, y:Float):Bool;
	
	/**
	 * Determines whether the specified point is contained within the rectangular region defined by this Rectangle object. This method is similar to the Rectangle.contains() method, except that it takes a Point object as a parameter.
	 */
	function containsPoint (a:phaser.geom.Rectangle, point:phaser.geom.Point):Bool;
	
	/**
	 * Determines if the two objects (either Rectangles or Rectangle-like) have the same width and height values under strict equality.
	 */
	function sameDimensions (a:Dynamic, b:Dynamic):Bool;
	
	/**
	 * Calculates the Axis Aligned Bounding Box (or aabb) from an array of points.
	 */
	static function aabb (points:Dynamic, ?out:phaser.geom.Rectangle):phaser.geom.Rectangle;
	
}
