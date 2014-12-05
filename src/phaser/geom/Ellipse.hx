package phaser.geom;

@:native("Phaser.Ellipse")
extern class Ellipse {
	
	/**
	 * Creates a Ellipse object. A curve on a plane surrounding two focal points.
	 */
	function new (?x:Float = 0, ?y:Float = 0, ?width:Float = 0, ?height:Float = 0);
	
	/**
	 * The X coordinate of the upper-left corner of the framing rectangle of this ellipse.
	 */
	var x:Float;
	
	/**
	 * The Y coordinate of the upper-left corner of the framing rectangle of this ellipse.
	 */
	var y:Float;
	
	/**
	 * The overall width of this ellipse.
	 */
	var width:Float;
	
	/**
	 * The overall height of this ellipse.
	 */
	var height:Float;
	
	/**
	 * Sets the members of the Ellipse to the specified values.
	 */
	function setTo (x:Float, y:Float, width:Float, height:Float):phaser.geom.Ellipse;
	
	/**
	 * Returns the framing rectangle of the ellipse as a Phaser.Rectangle object.
	 */
	function getBounds ():phaser.geom.Rectangle;
	
	/**
	 * Copies the x, y, width and height properties from any given object to this Ellipse.
	 */
	function copyFrom (source:Dynamic):phaser.geom.Ellipse;
	
	/**
	 * Copies the x, y, width and height properties from this Ellipse to any given object.
	 */
	function copyTo (dest:Dynamic):Dynamic;
	
	/**
	 * Returns a new Ellipse object with the same values for the x, y, width, and height properties as this Ellipse object.
	 */
	function clone (output:phaser.geom.Ellipse):phaser.geom.Ellipse;
	
	/**
	 * Return true if the given x/y coordinates are within this Ellipse object.
	 */
	function contains (x:Float, y:Float):Bool;
	
	/**
	 * Returns a string representation of this object.
	 */
	function toString ():String;
	
	/**
	 * The x coordinate of the rightmost point of the Ellipse. Changing the right property of an Ellipse object has no effect on the x property, but does adjust the width.
	 */
	var right:Float;
	
	/**
	 * The top of the Ellipse. The same as its y property.
	 */
	var top:Float;
	
	/**
	 * The sum of the y and height properties. Changing the bottom property of an Ellipse doesn't adjust the y property, but does change the height.
	 */
	var bottom:Float;
	
	/**
	 * Determines whether or not this Ellipse object is empty. Will return a value of true if the Ellipse objects dimensions are less than or equal to 0; otherwise false.
	 * If set to true it will reset all of the Ellipse objects properties to 0. An Ellipse object is empty if its width or height is less than or equal to 0.
	 */
	var empty:Bool;
	
}
