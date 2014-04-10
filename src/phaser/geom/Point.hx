package phaser.geom;

@:native("Phaser.Point")
extern class Point {
	
	/**
	 * Creates a new Point. If you pass no parameters a Point is created set to (0,0).
	 */
	function new (x:Float, y:Float);
	
	/**
	 * The x coordinate of the point.
	 */
	var x:Float;
	
	/**
	 * The y coordinate of the point.
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
	 * Sets the x and y values of this Point object to the given coordinates.
	 */
	function setTo (x:Float, y:Float):Dynamic;
	
	/**
	 * Sets the x and y values of this Point object to the given coordinates.
	 */
	function set (x:Float, y:Float):Dynamic;
	
	/**
	 * Adds the given x and y values to this Point.
	 */
	function add (x:Float, y:Float):phaser.geom.Point;
	
	/**
	 * Subtracts the given x and y values from this Point.
	 */
	function subtract (x:Float, y:Float):phaser.geom.Point;
	
	/**
	 * Multiplies Point.x and Point.y by the given x and y values.
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
	function equals (a:phaser.geom.Point):Bool;
	
	/**
	 * Rotates this Point around the x/y coordinates given to the desired angle.
	 */
	function rotate (x:Float, y:Float, angle:Float, asDegrees:Bool, ?distance:Float):phaser.geom.Point;
	
	/**
	 * Calculates the length of the vector
	 */
	function getMagnitude ():Float;
	
	/**
	 * Alters the length of the vector without changing the direction
	 */
	function setMagnitude (magnitude:Float):phaser.geom.Point;
	
	/**
	 * Alters the vector so that its length is 1, but it retains the same direction
	 */
	function normalize ():phaser.geom.Point;
	
	/**
	 * Determine if this point is at 0,0
	 */
	function isZero ():Bool;
	
	/**
	 * Returns a string representation of this object.
	 */
	function toString ():String;
	
}
