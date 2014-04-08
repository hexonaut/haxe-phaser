package phaser.physics;

@:native("Phaser.Physics")
extern class Physics {
	function new (game:phaser.core.Game, ?physicsConfig:Dynamic);
	var game:phaser.core.Game;
	var config:Dynamic;
	var arcade:phaser.physics.arcade.World;
	var p2:phaser.physics.p2.World;
	var ninja:phaser.physics.ninja.World;
	var box2d:Dynamic;
	var chipmunk:Dynamic;
	static var ARCADE:Float;
	static var P2JS:Float;
	static var NINJA:Float;
	static var BOX2D:Float;
	static var CHIPMUNK:Float;
	function parseConfig ():Void;
	function startSystem (The:Float):Void;
	function enable (object:Dynamic, ?system:Float, ?debug:Bool = false):Void;
	function preUpdate ():Void;
	function update ():Void;
	function setBoundsToWorld ():Void;
	function clear ():Void;
	function destroy ():Void;
}
