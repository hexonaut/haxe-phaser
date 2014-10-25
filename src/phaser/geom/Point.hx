package phaser.geom;

@:native("Phaser.Point")
extern class Point {
	
	/**
	 * Creates a new Point object. If you pass no parameters a Point is created set to (0, 0).
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
	function copyFrom (source:Dynamic):Dynamic;
	
	/**
	 * Inverts the x and y values of this Point
	 */
	function invert ():Dynamic;
	
	/**
	 * Sets the x and y values of this Point object to the given values.
	 * If you omit the y value then the x value will be applied to both, for example:
	 * Point.setTo(2) is the same as Point.setTo(2, 2)
	 */
	function setTo (x:Float, ?y:Float):Dynamic;
	
	/**
	 * Sets the x and y values of this Point object to the given values.
	 * If you omit the y value then the x value will be applied to both, for example:
	 * Point.setTo(2) is the same as Point.setTo(2, 2)
	 */
	function set (x:Float, ?y:Float):Dynamic;
	
	/**
	 * Adds the given x and y values to this Point.
	 */
	function add (x:Float, y:Float):Dynamic;
	
	/**
	 * Subtracts the given x and y values from this Point.
	 */
	function subtract (x:Float, y:Float):Dynamic;
	
	/**
	 * Multiplies Point.x and Point.y by the given x and y values. Sometimes known as Scale.
	 */
	function multiply (x:Float, y:Float):Dynamic;
	
	/**
	 * Divides Point.x and Point.y by the given x and y values.
	 */
	function divide (x:Float, y:Float):Dynamic;
	
	/**
	 * Clamps the x value of this Point to be between the given min and max.
	 */
	function clampX (min:Float, max:Float):Dynamic;
	
	/**
	 * Clamps the y value of this Point to be between the given min and max
	 */
	function clampY (min:Float, max:Float):Dynamic;
	
	/**
	 * Clamps this Point object values to be between the given min and max.
	 */
	function clamp (min:Float, max:Float):Dynamic;
	
	/**
	 * Creates a copy of the given Point.
	 */
	function clone (?output:Dynamic):Dynamic;
	
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
	@:overload(function (a:Dynamic):Bool {})
	function equals (a:Dynamic):Bool;
	
	/**
	 * Returns the angle between this Point object and another object with public x and y properties.
	 */
	@:overload(function (a:Dynamic):Float {})
	function angle (a:Dynamic):Float;
	
	/**
	 * Returns the angle squared between this Point object and another object with public x and y properties.
	 */
	@:overload(function (a:Dynamic):Float {})
	function angleSq (a:Dynamic):Float;
	
	/**
	 * Rotates this Point around the x/y coordinates given to the desired angle.
	 */
	function rotate (x:Float, y:Float, angle:Float, asDegrees:Bool, ?distance:Float):Dynamic;
	
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
	function setMagnitude (magnitude:Float):Dynamic;
	
	/**
	 * Alters the Point object so that its length is 1, but it retains the same direction.
	 */
	function normalize ():Dynamic;
	
	/**
	 * Determine if this point is at 0,0.
	 */
	function isZero ():Bool;
	
	/**
	 * The dot product of this and another Point object.
	 */
	function dot (a:Dynamic):Float;
	
	/**
	 * The cross product of this and another Point object.
	 */
	function cross (a:Dynamic):Float;
	
	/**
	 * Make this Point perpendicular (90 degrees rotation)
	 */
	function perp ():Dynamic;
	
	/**
	 * Make this Point perpendicular (-90 degrees rotation)
	 */
	function rperp ():Dynamic;
	
	/**
	 * Right-hand normalize (make unit length) this Point.
	 */
	function normalRightHand ():Dynamic;
	
	/**
	 * Returns a string representation of this object.
	 */
	function toString ():String;
	
	/**
	 * Creates a negative Point.
	 */
	function negative (a:Dynamic, ?out:Dynamic):Dynamic;
	
	/**
	 * Adds two 2D Points together and multiplies the result by the given scalar.
	 */
	function multiplyAdd (a:Dynamic, b:Dynamic, s:Float, ?out:Dynamic):Dynamic;
	
	/**
	 * Interpolates the two given Points, based on the f value (between 0 and 1) and returns a new Point.
	 */
	function interpolate (a:Dynamic, b:Dynamic, f:Float, ?out:Dynamic):Dynamic;
	
	/**
	 * Project two Points onto another Point.
	 */
	function project (a:Dynamic, b:Dynamic, ?out:Dynamic):Dynamic;
	
	/**
	 * Project two Points onto a Point of unit length.
	 */
	function projectUnit (a:Dynamic, b:Dynamic, ?out:Dynamic):Dynamic;
	
	/**
	 * Calculates centroid (or midpoint) from an array of points. If only one point is provided, that point is returned.
	 */
	function centroid (points:Dynamic, ?out:Dynamic):Dynamic;
	
}
