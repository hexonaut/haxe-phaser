package phaser;

import haxe.extern.EitherType;
import haxe.extern.Rest;

/**
* Creates a new Polygon.
* 
* The points can be set from a variety of formats:
* 
* - An array of Point objects: `[new Phaser.Point(x1, y1), ...]`
* - An array of objects with public x/y properties: `[obj1, obj2, ...]`
* - An array of paired numbers that represent point coordinates: `[x1,y1, x2,y2, ...]`
* - As separate Point arguments: `setTo(new Phaser.Point(x1, y1), ...)`
* - As separate objects with public x/y properties arguments: `setTo(obj1, obj2, ...)`
* - As separate arguments representing point coordinates: `setTo(x1,y1, x2,y2, ...)`
*/
@:native("Phaser.Polygon")
extern class Polygon {

	/**
	* Creates a new Polygon.
	* 
	* The points can be set from a variety of formats:
	* 
	* - An array of Point objects: `[new Phaser.Point(x1, y1), ...]`
	* - An array of objects with public x/y properties: `[obj1, obj2, ...]`
	* - An array of paired numbers that represent point coordinates: `[x1,y1, x2,y2, ...]`
	* - As separate Point arguments: `setTo(new Phaser.Point(x1, y1), ...)`
	* - As separate objects with public x/y properties arguments: `setTo(obj1, obj2, ...)`
	* - As separate arguments representing point coordinates: `setTo(x1,y1, x2,y2, ...)`
	* 
	* @param points The points to set.
	*/
	@:overload(function(points:Rest<phaser.Point>):Dynamic{})
	@:overload(function(points:Rest<Float>):Dynamic{})
	function new(points:EitherType<Array<phaser.Point>, Array<Float>>);
	
	/**
	* The area of this Polygon.
	*/
	var area:Float;
	
	/**
	* Has this Polygon been flattened by a call to `Polygon.flatten` ?
	*/
	var flattened:Bool;
	
	/**
	* Sets and modifies the points of this polygon.
	* 
	* See {@link Phaser.Polygon#setTo setTo} for the different kinds of arrays formats that can be assigned. The array of vertex points.
	*/
	var points:EitherType<Array<Float>, Array<phaser.Point>>;
	
	/**
	* The base object type.
	*/
	var type:Float;
	
	/**
	* Creates a copy of the given Polygon.
	* This is a deep clone, the resulting copy contains new Phaser.Point objects
	* 
	* @param output The polygon to update. If not specified a new polygon will be created. - Default: (new Polygon)
	* @return The cloned (`output`) polygon object.
	*/
	function clone(output:phaser.Polygon):phaser.Polygon;
	
	/**
	* Checks whether the x and y coordinates are contained within this polygon.
	* 
	* @param x The X value of the coordinate to test.
	* @param y The Y value of the coordinate to test.
	* @return True if the coordinates are within this polygon, otherwise false.
	*/
	function contains(x:Float, y:Float):Bool;
	
	/**
	* Flattens this Polygon so the points are a sequence of numbers.
	* Any Point objects found are removed and replaced with two numbers.
	* Also sets the Polygon.flattened property to `true`.
	* 
	* @return This Polygon object
	*/
	function flatten():phaser.Polygon;
	
	/**
	* Sets this Polygon to the given points.
	* 
	* The points can be set from a variety of formats:
	* 
	* - An array of Point objects: `[new Phaser.Point(x1, y1), ...]`
	* - An array of objects with public x/y properties: `[obj1, obj2, ...]`
	* - An array of paired numbers that represent point coordinates: `[x1,y1, x2,y2, ...]`
	* - An array of arrays with two elements representing x/y coordinates: `[[x1, y1], [x2, y2], ...]`
	* - As separate Point arguments: `setTo(new Phaser.Point(x1, y1), ...)`
	* - As separate objects with public x/y properties arguments: `setTo(obj1, obj2, ...)`
	* - As separate arguments representing point coordinates: `setTo(x1,y1, x2,y2, ...)`
	* 
	* `setTo` may also be called without any arguments to remove all points.
	* 
	* @param points The points to set.
	* @return This Polygon object
	*/
	@:overload(function(points:Rest<phaser.Point>):Void{})
	@:overload(function(points:Rest<Float>):Void{})
	function setTo(points:EitherType<Array<phaser.Point>, Array<Float>>):Void;
	
	/**
	* Export the points as an array of flat numbers, following the sequence [ x,y, x,y, x,y ]
	* 
	* @param output The array to append the points to. If not specified a new array will be created.
	* @return The flattened array.
	*/
	function toNumberArray(?output:Array<Float>):Array<Float>;
	
}

