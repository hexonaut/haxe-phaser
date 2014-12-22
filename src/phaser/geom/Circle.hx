package phaser.geom;

@:native("Phaser.Circle")
extern class Circle {
	
	/**
	 * Creates a new Circle object with the center coordinate specified by the x and y parameters and the diameter specified by the diameter parameter.
	 * If you call this function without parameters, a circle with x, y, diameter and radius properties set to 0 is created.
	 */
	function new (?x:Float = 0, ?y:Float = 0, ?diameter:Float = 0);
	
	/**
	 * The x coordinate of the center of the circle.
	 */
	var x:Float;
	
	/**
	 * The y coordinate of the center of the circle.
	 */
	var y:Float;
	
	/**
	 * The diameter of the circle.
	 */
	var _diameter:Float;
	
	/**
	 * The radius of the circle.
	 */
	var _radius:Float;
	
	/**
	 * The circumference of the circle.
	 */
	function circumference ():Float;
	
	/**
	 * Returns the framing rectangle of the circle as a Phaser.Rectangle object
	 */
	function getBounds ():phaser.geom.Rectangle;
	
	/**
	 * Sets the members of Circle to the specified values.
	 */
	function setTo (x:Float, y:Float, diameter:Float):Dynamic;
	
	/**
	 * Copies the x, y and diameter properties from any given object to this Circle.
	 */
	function copyFrom (source:Dynamic):Dynamic;
	
	/**
	 * Copies the x, y and diameter properties from this Circle to any given object.
	 */
	function copyTo (dest:Dynamic):Dynamic;
	
	/**
	 * Returns the distance from the center of the Circle object to the given object
	 * (can be Circle, Point or anything with x/y properties)
	 */
	function distance (dest:Dynamic, ?round:Bool = false):Float;
	
	/**
	 * Returns a new Circle object with the same values for the x, y, width, and height properties as this Circle object.
	 */
	function clone (output:phaser.geom.Circle):phaser.geom.Circle;
	
	/**
	 * Return true if the given x/y coordinates are within this Circle object.
	 */
	function contains (x:Float, y:Float):Bool;
	
	/**
	 * Returns a Point object containing the coordinates of a point on the circumference of the Circle based on the given angle.
	 */
	function circumferencePoint (angle:Float, ?asDegrees:Bool = false, ?out:phaser.geom.Point):phaser.geom.Point;
	
	/**
	 * Adjusts the location of the Circle object, as determined by its center coordinate, by the specified amounts.
	 */
	function offset (dx:Float, dy:Float):Dynamic;
	
	/**
	 * Adjusts the location of the Circle object using a Point object as a parameter. This method is similar to the Circle.offset() method, except that it takes a Point object as a parameter.
	 */
	function offsetPoint (point:Dynamic):Dynamic;
	
	/**
	 * Returns a string representation of this object.
	 */
	function toString ():String;
	
	/**
	 * The largest distance between any two points on the circle. The same as the radius * 2.
	 */
	var diameter:Float;
	
	/**
	 * The length of a line extending from the center of the circle to any point on the circle itself. The same as half the diameter.
	 */
	var radius:Float;
	
	/**
	 * The x coordinate of the rightmost point of the circle. Changing the right property of a Circle object has no effect on the x and y properties. However it does affect the diameter, whereas changing the x value does not affect the diameter property.
	 */
	var right:Float;
	
	/**
	 * The sum of the y minus the radius property. Changing the top property of a Circle object has no effect on the x and y properties, but does change the diameter.
	 */
	var top:Float;
	
	/**
	 * The sum of the y and radius properties. Changing the bottom property of a Circle object has no effect on the x and y properties, but does change the diameter.
	 */
	var bottom:Float;
	
	/**
	 * The area of this Circle.
	 */
	var area(default, null):Float;
	
	/**
	 * Determines whether or not this Circle object is empty. Will return a value of true if the Circle objects diameter is less than or equal to 0; otherwise false.
	 * If set to true it will reset all of the Circle objects properties to 0. A Circle object is empty if its diameter is less than or equal to 0.
	 */
	var empty:Bool;
	
	/**
	 * Determines whether the two Circle objects match. This method compares the x, y and diameter properties.
	 */
	function equals (a:phaser.geom.Circle, b:phaser.geom.Circle):Bool;
	
	/**
	 * Determines whether the two Circle objects intersect.
	 * This method checks the radius distances between the two Circle objects to see if they intersect.
	 */
	function intersects (a:phaser.geom.Circle, b:phaser.geom.Circle):Bool;
	
	/**
	 * Checks if the given Circle and Rectangle objects intersect.
	 */
	function intersectsRectangle (c:phaser.geom.Circle, r:phaser.geom.Rectangle):Bool;
	
}
