package phaser;

/**
* Creates a new Line object with a start and an end point.
*/
@:native("Phaser.Line")
extern class Line {

	/**
	* Creates a new Line object with a start and an end point.
	* 
	* @param x1 The x coordinate of the start of the line.
	* @param y1 The y coordinate of the start of the line.
	* @param x2 The x coordinate of the end of the line.
	* @param y2 The y coordinate of the end of the line.
	*/
	function new(?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float);
	
	/**
	* Gets the angle of the line in radians.
	*/
	var angle:Float;
	
	/**
	* The end point of the line.
	*/
	var end:phaser.Point;
	
	/**
	* Gets the height of this bounds of this line.
	*/
	var height:Float;
	
	/**
	* Gets the left-most point of this line.
	*/
	var left:Float;
	
	/**
	* Gets the length of the line segment.
	*/
	var length:Float;
	
	/**
	* Gets the angle in radians of the normal of this line (line.angle - 90 degrees.)
	*/
	var normalAngle:Float;
	
	/**
	* Gets the x component of the left-hand normal of this line.
	*/
	var normalX:Float;
	
	/**
	* Gets the y component of the left-hand normal of this line.
	*/
	var normalY:Float;
	
	/**
	* Gets the perpendicular slope of the line (x/y).
	*/
	var perpSlope:Float;
	
	/**
	* Gets the right-most point of this line.
	*/
	var right:Float;
	
	/**
	* Gets the slope of the line (y/x).
	*/
	var slope:Float;
	
	/**
	* The start point of the line.
	*/
	var start:phaser.Point;
	
	/**
	* Gets the top-most point of this line.
	*/
	var top:Float;
	
	/**
	* The const type of this object.
	*/
	var type:Float;
	
	/**
	* Gets the width of this bounds of this line.
	*/
	var width:Float;
	
	/**
	* Gets the x coordinate of the top left of the bounds around this line.
	*/
	var x:Float;
	
	/**
	* Gets the y coordinate of the top left of the bounds around this line.
	*/
	var y:Float;
	
	/**
	* Checks for intersection between two lines as defined by the given start and end points.
	* If asSegment is true it will check for line segment intersection. If asSegment is false it will check for line intersection.
	* Returns the intersection segment of AB and EF as a Point, or null if there is no intersection.
	* Adapted from code by Keith Hair
	* 
	* @param a The start of the first Line to be checked.
	* @param b The end of the first line to be checked.
	* @param e The start of the second Line to be checked.
	* @param f The end of the second line to be checked.
	* @param asSegment If true it will check for segment intersection, otherwise full line intersection. - Default: true
	* @param result A Point object to store the result in, if not given a new one will be created.
	* @return The intersection segment of the two lines as a Point, or null if there is no intersection.
	*/
	static function intersectsPoints(a:phaser.Point, b:phaser.Point, e:phaser.Point, f:phaser.Point, ?asSegment:Bool, ?result:phaser.Point):phaser.Point;
	
	/**
	* Checks for intersection between this line and another Line.
	* If asSegment is true it will check for segment intersection. If asSegment is false it will check for line intersection.
	* Returns the intersection segment of AB and EF as a Point, or null if there is no intersection.
	* 
	* @param line The line to check against this one.
	* @param asSegment If true it will check for segment intersection, otherwise full line intersection. - Default: true
	* @param result A Point object to store the result in, if not given a new one will be created.
	* @return The intersection segment of the two lines as a Point, or null if there is no intersection.
	*/
	function intersects(line:phaser.Line, ?asSegment:Bool, ?result:phaser.Point):phaser.Point;
	
	/**
	* Checks for intersection between the Line and a Rectangle shape, or a rectangle-like
	* object, with public `x`, `y`, `right` and `bottom` properties, such as a Sprite or Body.
	* 
	* An intersection is considered valid if:
	* 
	* The line starts within or ends within the rectangle; or
	* The line segment intersects one of the 4 rectangle edges; and
	* The line has a non-zero length; and
	* The rectangle is not empty.
	* 
	* For the purposes of this function rectangles are considered 'solid'.
	* 
	* @param line The line to check for intersection with.
	* @param rect The rectangle, or rectangle-like object, to check for intersection with.
	* @return True if the line intersects with the rectangle edges, or starts or ends within the rectangle.
	*/
	static function intersectsRectangle(line:phaser.Line, rect:phaser.Rectangle):Bool;
	
	/**
	* Returns the reflected angle between two lines.
	* This is the outgoing angle based on the angle of this line and the normalAngle of the given line.
	* 
	* @param line The line to reflect off this line.
	* @return The reflected angle in radians.
	*/
	function reflect(line:phaser.Line):Float;
	
	/**
	* Centers this Line on the given coordinates.
	* 
	* The line is centered by positioning the start and end points so that the lines midpoint matches
	* the coordinates given.
	* 
	* @param x The x position to center the line on.
	* @param y The y position to center the line on.
	* @return This line object
	*/
	function centerOn(x:Float, y:Float):phaser.Line;
	
	/**
	* Returns a new Line object with the same values for the start and end properties as this Line object.
	* 
	* @param output Optional Line object. If given the values will be set into the object, otherwise a brand new Line object will be created and returned.
	* @return The cloned Line object.
	*/
	function clone(output:phaser.Line):phaser.Line;
	
	/**
	* Using Bresenham's line algorithm this will return an array of all coordinates on this line.
	* The start and end points are rounded before this runs as the algorithm works on integers.
	* 
	* @param stepRate How many steps will we return? 1 = every coordinate on the line, 2 = every other coordinate, etc. - Default: 1
	* @param results The array to store the results in. If not provided a new one will be generated.
	* @return An array of coordinates.
	*/
	function coordinatesOnLine(stepRate:Float, results:Array<Dynamic>):Array<Dynamic>;
	
	/**
	* Sets this line to start at the given `x` and `y` coordinates and for the segment to extend at `angle` for the given `length`.
	* 
	* @param x The x coordinate of the start of the line.
	* @param y The y coordinate of the start of the line.
	* @param angle The angle of the line in radians.
	* @param length The length of the line in pixels.
	* @return This line object
	*/
	function fromAngle(x:Float, y:Float, angle:Float, length:Float):phaser.Line;
	
	/**
	* Sets the line to match the x/y coordinates of the two given sprites.
	* Can optionally be calculated from their center coordinates.
	* 
	* @param startSprite The coordinates of this Sprite will be set to the Line.start point.
	* @param endSprite The coordinates of this Sprite will be set to the Line.start point.
	* @param useCenter If true it will use startSprite.centerX, if false startSprite.x.
	* @return This line object
	*/
	function fromSprite(startSprite:phaser.Sprite, endSprite:phaser.Sprite, ?useCenter:Bool):phaser.Line;
	
	/**
	* Returns a Point object where the x and y values correspond to the center (or midpoint) of the Line segment.
	* 
	* @param out A Phaser.Point object into which the result will be populated. If not given a new Point object is created.
	* @return A Phaser.Point object with the x and y values set to the center of the line segment.
	*/
	function midPoint(?out:phaser.Point):phaser.Point;
	
	/**
	* Tests if the given coordinates fall on this line. See pointOnSegment to test against just the line segment.
	* 
	* @param x The line to check against this one.
	* @param y The line to check against this one.
	* @return True if the point is on the line, false if not.
	*/
	function pointOnLine(x:Float, y:Float):Bool;
	
	/**
	* Tests if the given coordinates fall on this line and within the segment. See pointOnLine to test against just the line.
	* 
	* @param x The line to check against this one.
	* @param y The line to check against this one.
	* @return True if the point is on the line and segment, false if not.
	*/
	function pointOnSegment(x:Float, y:Float):Bool;
	
	/**
	* Picks a random point from anywhere on the Line segment and returns it.
	* 
	* @param out A Phaser.Point, or any object with public x/y properties, that the values will be set in.If no object is provided a new Phaser.Point object will be created. In high performance areas avoid this by re-using an object.
	* @return An object containing the random point in its `x` and `y` properties.
	*/
	function random(?out:phaser.Point):phaser.Point;
	
	/**
	* Rotates the line by the amount specified in `angle`.
	* 
	* Rotation takes place from the center of the line.
	* If you wish to rotate around a different point see Line.rotateAround.
	* 
	* If you wish to rotate the ends of the Line then see Line.start.rotate or Line.end.rotate.
	* 
	* @param angle The angle in radians (unless asDegrees is true) to rotate the line by.
	* @param asDegrees Is the given angle in radians (false) or degrees (true)?
	* @return This line object
	*/
	function rotate(angle:Float, ?asDegrees:Bool):phaser.Line;
	
	/**
	* Rotates the line by the amount specified in `angle`.
	* 
	* Rotation takes place around the coordinates given.
	* 
	* @param x The x coordinate to offset the rotation from.
	* @param y The y coordinate to offset the rotation from.
	* @param angle The angle in radians (unless asDegrees is true) to rotate the line by.
	* @param asDegrees Is the given angle in radians (false) or degrees (true)?
	* @return This line object
	*/
	function rotateAround(x:Float, y:Float, angle:Float, ?asDegrees:Bool):phaser.Line;
	
	/**
	* Sets the components of the Line to the specified values.
	* 
	* @param x1 The x coordinate of the start of the line.
	* @param y1 The y coordinate of the start of the line.
	* @param x2 The x coordinate of the end of the line.
	* @param y2 The y coordinate of the end of the line.
	* @return This line object
	*/
	function setTo(?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float):phaser.Line;
	
	/**
	* Checks for intersection between this line and another Line.
	* If asSegment is true it will check for segment intersection. If asSegment is false it will check for line intersection.
	* Returns the intersection segment of AB and EF as a Point, or null if there is no intersection.
	* 
	* @param line The line to check against this one.
	* @param asSegment If true it will check for segment intersection, otherwise full line intersection. - Default: true
	* @param result A Point object to store the result in, if not given a new one will be created.
	* @return The intersection segment of the two lines as a Point, or null if there is no intersection.
	*/
	@:native("intersects")
	static function STATIC_intersects(a:phaser.Line, b:phaser.Line, ?asSegment:Bool, ?result:phaser.Point):phaser.Point;
	
	/**
	* Returns the reflected angle between two lines.
	* This is the outgoing angle based on the angle of this line and the normalAngle of the given line.
	* 
	* @param line The line to reflect off this line.
	* @return The reflected angle in radians.
	*/
	@:native("reflect")
	static function STATIC_reflect(a:phaser.Line, b:phaser.Line):Float;
	
}

