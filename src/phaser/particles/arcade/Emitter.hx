package phaser.particles.arcade;

@:native("Phaser.Particles.Arcade.Emitter")
extern class Emitter extends phaser.core.Group {
	var maxParticles:Float;
	var width:Float;
	var height:Float;
	var minParticleSpeed:phaser.geom.Point;
	var maxParticleSpeed:phaser.geom.Point;
	var minParticleScale:Float;
	var maxParticleScale:Float;
	var minRotation:Float;
	var maxRotation:Float;
	var gravity:Float;
	var particleClass:Dynamic;
	var particleDrag:phaser.geom.Point;
	var angularDrag:Float;
	var frequency:Bool;
	var lifespan:Float;
	var bounce:phaser.geom.Point;
	var _quantity:Float;
	var _timer:Float;
	var _counter:Float;
	var _explode:Bool;
	var _frames:Dynamic;
	var on:Bool;
	var emitX:Bool;
	var emitY:Bool;
	@:overload(function (keys:Dynamic, frames:Dynamic, quantity:Float, ?collide:Bool = false, ?collideWorldBounds:Bool = false):phaser.particles.arcade.Emitter {})
	@:overload(function (keys:String, frames:Dynamic, quantity:Float, ?collide:Bool = false, ?collideWorldBounds:Bool = false):phaser.particles.arcade.Emitter {})
	@:overload(function (keys:Dynamic, frames:Float, quantity:Float, ?collide:Bool = false, ?collideWorldBounds:Bool = false):phaser.particles.arcade.Emitter {})
	function makeParticles (keys:String, frames:Float, quantity:Float, ?collide:Bool = false, ?collideWorldBounds:Bool = false):phaser.particles.arcade.Emitter;
	function kill ():Void;
	function revive ():Void;
	function start (?explode:Bool = true, ?lifespan:Float = 0, ?frequency:Float = 250, ?quantity:Float = 0):Void;
	function emitParticle ():Void;
	function setSize (width:Float, height:Float):Void;
	function setXSpeed (?min:Float = 0, ?max:Float = 0):Void;
	function setYSpeed (?min:Float = 0, ?max:Float = 0):Void;
	function setRotation (?min:Float = 0, ?max:Float = 0):Void;
	@:overload(function (object:Dynamic):Void {})
	function at (object:phaser.gameobjects.Sprite):Void;
	var left(default, null):Float;
	var right(default, null):Float;
	var top(default, null):Float;
	var bottom(default, null):Float;
}
