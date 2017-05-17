package phaser;

/**
* A Point object represents a location in a two-dimensional coordinate system, where x represents the horizontal axis and y represents the vertical axis.
* The following code creates a point at (0,0):
* `var myPoint = new Phaser.Point();`
* You can also use them as 2D Vectors and you'll find different vector related methods in this class.
*/
@:native("Phaser.Point")
extern class Point extends pixi.Point {

	/**
	* A Point object represents a location in a two-dimensional coordinate system, where x represents the horizontal axis and y represents the vertical axis.
	* The following code creates a point at (0,0):
	* `var myPoint = new Phaser.Point();`
	* You can also use them as 2D Vectors and you'll find different vector related methods in this class.
	* 
	* @param x The horizontal position of this Point.
	* @param y The vertical position of this Point.
	*/
	function new(?x:Float, ?y:Float);
	
	/**
	* The x value of the point.
	*/
	@:native("x")
	var Point_x:Float;
	
	/**
	* The y value of the point.
	*/
	@:native("y")
	var Point_y:Float;
	
	/**
	* The const type of this object.
	*/
	var type:Float;
	
	/**
	* Adds the given x and y values to this Point.
	* 
	* @param x The value to add to Point.x.
	* @param y The value to add to Point.y.
	* @return This Point object. Useful for chaining method calls.
	*/
	function add(x:Float, y:Float):phaser.Point;
	
	/**
	* Subtracts the given x and y values from this Point.
	* 
	* @param x The value to subtract from Point.x.
	* @param y The value to subtract from Point.y.
	* @return This Point object. Useful for chaining method calls.
	*/
	function subtract(x:Float, y:Float):phaser.Point;
	
	/**
	* Multiplies Point.x and Point.y by the given x and y values. Sometimes known as `Scale`.
	* 
	* @param x The value to multiply Point.x by.
	* @param y The value to multiply Point.x by.
	* @return This Point object. Useful for chaining method calls.
	*/
	function multiply(x:Float, y:Float):phaser.Point;
	
	/**
	* Divides Point.x and Point.y by the given x and y values.
	* 
	* @param x The value to divide Point.x by.
	* @param y The value to divide Point.x by.
	* @return This Point object. Useful for chaining method calls.
	*/
	function divide(x:Float, y:Float):phaser.Point;
	
	/**
	* Determines whether the given objects x/y values are equal to this Point object.
	* 
	* @param a The object to compare with this Point.
	* @return A value of true if the x and y points are equal, otherwise false.
	*/
	function equals(a:phaser.Point):Bool;
	
	/**
	* Returns the angle between this Point object and another object with public x and y properties.
	* 
	* @param a The object to get the angle from this Point to.
	* @param asDegrees Is the given angle in radians (false) or degrees (true)?
	* @return The angle between the two objects.
	*/
	function angle(a:phaser.Point, ?asDegrees:Bool):Float;
	
	function angleSq(a:phaser.Point):Float;
	
	/**
	* Creates a negative Point.
	* 
	* @param a The first Point object.
	* @param out Optional Point to store the value in, if not supplied a new Point object will be created.
	* @return The new Point object.
	*/
	static function negative(a:phaser.Point, ?out:phaser.Point):phaser.Point;
	
	/**
	* Adds two 2D Points together and multiplies the result by the given scalar.
	* 
	* @param a The first Point object.
	* @param b The second Point object.
	* @param s The scaling value.
	* @param out Optional Point to store the value in, if not supplied a new Point object will be created.
	* @return The new Point object.
	*/
	static function multiplyAdd(a:phaser.Point, b:phaser.Point, scale:Float, ?out:phaser.Point):phaser.Point;
	
	/**
	* Interpolates the two given Points, based on the `f` value (between 0 and 1) and returns a new Point.
	* 
	* @param a The first Point object.
	* @param b The second Point object.
	* @param f The level of interpolation between the two points. Indicates where the new point will be, along the line between pt1 and pt2. If f=1, pt1 is returned; if f=0, pt2 is returned.
	* @param out Optional Point to store the value in, if not supplied a new Point object will be created.
	* @return The new Point object.
	*/
	static function interpolate(a:phaser.Point, b:phaser.Point, alpha:Float, ?out:phaser.Point):phaser.Point;
	
	/**
	* Parses an object for x and/or y properties and returns a new Phaser.Point with matching values.
	* If the object doesn't contain those properties a Point with x/y of zero will be returned.
	* 
	* @param obj The object to parse.
	* @param xProp The property used to set the Point.x value. - Default: 'x'
	* @param yProp The property used to set the Point.y value. - Default: 'y'
	* @return The new Point object.
	*/
	static function parse(obj:Dynamic, ?xProp:String, ?yProp:String):phaser.Point;
	
	/**
	* Make this Point perpendicular (90 degrees rotation)
	* 
	* @return This Point object.
	*/
	function perp():phaser.Point;
	
	/**
	* Make this Point perpendicular (-90 degrees rotation)
	* 
	* @return This Point object.
	*/
	function rperp():phaser.Point;
	
	/**
	* Returns the distance of this Point object to the given object (can be a Circle, Point or anything with x/y properties)
	* 
	* @param dest The target object. Must have visible x and y properties that represent the center of the object.
	* @param round Round the distance to the nearest integer (default false).
	* @return The distance between this Point object and the destination Point object.
	*/
	function distance(dest:phaser.Point, ?round:Bool):Float;
	
	/**
	* Project two Points onto another Point.
	* 
	* @param a The first Point object.
	* @param b The second Point object.
	* @param out Optional Point to store the value in, if not supplied a new Point object will be created.
	* @return The new Point object.
	*/
	static function project(a:phaser.Point, b:phaser.Point, ?out:phaser.Point):phaser.Point;
	
	/**
	* Project two Points onto a Point of unit length.
	* 
	* @param a The first Point object.
	* @param b The second Point object.
	* @param out Optional Point to store the value in, if not supplied a new Point object will be created.
	* @return The new Point object.
	*/
	static function projectUnit(a:phaser.Point, b:phaser.Point, ?out:phaser.Point):phaser.Point;
	
	/**
	* Right-hand normalize (make unit length) this Point.
	* 
	* @return This Point object.
	*/
	function normalRightHand():phaser.Point;
	
	/**
	* Alters the Point object so that its length is 1, but it retains the same direction.
	* 
	* @return This Point object.
	*/
	function normalize():phaser.Point;
	
	/**
	* Rotates this Point around the x/y coordinates given to the desired angle.
	* 
	* @param x The x coordinate of the anchor point.
	* @param y The y coordinate of the anchor point.
	* @param angle The angle in radians (unless asDegrees is true) to rotate the Point to.
	* @param asDegrees Is the given angle in radians (false) or degrees (true)?
	* @param distance An optional distance constraint between the Point and the anchor.
	* @return The modified point object.
	*/
	function rotate(x:Float, y:Float, angle:Float, ?asDegrees:Bool, ?distance:Float):phaser.Point;
	
	/**
	* Calculates centroid (or midpoint) from an array of points. If only one point is provided, that point is returned.
	* 
	* @param points The array of one or more points.
	* @param out Optional Point to store the value in, if not supplied a new Point object will be created.
	* @return The new Point object.
	*/
	static function centroid(points:Array<phaser.Point>, ?out:phaser.Point):phaser.Point;
	
	/**
	* Clamps this Point object values to be between the given min and max.
	* 
	* @param min The minimum value to clamp this Point to.
	* @param max The maximum value to clamp this Point to.
	* @return This Point object.
	*/
	function clamp(min:Float, max:Float):phaser.Point;
	
	/**
	* Clamps the x value of this Point to be between the given min and max.
	* 
	* @param min The minimum value to clamp this Point to.
	* @param max The maximum value to clamp this Point to.
	* @return This Point object.
	*/
	function clampX(min:Float, max:Float):phaser.Point;
	
	/**
	* Clamps the y value of this Point to be between the given min and max
	* 
	* @param min The minimum value to clamp this Point to.
	* @param max The maximum value to clamp this Point to.
	* @return This Point object.
	*/
	function clampY(min:Float, max:Float):phaser.Point;
	
	/**
	* Creates a copy of the given Point.
	* 
	* @param output Optional Point object. If given the values will be set into this object, otherwise a brand new Point object will be created and returned.
	* @return The new Point object.
	*/
	@:native("clone")
	function Point_clone(?output:phaser.Point):phaser.Point;
	
	/**
	* Copies the x and y properties from any given object to this Point.
	* 
	* @param source The object to copy from.
	* @return This Point object.
	*/
	function copyFrom(source:phaser.Point):phaser.Point;
	
	/**
	* Copies the x and y properties from this Point to any given object.
	* 
	* @param dest The object to copy to.
	* @return The dest object.
	*/
	function copyTo<T>(dest:T):T;
	
	/**
	* Math.ceil() both the x and y properties of this Point.
	* 
	* @return This Point object.
	*/
	function ceil():phaser.Point;
	
	/**
	* The cross product of this and another Point object.
	* 
	* @param a The Point object to get the cross product combined with this Point.
	* @return The result.
	*/
	function cross(a:phaser.Point):Float;
	
	/**
	* The dot product of this and another Point object.
	* 
	* @param a The Point object to get the dot product combined with this Point.
	* @return The result.
	*/
	function dot(a:phaser.Point):Float;
	
	/**
	* Math.floor() both the x and y properties of this Point.
	* 
	* @return This Point object.
	*/
	function floor():phaser.Point;
	
	/**
	* Calculates the length of the Point object.
	* 
	* @return The length of the Point.
	*/
	function getMagnitude():Float;
	
	/**
	* Calculates the length squared of the Point object.
	* 
	* @return The length ^ 2 of the Point.
	*/
	function getMagnitudeSq():Float;
	
	/**
	* Inverts the x and y values of this Point
	* 
	* @return This Point object.
	*/
	function invert():phaser.Point;
	
	/**
	* Determine if this point is at 0,0.
	* 
	* @return True if this Point is 0,0, otherwise false.
	*/
	function isZero():Bool;
	
	/**
	* Sets the `x` and `y` values of this Point object to the given values.
	* If you omit the `y` value then the `x` value will be applied to both, for example:
	* `Point.set(2)` is the same as `Point.set(2, 2)`
	* 
	* @param x The horizontal value of this point.
	* @param y The vertical value of this point. If not given the x value will be used in its place.
	* @return This Point object. Useful for chaining method calls.
	*/
	@:native("set")
	function Point_set(x:Float, ?y:Float):phaser.Point;
	
	/**
	* Alters the length of the Point without changing the direction.
	* 
	* @param magnitude The desired magnitude of the resulting Point.
	* @return This Point object.
	*/
	function setMagnitude(magnitude:Float):phaser.Point;
	
	/**
	* Sets the `x` and `y` values of this Point object to the given values.
	* If you omit the `y` value then the `x` value will be applied to both, for example:
	* `Point.setTo(2)` is the same as `Point.setTo(2, 2)`
	* 
	* @param x The horizontal value of this point.
	* @param y The vertical value of this point. If not given the x value will be used in its place.
	* @return This Point object. Useful for chaining method calls.
	*/
	function setTo(x:Float, ?y:Float):phaser.Point;
	
	/**
	* Returns a string representation of this object.
	* 
	* @return A string representation of the instance.
	*/
	function toString():String;
	
	/**
	* Adds the given x and y values to this Point.
	* 
	* @param x The value to add to Point.x.
	* @param y The value to add to Point.y.
	* @return This Point object. Useful for chaining method calls.
	*/
	@:native("add")
	static function STATIC_add(a:phaser.Point, b:phaser.Point, ?out:phaser.Point):phaser.Point;
	
	/**
	* Subtracts the given x and y values from this Point.
	* 
	* @param x The value to subtract from Point.x.
	* @param y The value to subtract from Point.y.
	* @return This Point object. Useful for chaining method calls.
	*/
	@:native("subtract")
	static function STATIC_subtract(a:phaser.Point, b:phaser.Point, ?out:phaser.Point):phaser.Point;
	
	/**
	* Multiplies Point.x and Point.y by the given x and y values. Sometimes known as `Scale`.
	* 
	* @param x The value to multiply Point.x by.
	* @param y The value to multiply Point.x by.
	* @return This Point object. Useful for chaining method calls.
	*/
	@:native("multiply")
	static function STATIC_multiply(a:phaser.Point, b:phaser.Point, ?out:phaser.Point):phaser.Point;
	
	/**
	* Divides Point.x and Point.y by the given x and y values.
	* 
	* @param x The value to divide Point.x by.
	* @param y The value to divide Point.x by.
	* @return This Point object. Useful for chaining method calls.
	*/
	@:native("divide")
	static function STATIC_divide(a:phaser.Point, b:phaser.Point, ?out:phaser.Point):phaser.Point;
	
	/**
	* Determines whether the given objects x/y values are equal to this Point object.
	* 
	* @param a The object to compare with this Point.
	* @return A value of true if the x and y points are equal, otherwise false.
	*/
	@:native("equals")
	static function STATIC_equals(a:phaser.Point, b:phaser.Point):Bool;
	
	/**
	* Returns the angle between this Point object and another object with public x and y properties.
	* 
	* @param a The object to get the angle from this Point to.
	* @param asDegrees Is the given angle in radians (false) or degrees (true)?
	* @return The angle between the two objects.
	*/
	@:native("angle")
	static function STATIC_angle(a:phaser.Point, b:phaser.Point):Float;
	
	@:native("angleSq")
	static function STATIC_angleSq(a:phaser.Point, b:phaser.Point):Float;
	
	/**
	* Make this Point perpendicular (90 degrees rotation)
	* 
	* @return This Point object.
	*/
	@:native("perp")
	static function STATIC_perp(a:phaser.Point, ?out:phaser.Point):phaser.Point;
	
	/**
	* Make this Point perpendicular (-90 degrees rotation)
	* 
	* @return This Point object.
	*/
	@:native("rperp")
	static function STATIC_rperp(a:phaser.Point, ?out:phaser.Point):phaser.Point;
	
	/**
	* Returns the distance of this Point object to the given object (can be a Circle, Point or anything with x/y properties)
	* 
	* @param dest The target object. Must have visible x and y properties that represent the center of the object.
	* @param round Round the distance to the nearest integer (default false).
	* @return The distance between this Point object and the destination Point object.
	*/
	@:native("distance")
	static function STATIC_distance(a:Dynamic, b:Dynamic, ?round:Bool):Float;
	
	/**
	* Right-hand normalize (make unit length) this Point.
	* 
	* @return This Point object.
	*/
	@:native("normalRightHand")
	static function STATIC_normalRightHand(a:phaser.Point, ?out:phaser.Point):phaser.Point;
	
	/**
	* Alters the Point object so that its length is 1, but it retains the same direction.
	* 
	* @return This Point object.
	*/
	@:native("normalize")
	static function STATIC_normalize(a:phaser.Point, ?out:phaser.Point):phaser.Point;
	
	/**
	* Rotates this Point around the x/y coordinates given to the desired angle.
	* 
	* @param x The x coordinate of the anchor point.
	* @param y The y coordinate of the anchor point.
	* @param angle The angle in radians (unless asDegrees is true) to rotate the Point to.
	* @param asDegrees Is the given angle in radians (false) or degrees (true)?
	* @param distance An optional distance constraint between the Point and the anchor.
	* @return The modified point object.
	*/
	@:native("rotate")
	static function STATIC_rotate(a:phaser.Point, x:Float, y:Float, angle:Float, ?asDegrees:Bool, ?distance:Float):phaser.Point;
	
}

