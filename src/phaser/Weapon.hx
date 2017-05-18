package phaser;

import haxe.extern.EitherType;

@:native("Phaser.Weapon")
extern class Weapon extends phaser.Plugin {

	function new(game:phaser.Game, parent:phaser.PluginManager);
	
	static var KILL_NEVER:Float;
	
	static var KILL_LIFESPAN:Float;
	
	static var KILL_DISTANCE:Float;
	
	static var KILL_WEAPON_BOUNDS:Float;
	
	static var KILL_CAMERA_BOUNDS:Float;
	
	static var KILL_WORLD_BOUNDS:Float;
	
	static var KILL_STATIC_BOUNDS:Float;
	
	var autoExpandBulletsGroup:Bool;
	
	var autofire:Bool;
	
	var bounds:phaser.Rectangle;
	
	var bulletAngleOffset:Float;
	
	var bulletAngleVariance:Float;
	
	var bulletAnimation:String;
	
	var bulletClass:Dynamic;
	
	var bulletCollideWorldBounds:Bool;
	
	var bulletFrame:String;
	
	var bulletFrameCycle:Bool;
	
	var bulletFrameRandom:Bool;
	
	var bulletFrames:Array<Dynamic>;
	
	var bulletGravity:phaser.Point;
	
	var bulletInheritSpriteSpeed:Bool;
	
	var bulletKey:String;
	
	var bulletKillDistance:Float;
	
	var bulletKillType:Float;
	
	var bulletLifespan:Float;
	
	var bulletRotateToVelocity:Bool;
	
	var bullets:phaser.Group;
	
	var bulletSpeed:Float;
	
	var bulletSpeedVariance:Float;
	
	var bulletWorldWrap:Bool;
	
	var bulletWorldWrapPadding:Float;
	
	var fireAngle:Float;
	
	var fireFrom:phaser.Rectangle;
	
	var fireLimit:Float;
	
	var fireRate:Float;
	
	var fireRateVariance:Float;
	
	var multiFire:Bool;
	
	var onFire:phaser.Signal;
	
	var onFireLimit:phaser.Signal;
	
	var onKill:phaser.Signal;
	
	var shots:Float;
	
	var trackedPointer:phaser.Pointer;
	
	var trackedSprite:Dynamic;
	
	var trackOffset:phaser.Point;
	
	var trackRotation:Bool;
	
	var x:Float;
	
	var y:Float;
	
	function addBulletAnimation(name:String, ?frames:EitherType<Array<Float>, Array<String>>, ?frameRate:Float, ?loop:Bool, ?useNumericIndex:Bool):phaser.Weapon;
	
	function createBullets(?quantity:Float, ?key:Dynamic, ?frame:Dynamic, ?group:phaser.Group):phaser.Weapon;
	
	function debug(?x:Float, ?y:Float, ?debugBodies:Bool):Void;
	
	@:native("destroy")
	function Weapon_destroy():Void;
	
	function fire(?from:Dynamic, ?x:Float, ?y:Float, ?offsetX:Float, ?offsetY:Float):phaser.Bullet;
	
	function fireAtPointer(pointer:phaser.Pointer):phaser.Bullet;
	
	function fireAtSprite(sprite:phaser.Sprite):phaser.Bullet;
	
	function fireAtXY(x:Float, y:Float):phaser.Bullet;
	
	function fireMany(positions:Array<Dynamic>, ?from:Dynamic):Array<phaser.Bullet>;
	
	function fireOffset(?offsetX:Float, ?offsetY:Float):phaser.Bullet;
	
	function forEach(callback:Dynamic, callbackContext:Dynamic):phaser.Weapon;
	
	function killAll():phaser.Weapon;
	
	function pauseAll():phaser.Weapon;
	
	function resetShots(?newLimit:Float):phaser.Weapon;
	
	function resumeAll():phaser.Weapon;
	
	function setBulletBodyOffset(width:Float, height:Float, ?offsetX:Float, ?offsetY:Float):phaser.Weapon;
	
	function setBulletFrames(min:Float, max:Float, ?cycle:Bool, ?random:Bool):phaser.Weapon;
	
	function trackPointer(pointer:phaser.Pointer, ?offsetX:Float, ?offsetY:Float):phaser.Weapon;
	
	function trackSprite(sprite:phaser.Sprite, ?offsetX:Float, ?offsetY:Float, ?trackRotation:Bool):phaser.Weapon;
	
}

