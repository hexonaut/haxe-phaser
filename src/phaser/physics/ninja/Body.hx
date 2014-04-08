package phaser.physics.ninja;

@:native("Phaser.Physics.Ninja.Body")
extern class Body {
	function new (system:phaser.physics.ninja.World, sprite:phaser.gameobjects.Sprite, ?type:Float = 1, ?id:Float = 1, ?radius:Float = 16, ?x:Float = 0, ?y:Float = 0, ?width:Float = 0, ?height:Float = 0);
	var sprite:phaser.gameobjects.Sprite;
	var game:phaser.core.Game;
	var type:Float;
	var system:phaser.physics.ninja.World;
	var aabb:phaser.physics.ninja.AABB;
	var tile:phaser.physics.ninja.Tile;
	var circle:phaser.physics.ninja.Circle;
	var shape:Dynamic;
	var drag:Float;
	var friction:Float;
	var gravityScale:Float;
	var bounce:Float;
	var velocity:phaser.geom.Point;
	var facing:Float;
	var immovable:Bool;
	var collideWorldBounds:Bool;
	var checkCollision:Dynamic;
	var touching:Dynamic;
	var wasTouching:Dynamic;
	var maxSpeed:Float;
	function preUpdate ():Void;
	function postUpdate ():Void;
	function setZeroVelocity ():Void;
	function moveTo (speed:Float, angle:Float):Void;
	function moveBackward (speed:Float, angle:Float):Void;
	function moveLeft (speed:Float):Void;
	function moveRight (speed:Float):Void;
	function moveUp (speed:Float):Void;
	function moveDown (speed:Float):Void;
	function reset ():Void;
	function deltaAbsX ():Float;
	function deltaAbsY ():Float;
	function deltaX ():Float;
	function deltaY ():Float;
	function destroy ():Void;
	var x:Float;
	var y:Float;
	var width(default, null):Float;
	var height(default, null):Float;
	var bottom(default, null):Float;
	var right(default, null):Float;
	var speed(default, null):Float;
	var angle(default, null):Float;
}
