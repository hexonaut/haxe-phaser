package phaser.geom;

@:native("Phaser.Line")
extern class Line {
	
	/**
	 * Creates a new Line object with a start and an end point.
	 */
	function new (?x1:Float = 0, ?y1:Float = 0, ?x2:Float = 0, ?y2:Float = 0);
	
	/**
	 * The start point of the line.
	 */
	var start:phaser.geom.Point;
	
	/**
	 * The end point of the line.
	 */
	var end:phaser.geom.Point;
	
	/**
	 * Sets the components of the Line to the specified values.
	 */
	function setTo (?x1:Float = 0, ?y1:Float = 0, ?x2:Float = 0, ?y2:Float = 0):phaser.geom.Line;
	
	/**
	 * Sets the line to match the x/y coordinates of the two given sprites.
	 * Can optionally be calculated from their center coordinates.
	 */
	function fromSprite (startSprite:phaser.gameobjects.Sprite, endSprite:phaser.gameobjects.Sprite, ?useCenter:Bool = false):phaser.geom.Line;
	
	/**
	 * Checks for intersection between this line and another Line.
	 * If asSegment is true it will check for segment intersection. If asSegment is false it will check for line intersection.
	 * Returns the intersection segment of AB and EF as a Point, or null if there is no intersection.
	 */
	function intersects (line:phaser.geom.Line, ?asSegment:Bool = true, ?result:phaser.geom.Point):phaser.geom.Point;
	
	/**
	 * Tests if the given coordinates fall on this line. See pointOnSegment to test against just the line segment.
	 */
	function pointOnLine (x:Float, y:Float):Bool;
	
	/**
	 * Tests if the given coordinates fall on this line and within the segment. See pointOnLine to test against just the line.
	 */
	function pointOnSegment (x:Float, y:Float):Bool;
	
	/**
	 * Using Bresenham's line algorithm this will return an array of all coordinates on this line.
	 * The start and end points are rounded before this runs as the algorithm works on integers.
	 */
	function coordinatesOnLine (?stepRate:Float = 1, ?results:Array<Dynamic>):Array<Dynamic>;
	
	/**
	 * Returns a new Line object with the same values for the start and end properties as this Line object.
	 */
	function clone (output:phaser.geom.Line):phaser.geom.Line;
	
	/**
	 * @name Phaser.Line#length
	 */
	var length(default, null):Float;
	
	/**
	 * @name Phaser.Line#angle
	 */
	var angle(default, null):Float;
	
	/**
	 * @name Phaser.Line#slope
	 */
	var slope(default, null):Float;
	
	/**
	 * @name Phaser.Line#perpSlope
	 */
	var perpSlope(default, null):Float;
	
	/**
	 * @name Phaser.Line#x
	 */
	var x(default, null):Float;
	
	/**
	 * @name Phaser.Line#y
	 */
	var y(default, null):Float;
	
	/**
	 * @name Phaser.Line#left
	 */
	var left(default, null):Float;
	
	/**
	 * @name Phaser.Line#right
	 */
	var right(default, null):Float;
	
	/**
	 * @name Phaser.Line#top
	 */
	var top(default, null):Float;
	
	/**
	 * @name Phaser.Line#bottom
	 */
	var bottom(default, null):Float;
	
	/**
	 * @name Phaser.Line#width
	 */
	var width(default, null):Float;
	
	/**
	 * @name Phaser.Line#height
	 */
	var height(default, null):Float;
	
	/**
	 * Checks for intersection between two lines as defined by the given start and end points.
	 * If asSegment is true it will check for line segment intersection. If asSegment is false it will check for line intersection.
	 * Returns the intersection segment of AB and EF as a Point, or null if there is no intersection.
	 * Adapted from code by Keith Hair
	 */
	function intersectsPoints (a:phaser.geom.Point, b:phaser.geom.Point, e:phaser.geom.Point, f:phaser.geom.Point, ?asSegment:Bool = true, ?result:phaser.geom.Point):phaser.geom.Point;
	
}
