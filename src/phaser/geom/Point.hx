package phaser.geom;

@:native("Phaser.Point")
extern class Point {
	
	/**
	 * A Point object represents a location in a two-dimensional coordinate system, where x represents the horizontal axis and y represents the vertical axis.
	 * The following code creates a point at (0,0):
	 * var myPoint = new Phaser.Point();
	 * You can also use them as 2D Vectors and you'll find different vector related methods in this class.
	 */
	function new (?x:Float = 0, ?y:Float = 0);
	
	/**
	 * The x value of the point.
	 */
	var x:Float;
	
	/**
	 * The y value of the point.
	 */
	var y:Float;
	
	/**
	 * Copies the x and y properties from any given object to this Point.
	 */
	function copyFrom (source:Dynamic):phaser.geom.Point;
	
	/**
	 * Inverts the x and y values of this Point
	 */
	function invert ():phaser.geom.Point;
	
	/**
	 * Sets the x and y values of this Point object to the given values.
	 * If you omit the y value then the x value will be applied to both, for example:
	 * Point.setTo(2) is the same as Point.setTo(2, 2)
	 */
	function setTo (x:Float, ?y:Float):phaser.geom.Point;
	
	/**
	 * Sets the x and y values of this Point object to the given values.
	 * If you omit the y value then the x value will be applied to both, for example:
	 * Point.setTo(2) is the same as Point.setTo(2, 2)
	 */
	function set (x:Float, ?y:Float):phaser.geom.Point;
	
	/**
	 * Adds the given x and y values to this Point.
	 */
	function add (x:Float, y:Float):phaser.geom.Point;
	
	/**
	 * Subtracts the given x and y values from this Point.
	 */
	function subtract (x:Float, y:Float):phaser.geom.Point;
	
	/**
	 * Multiplies Point.x and Point.y by the given x and y values. Sometimes known as Scale.
	 */
	function multiply (x:Float, y:Float):phaser.geom.Point;
	
	/**
	 * Divides Point.x and Point.y by the given x and y values.
	 */
	function divide (x:Float, y:Float):phaser.geom.Point;
	
	/**
	 * Clamps the x value of this Point to be between the given min and max.
	 */
	function clampX (min:Float, max:Float):phaser.geom.Point;
	
	/**
	 * Clamps the y value of this Point to be between the given min and max
	 */
	function clampY (min:Float, max:Float):phaser.geom.Point;
	
	/**
	 * Clamps this Point object values to be between the given min and max.
	 */
	function clamp (min:Float, max:Float):phaser.geom.Point;
	
	/**
	 * Creates a copy of the given Point.
	 */
	function clone (?output:phaser.geom.Point):phaser.geom.Point;
	
	/**
	 * Copies the x and y properties from this Point to any given object.
	 */
	function copyTo (dest:Dynamic):Dynamic;
	
	/**
	 * Returns the distance of this Point object to the given object (can be a Circle, Point or anything with x/y properties)
	 */
	function distance (dest:Dynamic, ?round:Bool):Float;
	
	/**
	 * Determines whether the given objects x/y values are equal to this Point object.
	 */
	@:overload(function (a:phaser.geom.Point):Bool {})
	function equals (a:Dynamic):Bool;
	
	/**
	 * Returns the angle between this Point object and another object with public x and y properties.
	 */
	@:overload(function (a:phaser.geom.Point, ?asDegrees:Bool = false):Float {})
	function angle (a:Dynamic, ?asDegrees:Bool = false):Float;
	
	/**
	 * Returns the angle squared between this Point object and another object with public x and y properties.
	 */
	@:overload(function (a:phaser.geom.Point):Float {})
	function angleSq (a:Dynamic):Float;
	
	/**
	 * Rotates this Point around the x/y coordinates given to the desired angle.
	 */
	function rotate (x:Float, y:Float, angle:Float, asDegrees:Bool, ?distance:Float):phaser.geom.Point;
	
	/**
	 * Calculates the length of the Point object.
	 */
	function getMagnitude ():Float;
	
	/**
	 * Calculates the length squared of the Point object.
	 */
	function getMagnitudeSq ():Float;
	
	/**
	 * Alters the length of the Point without changing the direction.
	 */
	function setMagnitude (magnitude:Float):phaser.geom.Point;
	
	/**
	 * Alters the Point object so that its length is 1, but it retains the same direction.
	 */
	function normalize ():phaser.geom.Point;
	
	/**
	 * Determine if this point is at 0,0.
	 */
	function isZero ():Bool;
	
	/**
	 * The dot product of this and another Point object.
	 */
	function dot (a:phaser.geom.Point):Float;
	
	/**
	 * The cross product of this and another Point object.
	 */
	function cross (a:phaser.geom.Point):Float;
	
	/**
	 * Make this Point perpendicular (90 degrees rotation)
	 */
	function perp ():phaser.geom.Point;
	
	/**
	 * Make this Point perpendicular (-90 degrees rotation)
	 */
	function rperp ():phaser.geom.Point;
	
	/**
	 * Right-hand normalize (make unit length) this Point.
	 */
	function normalRightHand ():phaser.geom.Point;
	
	/**
	 * Math.floor() both the x and y properties of this Point.
	 */
	function floor ():phaser.geom.Point;
	
	/**
	 * Math.ceil() both the x and y properties of this Point.
	 */
	function ceil ():phaser.geom.Point;
	
	/**
	 * Returns a string representation of this object.
	 */
	function toString ():String;
	
	/**
	 * Creates a negative Point.
	 */
	function negative (a:phaser.geom.Point, ?out:phaser.geom.Point):phaser.geom.Point;
	
	/**
	 * Adds two 2D Points together and multiplies the result by the given scalar.
	 */
	function multiplyAdd (a:phaser.geom.Point, b:phaser.geom.Point, s:Float, ?out:phaser.geom.Point):phaser.geom.Point;
	
	/**
	 * Interpolates the two given Points, based on the f value (between 0 and 1) and returns a new Point.
	 */
	function interpolate (a:phaser.geom.Point, b:phaser.geom.Point, f:Float, ?out:phaser.geom.Point):phaser.geom.Point;
	
	/**
	 * Project two Points onto another Point.
	 */
	function project (a:phaser.geom.Point, b:phaser.geom.Point, ?out:phaser.geom.Point):phaser.geom.Point;
	
	/**
	 * Project two Points onto a Point of unit length.
	 */
	function projectUnit (a:phaser.geom.Point, b:phaser.geom.Point, ?out:phaser.geom.Point):phaser.geom.Point;
	
	/**
	 * Calculates centroid (or midpoint) from an array of points. If only one point is provided, that point is returned.
	 */
	function centroid (points:Dynamic, ?out:phaser.geom.Point):phaser.geom.Point;
	
	/**
	 * Parses an object for x and/or y properties and returns a new Phaser.Point with matching values.
	 * If the object doesn't contain those properties a Point with x/y of zero will be returned.
	 */
	static function parse (obj:Dynamic, ?xProp:String = 'x', ?yProp:String = 'y'):phaser.geom.Point;
	
}
