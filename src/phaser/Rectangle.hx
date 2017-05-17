package phaser;

/**
* Creates a new Rectangle object with the top-left corner specified by the x and y parameters and with the specified width and height parameters.
* If you call this function without parameters, a Rectangle with x, y, width, and height properties set to 0 is created.
*/
@:native("Phaser.Rectangle")
extern class Rectangle {

	/**
	* Creates a new Rectangle object with the top-left corner specified by the x and y parameters and with the specified width and height parameters.
	* If you call this function without parameters, a Rectangle with x, y, width, and height properties set to 0 is created.
	* 
	* @param x The x coordinate of the top-left corner of the Rectangle.
	* @param y The y coordinate of the top-left corner of the Rectangle.
	* @param width The width of the Rectangle. Should always be either zero or a positive value.
	* @param height The height of the Rectangle. Should always be either zero or a positive value.
	*/
	function new(x:Float, y:Float, width:Float, height:Float);
	
	/**
	* The sum of the y and height properties. Changing the bottom property of a Rectangle object has no effect on the x, y and width properties, but does change the height property.
	*/
	var bottom:Float;
	
	/**
	* The location of the Rectangles bottom right corner as a Point object. Gets or sets the location of the Rectangles bottom right corner as a Point object.
	*/
	var bottomRight:phaser.Point;
	
	/**
	* The location of the Rectangles bottom left corner as a Point object. Gets or sets the location of the Rectangles bottom left corner as a Point object.
	*/
	var bottomLeft:phaser.Point;
	
	/**
	* The x coordinate of the center of the Rectangle.
	*/
	var centerX:Float;
	
	/**
	* The y coordinate of the center of the Rectangle.
	*/
	var centerY:Float;
	
	/**
	* Determines whether or not this Rectangle object is empty. A Rectangle object is empty if its width or height is less than or equal to 0.
	* If set to true then all of the Rectangle properties are set to 0. Gets or sets the Rectangles empty state.
	*/
	var empty:Bool;
	
	/**
	* Half of the height of the Rectangle.
	*/
	var halfHeight:Float;
	
	/**
	* Half of the width of the Rectangle.
	*/
	var halfWidth:Float;
	
	/**
	* The height of the Rectangle. This value should never be set to a negative.
	*/
	var height:Float;
	
	/**
	* The x coordinate of the left of the Rectangle. Changing the left property of a Rectangle object has no effect on the y and height properties. However it does affect the width property, whereas changing the x value does not affect the width property.
	*/
	var left:Float;
	
	/**
	* The perimeter size of the Rectangle. This is the sum of all 4 sides.
	*/
	var perimeter:Float;
	
	/**
	* A random value between the left and right values (inclusive) of the Rectangle.
	*/
	var randomX:Float;
	
	/**
	* A random value between the top and bottom values (inclusive) of the Rectangle.
	*/
	var randomY:Float;
	
	/**
	* The sum of the x and width properties. Changing the right property of a Rectangle object has no effect on the x, y and height properties, however it does affect the width property.
	*/
	var right:Float;
	
	/**
	* The y coordinate of the top of the Rectangle. Changing the top property of a Rectangle object has no effect on the x and width properties.
	* However it does affect the height property, whereas changing the y value does not affect the height property.
	*/
	var top:Float;
	
	/**
	* The location of the Rectangles top left corner as a Point object.
	*/
	var topLeft:phaser.Point;
	
	/**
	* The location of the Rectangles top right corner as a Point object. The location of the Rectangles top left corner as a Point object.
	*/
	var topRight:phaser.Point;
	
	/**
	* The const type of this object.
	*/
	var type:Float;
	
	/**
	* The volume of the Rectangle derived from width * height.
	*/
	var volume:Float;
	
	/**
	* The width of the Rectangle. This value should never be set to a negative.
	*/
	var width:Float;
	
	/**
	* The x coordinate of the top-left corner of the Rectangle.
	*/
	var x:Float;
	
	/**
	* The y coordinate of the top-left corner of the Rectangle.
	*/
	var y:Float;
	
	/**
	* Calculates the Axis Aligned Bounding Box (or aabb) from an array of points.
	* 
	* @param points The array of one or more points.
	* @param out Optional Rectangle to store the value in, if not supplied a new Rectangle object will be created.
	* @return The new Rectangle object.
	*/
	static function aabb(points:Array<phaser.Point>, ?out:phaser.Rectangle):phaser.Rectangle;
	
	/**
	* Returns a new Rectangle object with the same values for the x, y, width, and height properties as the original Rectangle object.
	* 
	* @param output Optional Rectangle object. If given the values will be set into the object, otherwise a brand new Rectangle object will be created and returned.
	*/
	function clone(output:phaser.Rectangle):phaser.Rectangle;
	
	/**
	* Determines whether the specified coordinates are contained within the region defined by this Rectangle object.
	* 
	* @param x The x coordinate of the point to test.
	* @param y The y coordinate of the point to test.
	* @return A value of true if the Rectangle object contains the specified point; otherwise false.
	*/
	function contains(x:Float, y:Float):Bool;
	
	/**
	* Determines whether the specified point is contained within the rectangular region defined by this Rectangle object. This method is similar to the Rectangle.contains() method, except that it takes a Point object as a parameter.
	* 
	* @param a The Rectangle object.
	* @param point The point object being checked. Can be Point or any object with .x and .y values.
	* @return A value of true if the Rectangle object contains the specified point; otherwise false.
	*/
	static function containsPoint(a:phaser.Rectangle, point:phaser.Point):Bool;
	
	/**
	* Determines whether the specified coordinates are contained within the region defined by the given raw values.
	* 
	* @param rx The x coordinate of the top left of the area.
	* @param ry The y coordinate of the top left of the area.
	* @param rw The width of the area.
	* @param rh The height of the area.
	* @param x The x coordinate of the point to test.
	* @param y The y coordinate of the point to test.
	* @return A value of true if the Rectangle object contains the specified point; otherwise false.
	*/
	static function containsRaw(rx:Float, ry:Float, rw:Float, rh:Float, x:Float, y:Float):Bool;
	
	/**
	* Determines whether the first Rectangle object is fully contained within the second Rectangle object.
	* A Rectangle object is said to contain another if the second Rectangle object falls entirely within the boundaries of the first.
	* 
	* @param b The second Rectangle object.
	* @return A value of true if the Rectangle object contains the specified point; otherwise false.
	*/
	function containsRect(b:phaser.Rectangle):Bool;
	
	/**
	* Determines whether the two Rectangles are equal.
	* This method compares the x, y, width and height properties of each Rectangle.
	* 
	* @param b The second Rectangle object.
	* @return A value of true if the two Rectangles have exactly the same values for the x, y, width and height properties; otherwise false.
	*/
	function equals(b:phaser.Rectangle):Bool;
	
	/**
	* Increases the size of the Rectangle object by the specified amounts. The center point of the Rectangle object stays the same, and its size increases to the left and right by the dx value, and to the top and the bottom by the dy value.
	* 
	* @param dx The amount to be added to the left side of the Rectangle.
	* @param dy The amount to be added to the bottom side of the Rectangle.
	* @return This Rectangle object.
	*/
	function inflate(dx:Float, dy:Float):phaser.Rectangle;
	
	/**
	* Increases the size of the Rectangle object. This method is similar to the Rectangle.inflate() method except it takes a Point object as a parameter.
	* 
	* @param a The Rectangle object.
	* @param point The x property of this Point object is used to increase the horizontal dimension of the Rectangle object. The y property is used to increase the vertical dimension of the Rectangle object.
	* @return The Rectangle object.
	*/
	static function inflatePoint(a:phaser.Rectangle, point:phaser.Point):phaser.Rectangle;
	
	/**
	* If the Rectangle object specified in the toIntersect parameter intersects with this Rectangle object, returns the area of intersection as a Rectangle object. If the Rectangles do not intersect, this method returns an empty Rectangle object with its properties set to 0.
	* 
	* @param b The second Rectangle object.
	* @param out Optional Rectangle object. If given the intersection values will be set into this object, otherwise a brand new Rectangle object will be created and returned.
	* @return A Rectangle object that equals the area of intersection. If the Rectangles do not intersect, this method returns an empty Rectangle object; that is, a Rectangle with its x, y, width, and height properties set to 0.
	*/
	function intersection(b:phaser.Rectangle, out:phaser.Rectangle):phaser.Rectangle;
	
	/**
	* Determines whether this Rectangle and another given Rectangle intersect with each other.
	* This method checks the x, y, width, and height properties of the two Rectangles.
	* 
	* @param b The second Rectangle object.
	* @return A value of true if the specified object intersects with this Rectangle object; otherwise false.
	*/
	function intersects(b:phaser.Rectangle, tolerance:Float):Bool;
	
	/**
	* Determines whether the coordinates given intersects (overlaps) with this Rectangle.
	* 
	* @param left The x coordinate of the left of the area.
	* @param right The right coordinate of the area.
	* @param top The y coordinate of the area.
	* @param bottom The bottom coordinate of the area.
	* @param tolerance A tolerance value to allow for an intersection test with padding, default to 0
	* @return A value of true if the specified object intersects with the Rectangle; otherwise false.
	*/
	function intersectsRaw(left:Float, right:Float, top:Float, bottom:Float, tolerance:Float):Bool;
	
	/**
	* The size of the Rectangle object, expressed as a Point object with the values of the width and height properties.
	* 
	* @param output Optional Point object. If given the values will be set into the object, otherwise a brand new Point object will be created and returned.
	* @return The size of the Rectangle object.
	*/
	function size(?output:phaser.Point):phaser.Point;
	
	/**
	* Adds two Rectangles together to create a new Rectangle object, by filling in the horizontal and vertical space between the two Rectangles.
	* 
	* @param b The second Rectangle object.
	* @param out Optional Rectangle object. If given the new values will be set into this object, otherwise a brand new Rectangle object will be created and returned.
	* @return A Rectangle object that is the union of the two Rectangles.
	*/
	function union(b:phaser.Rectangle, ?out:phaser.Rectangle):phaser.Rectangle;
	
	/**
	* Runs Math.ceil() on both the x and y values of this Rectangle.
	*/
	function ceil():Void;
	
	/**
	* Runs Math.ceil() on the x, y, width and height values of this Rectangle.
	*/
	function ceilAll():Void;
	
	/**
	* Centers this Rectangle so that the center coordinates match the given x and y values.
	* 
	* @param x The x coordinate to place the center of the Rectangle at.
	* @param y The y coordinate to place the center of the Rectangle at.
	* @return This Rectangle object
	*/
	function centerOn(x:Float, y:Float):phaser.Rectangle;
	
	/**
	* Copies the x, y, width and height properties from any given object to this Rectangle.
	* 
	* @param source The object to copy from.
	* @return This Rectangle object.
	*/
	function copyFrom(source:Dynamic):phaser.Rectangle;
	
	/**
	* Copies the x, y, width and height properties from this Rectangle to any given object.
	* 
	* @param source The object to copy to.
	* @return This object.
	*/
	function copyTo(dest:Dynamic):Dynamic;
	
	/**
	* Runs Math.floor() on both the x and y values of this Rectangle.
	*/
	function floor():Void;
	
	/**
	* Runs Math.floor() on the x, y, width and height values of this Rectangle.
	*/
	function floorAll():Void;
	
	/**
	* Returns a point based on the given position constant, which can be one of:
	* 
	* `Phaser.TOP_LEFT`, `Phaser.TOP_CENTER`, `Phaser.TOP_RIGHT`, `Phaser.LEFT_CENTER`,
	* `Phaser.CENTER`, `Phaser.RIGHT_CENTER`, `Phaser.BOTTOM_LEFT`, `Phaser.BOTTOM_CENTER`
	* and `Phaser.BOTTOM_RIGHT`.
	* 
	* This method returns the same values as calling Rectangle.bottomLeft, etc, but those
	* calls always create a new Point object, where-as this one allows you to use your own.
	* 
	* @param position One of the Phaser position constants, such as `Phaser.TOP_RIGHT`.
	* @param out A Phaser.Point that the values will be set in.If no object is provided a new Phaser.Point object will be created. In high performance areas avoid this by re-using an existing object.
	* @return An object containing the point in its `x` and `y` properties.
	*/
	function getPoint(position:Float, out:phaser.Point):phaser.Point;
	
	/**
	* Adjusts the location of the Rectangle object, as determined by its top-left corner, by the specified amounts.
	* 
	* @param dx Moves the x value of the Rectangle object by this amount.
	* @param dy Moves the y value of the Rectangle object by this amount.
	* @return This Rectangle object.
	*/
	function offset(dx:Float, dy:Float):phaser.Rectangle;
	
	/**
	* Adjusts the location of the Rectangle object using a Point object as a parameter. This method is similar to the Rectangle.offset() method, except that it takes a Point object as a parameter.
	* 
	* @param point A Point object to use to offset this Rectangle object.
	* @return This Rectangle object.
	*/
	function offsetPoint(point:phaser.Point):phaser.Rectangle;
	
	/**
	* Returns a uniformly distributed random point from anywhere within this Rectangle.
	* 
	* @param out A Phaser.Point, or any object with public x/y properties, that the values will be set in.If no object is provided a new Phaser.Point object will be created. In high performance areas avoid this by re-using an existing object.
	* @return An object containing the random point in its `x` and `y` properties.
	*/
	function random(?out:phaser.Point):phaser.Point;
	
	/**
	* Resize the Rectangle by providing a new width and height.
	* The x and y positions remain unchanged.
	* 
	* @param width The width of the Rectangle. Should always be either zero or a positive value.
	* @param height The height of the Rectangle. Should always be either zero or a positive value.
	* @return This Rectangle object
	*/
	function resize(width:Float, height:Float):phaser.Rectangle;
	
	/**
	* Sets the members of Rectangle to the specified values.
	* 
	* @param x The x coordinate of the top-left corner of the Rectangle.
	* @param y The y coordinate of the top-left corner of the Rectangle.
	* @param width The width of the Rectangle. Should always be either zero or a positive value.
	* @param height The height of the Rectangle. Should always be either zero or a positive value.
	* @return This Rectangle object
	*/
	function setTo(x:Float, y:Float, width:Float, height:Float):phaser.Rectangle;
	
	/**
	* Scales the width and height of this Rectangle by the given amounts.
	* 
	* @param x The amount to scale the width of the Rectangle by. A value of 0.5 would reduce by half, a value of 2 would double the width, etc.
	* @param y The amount to scale the height of the Rectangle by. A value of 0.5 would reduce by half, a value of 2 would double the height, etc.
	* @return This Rectangle object
	*/
	function scale(x:Float, ?y:Float):phaser.Rectangle;
	
	/**
	* Returns a string representation of this object.
	* 
	* @return A string representation of the instance.
	*/
	function toString():String;
	
	/**
	* Returns a new Rectangle object with the same values for the x, y, width, and height properties as the original Rectangle object.
	* 
	* @param output Optional Rectangle object. If given the values will be set into the object, otherwise a brand new Rectangle object will be created and returned.
	*/
	@:native("clone")
	static function STATIC_clone(a:phaser.Rectangle, ?output:phaser.Rectangle):phaser.Rectangle;
	
	/**
	* Determines whether the specified coordinates are contained within the region defined by this Rectangle object.
	* 
	* @param x The x coordinate of the point to test.
	* @param y The y coordinate of the point to test.
	* @return A value of true if the Rectangle object contains the specified point; otherwise false.
	*/
	@:native("contains")
	static function STATIC_contains(a:phaser.Rectangle, x:Float, y:Float):Bool;
	
	/**
	* Determines whether the first Rectangle object is fully contained within the second Rectangle object.
	* A Rectangle object is said to contain another if the second Rectangle object falls entirely within the boundaries of the first.
	* 
	* @param b The second Rectangle object.
	* @return A value of true if the Rectangle object contains the specified point; otherwise false.
	*/
	@:native("containsRect")
	static function STATIC_containsRect(a:phaser.Rectangle, b:phaser.Rectangle):Bool;
	
	/**
	* Determines whether the two Rectangles are equal.
	* This method compares the x, y, width and height properties of each Rectangle.
	* 
	* @param b The second Rectangle object.
	* @return A value of true if the two Rectangles have exactly the same values for the x, y, width and height properties; otherwise false.
	*/
	@:native("equals")
	static function STATIC_equals(a:phaser.Rectangle, b:phaser.Rectangle):Bool;
	
	/**
	* Increases the size of the Rectangle object by the specified amounts. The center point of the Rectangle object stays the same, and its size increases to the left and right by the dx value, and to the top and the bottom by the dy value.
	* 
	* @param dx The amount to be added to the left side of the Rectangle.
	* @param dy The amount to be added to the bottom side of the Rectangle.
	* @return This Rectangle object.
	*/
	@:native("inflate")
	static function STATIC_inflate(a:phaser.Rectangle, dx:Float, dy:Float):phaser.Rectangle;
	
	/**
	* If the Rectangle object specified in the toIntersect parameter intersects with this Rectangle object, returns the area of intersection as a Rectangle object. If the Rectangles do not intersect, this method returns an empty Rectangle object with its properties set to 0.
	* 
	* @param b The second Rectangle object.
	* @param out Optional Rectangle object. If given the intersection values will be set into this object, otherwise a brand new Rectangle object will be created and returned.
	* @return A Rectangle object that equals the area of intersection. If the Rectangles do not intersect, this method returns an empty Rectangle object; that is, a Rectangle with its x, y, width, and height properties set to 0.
	*/
	@:native("intersection")
	static function STATIC_intersection(a:phaser.Rectangle, b:phaser.Rectangle, ?out:phaser.Rectangle):phaser.Rectangle;
	
	/**
	* Determines whether this Rectangle and another given Rectangle intersect with each other.
	* This method checks the x, y, width, and height properties of the two Rectangles.
	* 
	* @param b The second Rectangle object.
	* @return A value of true if the specified object intersects with this Rectangle object; otherwise false.
	*/
	@:native("intersects")
	static function STATIC_intersects(a:phaser.Rectangle, b:phaser.Rectangle):Bool;
	
	/**
	* Determines whether the coordinates given intersects (overlaps) with this Rectangle.
	* 
	* @param left The x coordinate of the left of the area.
	* @param right The right coordinate of the area.
	* @param top The y coordinate of the area.
	* @param bottom The bottom coordinate of the area.
	* @param tolerance A tolerance value to allow for an intersection test with padding, default to 0
	* @return A value of true if the specified object intersects with the Rectangle; otherwise false.
	*/
	@:native("intersectsRaw")
	static function STATIC_intersectsRaw(left:Float, right:Float, top:Float, bottom:Float, tolerance:Float):Bool;
	
	/**
	* The size of the Rectangle object, expressed as a Point object with the values of the width and height properties.
	* 
	* @param output Optional Point object. If given the values will be set into the object, otherwise a brand new Point object will be created and returned.
	* @return The size of the Rectangle object.
	*/
	@:native("size")
	static function STATIC_size(a:phaser.Rectangle, ?output:phaser.Point):phaser.Point;
	
	/**
	* Adds two Rectangles together to create a new Rectangle object, by filling in the horizontal and vertical space between the two Rectangles.
	* 
	* @param b The second Rectangle object.
	* @param out Optional Rectangle object. If given the new values will be set into this object, otherwise a brand new Rectangle object will be created and returned.
	* @return A Rectangle object that is the union of the two Rectangles.
	*/
	@:native("union")
	static function STATIC_union(a:phaser.Rectangle, b:phaser.Rectangle, ?out:phaser.Rectangle):phaser.Rectangle;
	
}

