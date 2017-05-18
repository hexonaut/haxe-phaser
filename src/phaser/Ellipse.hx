package phaser;

/**
* Creates a Ellipse object. A curve on a plane surrounding two focal points.
*/
@:native("Phaser.Ellipse")
extern class Ellipse {

	/**
	* Creates a Ellipse object. A curve on a plane surrounding two focal points.
	* 
	* @param x The X coordinate of the upper-left corner of the framing rectangle of this ellipse.
	* @param y The Y coordinate of the upper-left corner of the framing rectangle of this ellipse.
	* @param width The overall width of this ellipse.
	* @param height The overall height of this ellipse.
	*/
	function new(?x:Float, ?y:Float, ?width:Float, ?height:Float);
	
	/**
	* The sum of the y and height properties. Changing the bottom property of an Ellipse doesn't adjust the y property, but does change the height. Gets or sets the bottom of the ellipse.
	*/
	var bottom:Float;
	
	/**
	* Determines whether or not this Ellipse object is empty. Will return a value of true if the Ellipse objects dimensions are less than or equal to 0; otherwise false.
	* If set to true it will reset all of the Ellipse objects properties to 0. An Ellipse object is empty if its width or height is less than or equal to 0. Gets or sets the empty state of the ellipse.
	*/
	var empty:Bool;
	
	/**
	* The overall height of this ellipse.
	*/
	var height:Float;
	
	/**
	* The left coordinate of the Ellipse. The same as the X coordinate.
	*/
	var left:Float;
	
	/**
	* The x coordinate of the rightmost point of the Ellipse. Changing the right property of an Ellipse object has no effect on the x property, but does adjust the width. Gets or sets the value of the rightmost point of the ellipse.
	*/
	var right:Float;
	
	/**
	* The top of the Ellipse. The same as its y property. Gets or sets the top of the ellipse.
	*/
	var top:Float;
	
	/**
	* The const type of this object.
	*/
	var type:Float;
	
	/**
	* The overall width of this ellipse.
	*/
	var width:Float;
	
	/**
	* The X coordinate of the upper-left corner of the framing rectangle of this ellipse.
	*/
	var x:Float;
	
	/**
	* The Y coordinate of the upper-left corner of the framing rectangle of this ellipse.
	*/
	var y:Float;
	
	static function constains(a:phaser.Ellipse, x:Float, y:Float):Bool;
	
	/**
	* Returns a new Ellipse object with the same values for the x, y, width, and height properties as this Ellipse object.
	* 
	* @param output Optional Ellipse object. If given the values will be set into the object, otherwise a brand new Ellipse object will be created and returned.
	* @return The cloned Ellipse object.
	*/
	function clone(output:phaser.Ellipse):phaser.Ellipse;
	
	/**
	* Return true if the given x/y coordinates are within this Ellipse object.
	* 
	* @param x The X value of the coordinate to test.
	* @param y The Y value of the coordinate to test.
	* @return True if the coordinates are within this ellipse, otherwise false.
	*/
	function contains(x:Float, y:Float):Bool;
	
	/**
	* Copies the x, y, width and height properties from any given object to this Ellipse.
	* 
	* @param source The object to copy from.
	* @return This Ellipse object.
	*/
	function copyFrom(source:Dynamic):phaser.Ellipse;
	
	/**
	* Copies the x, y, width and height properties from this Ellipse to any given object.
	* 
	* @param dest The object to copy to.
	* @return This dest object.
	*/
	function copyTo(dest:Dynamic):Dynamic;
	
	/**
	* Returns the framing rectangle of the ellipse as a Phaser.Rectangle object.
	* 
	* @return The bounds of the Ellipse.
	*/
	function getBounds():phaser.Rectangle;
	
	/**
	* Returns a uniformly distributed random point from anywhere within this Ellipse.
	* 
	* @param out A Phaser.Point, or any object with public x/y properties, that the values will be set in.If no object is provided a new Phaser.Point object will be created. In high performance areas avoid this by re-using an existing object.
	* @return An object containing the random point in its `x` and `y` properties.
	*/
	function random(?out:phaser.Point):phaser.Point;
	
	/**
	* Sets the members of the Ellipse to the specified values.
	* 
	* @param x The X coordinate of the upper-left corner of the framing rectangle of this ellipse.
	* @param y The Y coordinate of the upper-left corner of the framing rectangle of this ellipse.
	* @param width The overall width of this ellipse.
	* @param height The overall height of this ellipse.
	* @return This Ellipse object.
	*/
	function setTo(x:Float, y:Float, width:Float, height:Float):phaser.Ellipse;
	
	/**
	* Returns a string representation of this object.
	* 
	* @return A string representation of the instance.
	*/
	function toString():String;
	
}

