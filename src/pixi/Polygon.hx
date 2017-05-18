package pixi;

import haxe.extern.Rest;

@:native("PIXI.Polygon")
extern class Polygon implements HitArea {

	@:overload(function(points:Array<Float>):Dynamic{})
	@:overload(function(points:Rest<Point>):Dynamic{})
	@:overload(function(points:Rest<Float>):Dynamic{})
	function new(points:Array<Point>);
	
	var points:Array<Dynamic>;
	
	function clone():Polygon;
	
	function contains(x:Float, y:Float):Bool;
	
}

