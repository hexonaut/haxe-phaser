package phaser.math;

@:native("Phaser.QuadTree")
extern class QuadTree {
	function new (x:Float, y:Float, width:Float, height:Float, ?maxObjects:Float = 10, ?maxLevels:Float = 4, ?level:Float = 0);
	var maxObjects:Float;
	var maxLevels:Float;
	var level:Float;
	var bounds:Dynamic;
	var objects:Dynamic;
	var nodes:Dynamic;
	function reset (x:Float, y:Float, width:Float, height:Float, ?maxObjects:Float = 10, ?maxLevels:Float = 4, ?level:Float = 0):Void;
	function populate (group:phaser.core.Group):Void;
	@:overload(function (sprite:phaser.gameobjects.Sprite):Void {})
	function populateHandler (sprite:Dynamic):Void;
	function split ():Void;
	@:overload(function (body:phaser.physics.arcade.Body):Void {})
	function insert (body:Dynamic):Void;
	@:overload(function (rect:phaser.geom.Rectangle):Float {})
	function getIndex (rect:Dynamic):Float;
	function retrieve (sprite:phaser.gameobjects.Sprite):Dynamic;
	function clear ():Void;
}
