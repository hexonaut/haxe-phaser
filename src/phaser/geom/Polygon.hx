package phaser.geom;

@:native("Phaser.Polygon")
extern class Polygon {
	
	/**
	 * Creates a new Polygon.
	 * 
	 * The points can be set from a variety of formats:
	 * 
	 * <ul>
	 * <li>An array of Point objects: [new Phaser.Point(x1, y1), ...]</li>
	 * <li>An array of objects with public x/y properties: [obj1, obj2, ...]</li>
	 * <li>An array of paired numbers that represent point coordinates: [x1,y1, x2,y2, ...]</li>
	 * <li>As separate Point arguments: setTo(new Phaser.Point(x1, y1), ...)</li>
	 * <li>As separate objects with public x/y properties arguments: setTo(obj1, obj2, ...)</li>
	 * <li>As separate arguments representing point coordinates: setTo(x1,y1, x2,y2, ...)</li>
	 * </ul>
	 */
	@:overload(function (?points0:Dynamic, ?points1:Dynamic, ?points2:Dynamic, ?points3:Dynamic, ?points4:Dynamic):Void {})
	@:overload(function (?points0:Dynamic, ?points1:Dynamic, ?points2:Dynamic, ?points3:Dynamic, ?points4:Dynamic):Void {})
	@:overload(function (?points0:phaser.geom.Point, ?points1:phaser.geom.Point, ?points2:phaser.geom.Point, ?points3:phaser.geom.Point, ?points4:phaser.geom.Point):Void {})
	function new (?points0:Float, ?points1:Float, ?points2:Float, ?points3:Float, ?points4:Float);
	
	/**
	 * The base object type.
	 */
	var type:Float;
	
	/**
	 * The area of this Polygon.
	 */
	var area:Float;
	
	/**
	 * An array of Points that make up this Polygon.
	 */
	var _points:Array<Dynamic>;
	
	/**
	 * Is the Polygon closed or not?
	 */
	var closed:Bool;
	
	/**
	 * Creates a copy of the given Polygon.
	 * This is a deep clone, the resulting copy contains new Phaser.Point objects
	 */
	function clone (output:phaser.geom.Polygon):phaser.geom.Polygon;
	
	/**
	 * Checks whether the x and y coordinates are contained within this polygon.
	 */
	function contains (x:Float, y:Float):Bool;
	
	/**
	 * Sets this Polygon to the given points.
	 * 
	 * The points can be set from a variety of formats:
	 * 
	 * <ul>
	 * <li>An array of Point objects: [new Phaser.Point(x1, y1), ...]</li>
	 * <li>An array of objects with public x/y properties: [obj1, obj2, ...]</li>
	 * <li>An array of paired numbers that represent point coordinates: [x1,y1, x2,y2, ...]</li>
	 * <li>As separate Point arguments: setTo(new Phaser.Point(x1, y1), ...)</li>
	 * <li>As separate objects with public x/y properties arguments: setTo(obj1, obj2, ...)</li>
	 * <li>As separate arguments representing point coordinates: setTo(x1,y1, x2,y2, ...)</li>
	 * </ul>
	 * 
	 * setTo may also be called without any arguments to remove all points.
	 */
	@:overload(function (?points0:Dynamic, ?points1:Dynamic, ?points2:Dynamic, ?points3:Dynamic, ?points4:Dynamic):phaser.geom.Polygon {})
	@:overload(function (?points0:Dynamic, ?points1:Dynamic, ?points2:Dynamic, ?points3:Dynamic, ?points4:Dynamic):phaser.geom.Polygon {})
	@:overload(function (?points0:phaser.geom.Point, ?points1:phaser.geom.Point, ?points2:phaser.geom.Point, ?points3:phaser.geom.Point, ?points4:phaser.geom.Point):phaser.geom.Polygon {})
	function setTo (?points0:Float, ?points1:Float, ?points2:Float, ?points3:Float, ?points4:Float):phaser.geom.Polygon;
	
	/**
	 * Calcuates the area of the Polygon. This is available in the property Polygon.area
	 */
	function calculateArea (y0:Float):Float;
	
	/**
	 * Sets and modifies the points of this polygon.
	 * 
	 * See {@link Phaser.Polygon#setTo setTo} for the different kinds of arrays formats that can be assigned.
	 */
	var points:Dynamic;
	
	/**
	 * Sets and modifies the points of this polygon.
	 */
	var points:Dynamic;
	
}
