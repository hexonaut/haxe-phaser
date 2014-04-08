package phaser.physics.ninja;

@:native("Phaser.Physics.Ninja.Tile")
extern class Tile {
	function new (body:phaser.physics.ninja.Body, x:Float, y:Float, width:Float, height:Float, ?type:Float = 1);
	var body:phaser.physics.ninja.Body;
	var system:phaser.physics.ninja.World;
	var id(default, null):Float;
	var type(default, null):Float;
	var pos:phaser.geom.Point;
	var oldpos:phaser.geom.Point;
	var xw(default, null):Float;
	var yw(default, null):Float;
	var width(default, null):Float;
	var height(default, null):Float;
	var velocity:phaser.geom.Point;
	var signx:Float;
	var signy:Float;
	var sx:Float;
	var sy:Float;
	function integrate ():Void;
	function collideWorldBounds ():Void;
	function reportCollisionVsWorld (px:Float, py:Float, dx:Float, dy:Float, obj:Float):Void;
	function setType (id:Float):Void;
	function clear ():Void;
	function destroy ():Void;
	function updateType ():Void;
	var x:Float;
	var y:Float;
	var bottom(default, null):Float;
	var right(default, null):Float;
}
