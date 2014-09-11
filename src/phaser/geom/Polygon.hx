package phaser.geom;

@:native("Phaser.Polygon")
extern class Polygon {
	
	/**
	 * Creates a new Polygon. You have to provide a list of points.
	 * This can be an array of Points that form the polygon, a flat array of numbers that will be interpreted as [x,y, x,y, ...],
	 * or the arguments passed can be all the points of the polygon e.g. new Phaser.Polygon(new Phaser.Point(), new Phaser.Point(), ...), or the
	 * arguments passed can be flat x,y values e.g. new Phaser.Polygon(x,y, x,y, x,y, ...) where x and y are numbers.
	 */
	@:overload(function (points:Dynamic):Void {})
	function new (points:Dynamic);
	
	/**
	 * The base object type.
	 */
	var type:Float;
	
	/**
	 * Creates a copy of the given Polygon.
	 * This is a deep clone, the resulting copy contains new Phaser.Point objects
	 */
	function clone (?output:phaser.geom.Polygon):phaser.geom.Polygon;
	
	/**
	 * Checks whether the x and y coordinates are contained within this polygon.
	 */
	function contains (x:Float, y:Float):Bool;
	
	/**
	 * Sets and modifies the points of this polygon.
	 */
	var points:Dynamic;
	
	/**
	 * Sets and modifies the points of this polygon.
	 */
	var points:Dynamic;
	
}
