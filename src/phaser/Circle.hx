package phaser;

/**
* Creates a new Circle object with the center coordinate specified by the x and y parameters and the diameter specified by the diameter parameter.
* If you call this function without parameters, a circle with x, y, diameter and radius properties set to 0 is created.
*/
@:native("Phaser.Circle")
extern class Circle {

	/**
	* Creates a new Circle object with the center coordinate specified by the x and y parameters and the diameter specified by the diameter parameter.
	* If you call this function without parameters, a circle with x, y, diameter and radius properties set to 0 is created.
	* 
	* @param x The x coordinate of the center of the circle.
	* @param y The y coordinate of the center of the circle.
	* @param diameter The diameter of the circle.
	*/
	function new(?x:Float, ?y:Float, ?diameter:Float);
	
	/**
	* The area of this Circle.
	*/
	var area:Float;
	
	/**
	* The sum of the y and radius properties. Changing the bottom property of a Circle object has no effect on the x and y properties, but does change the diameter. Gets or sets the bottom of the circle.
	*/
	var bottom:Float;
	
	/**
	* The largest distance between any two points on the circle. The same as the radius * 2. Gets or sets the diameter of the circle.
	*/
	var diameter:Float;
	
	/**
	* Determines whether or not this Circle object is empty. Will return a value of true if the Circle objects diameter is less than or equal to 0; otherwise false.
	* If set to true it will reset all of the Circle objects properties to 0. A Circle object is empty if its diameter is less than or equal to 0. Gets or sets the empty state of the circle.
	*/
	var empty:Bool;
	
	/**
	* The x coordinate of the leftmost point of the circle. Changing the left property of a Circle object has no effect on the x and y properties. However it does affect the diameter, whereas changing the x value does not affect the diameter property.
	*/
	var left:Float;
	
	/**
	* The length of a line extending from the center of the circle to any point on the circle itself. The same as half the diameter. Gets or sets the radius of the circle.
	*/
	var radius:Float;
	
	/**
	* The x coordinate of the rightmost point of the circle. Changing the right property of a Circle object has no effect on the x and y properties. However it does affect the diameter, whereas changing the x value does not affect the diameter property. Gets or sets the value of the rightmost point of the circle.
	*/
	var right:Float;
	
	/**
	* The sum of the y minus the radius property. Changing the top property of a Circle object has no effect on the x and y properties, but does change the diameter. Gets or sets the top of the circle.
	*/
	var top:Float;
	
	/**
	* The x coordinate of the center of the circle.
	*/
	var x:Float;
	
	/**
	* The y coordinate of the center of the circle.
	*/
	var y:Float;
	
	/**
	* Returns a Point object containing the coordinates of a point on the circumference of the Circle based on the given angle.
	* 
	* @param angle The angle in radians (unless asDegrees is true) to return the point from.
	* @param asDegrees Is the given angle in radians (false) or degrees (true)?
	* @param out An optional Point object to put the result in to. If none specified a new Point object will be created.
	* @return The Point object holding the result.
	*/
	function circumferencePoint(angle:Float, ?asDegrees:Bool, ?out:phaser.Point):phaser.Point;
	
	/**
	* Return true if the given x/y coordinates are within this Circle object.
	* 
	* @param x The X value of the coordinate to test.
	* @param y The Y value of the coordinate to test.
	* @return True if the coordinates are within this circle, otherwise false.
	*/
	function contains(x:Float, y:Float):Bool;
	
	/**
	* Determines whether the two Circle objects match. This method compares the x, y and diameter properties.
	* 
	* @param a The first Circle object.
	* @param b The second Circle object.
	* @return A value of true if the object has exactly the same values for the x, y and diameter properties as this Circle object; otherwise false.
	*/
	static function equals(a:phaser.Circle, b:phaser.Circle):Bool;
	
	/**
	* Determines whether the two Circle objects intersect.
	* This method checks the radius distances between the two Circle objects to see if they intersect.
	* 
	* @param a The first Circle object.
	* @param b The second Circle object.
	* @return A value of true if the specified object intersects with this Circle object; otherwise false.
	*/
	static function intersects(a:phaser.Circle, b:phaser.Circle):Bool;
	
	/**
	* Checks if the given Circle and Rectangle objects intersect.
	* 
	* @param c The Circle object to test.
	* @param r The Rectangle object to test.
	* @return True if the two objects intersect, otherwise false.
	*/
	static function intersectsRectangle(c:phaser.Circle, r:phaser.Rectangle):Bool;
	
	/**
	* The circumference of the circle.
	* 
	* @return The circumference of the circle.
	*/
	function circumference():Float;
	
	/**
	* Returns a new Circle object with the same values for the x, y, width, and height properties as this Circle object.
	* 
	* @param output Optional Circle object. If given the values will be set into the object, otherwise a brand new Circle object will be created and returned.
	* @return The cloned Circle object.
	*/
	function clone(output:phaser.Circle):phaser.Circle;
	
	/**
	* Copies the x, y and diameter properties from any given object to this Circle.
	* 
	* @param source The object to copy from.
	* @return This Circle object.
	*/
	function copyFrom(source:Dynamic):Circle;
	
	/**
	* Copies the x, y and diameter properties from this Circle to any given object.
	* 
	* @param dest The object to copy to.
	* @return This dest object.
	*/
	function copyTo(dest:Dynamic):Dynamic;
	
	/**
	* Returns the distance from the center of the Circle object to the given object
	* (can be Circle, Point or anything with x/y properties)
	* 
	* @param dest The target object. Must have visible x and y properties that represent the center of the object.
	* @param round Round the distance to the nearest integer.
	* @return The distance between this Point object and the destination Point object.
	*/
	function distance(dest:Dynamic, ?round:Bool):Float;
	
	/**
	* Returns the framing rectangle of the circle as a Phaser.Rectangle object.
	* 
	* @return The bounds of the Circle.
	*/
	function getBounds():phaser.Rectangle;
	
	/**
	* Adjusts the location of the Circle object, as determined by its center coordinate, by the specified amounts.
	* 
	* @param dx Moves the x value of the Circle object by this amount.
	* @param dy Moves the y value of the Circle object by this amount.
	* @return This Circle object.
	*/
	function offset(dx:Float, dy:Float):phaser.Circle;
	
	/**
	* Adjusts the location of the Circle object using a Point object as a parameter. This method is similar to the Circle.offset() method, except that it takes a Point object as a parameter.
	* 
	* @param point A Point object to use to offset this Circle object (or any valid object with exposed x and y properties).
	* @return This Circle object.
	*/
	function offsetPoint(point:phaser.Point):phaser.Circle;
	
	/**
	* Returns a uniformly distributed random point from anywhere within this Circle.
	* 
	* @param out A Phaser.Point, or any object with public x/y properties, that the values will be set in.If no object is provided a new Phaser.Point object will be created. In high performance areas avoid this by re-using an existing object.
	* @return An object containing the random point in its `x` and `y` properties.
	*/
	function random(?out:phaser.Point):phaser.Point;
	
	function scale(x:Float, ?y:Float):phaser.Rectangle;
	
	/**
	* Sets the members of Circle to the specified values.
	* 
	* @param x The x coordinate of the center of the circle.
	* @param y The y coordinate of the center of the circle.
	* @param diameter The diameter of the circle.
	* @return This circle object.
	*/
	function setTo(x:Float, y:Float, diameter:Float):Circle;
	
	/**
	* Returns a string representation of this object.
	* 
	* @return a string representation of the instance.
	*/
	function toString():String;
	
	/**
	* Returns a Point object containing the coordinates of a point on the circumference of the Circle based on the given angle.
	* 
	* @param angle The angle in radians (unless asDegrees is true) to return the point from.
	* @param asDegrees Is the given angle in radians (false) or degrees (true)?
	* @param out An optional Point object to put the result in to. If none specified a new Point object will be created.
	* @return The Point object holding the result.
	*/
	@:native("circumferencePoint")
	static function STATIC_circumferencePoint(a:phaser.Circle, angle:Float, asDegrees:Bool, ?out:phaser.Point):phaser.Point;
	
	/**
	* Return true if the given x/y coordinates are within this Circle object.
	* 
	* @param x The X value of the coordinate to test.
	* @param y The Y value of the coordinate to test.
	* @return True if the coordinates are within this circle, otherwise false.
	*/
	@:native("contains")
	static function STATIC_contains(a:phaser.Circle, x:Float, y:Float):Bool;
	
}

