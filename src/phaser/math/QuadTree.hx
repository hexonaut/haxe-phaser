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
	function populateHandler (sprite:phaser.gameobjects.Sprite):Void;
	function split ():Void;
	function insert (body:phaser.physics.arcade.Body):Void;
	function getIndex (rect:phaser.geom.Rectangle):Float;
	function retrieve (sprite:phaser.gameobjects.Sprite):Dynamic;
	function clear ():Void;
}
