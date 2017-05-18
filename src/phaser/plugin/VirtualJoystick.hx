package phaser.plugin;

/**
* A Virtual Joystick
*/
@:native("Phaser.Plugin.VirtualJoystick")
extern class VirtualJoystick extends phaser.Plugin {

	/**
	* A Virtual Joystick
	*/
	function new(game:phaser.Game, parent:Dynamic);
	
	var angle:Float;
	
	var base:phaser.Sprite;
	
	var baseBMD:phaser.BitmapData;
	
	var baseCircle:phaser.Circle;
	
	var deltaX:Float;
	
	var deltaY:Float;
	
	var distance:Float;
	
	var force:Float;
	
	var isDragging:Bool;
	
	var limit:Float;
	
	var limitPoint:phaser.Point;
	
	var location:phaser.Point;
	
	var nub:phaser.Sprite;
	
	var nubBMD:phaser.BitmapData;
	
	var speed:Float;
	
	var x:Float;
	
	var y:Float;
	
	function init(x:Float, y:Float, ?diameter:Float, ?limit:Float):Void;
	
	function move(pointer:phaser.Pointer, x:Float, y:Float):Void;
	
	@:native("render")
	function VirtualJoystick_render():Void;
	
	/**
	* Given the speed calculate the velocity and return it as a Point object, or set it to the given point object.
	* One way to use this is: velocityFromAngle(angle, 200, sprite.velocity) which will set the values directly to the sprites velocity and not create a new Point object.
	* 
	* @param sprite The Sprite to set the velocity on. The Sprite must have a physics body already set. The value will be set into Sprite.body.velocity.
	* @param minSpeed The minimum speed the Sprite will move if the joystick is at its default (non-moved) position.
	* @param maxSpeed The maximum speed the Sprite will move if the joystick is at its full extent. - Default: 100
	* @return The Sprite object.
	*/
	function setVelocity(sprite:phaser.Sprite, ?minSpeed:Float, ?maxSpeed:Float):phaser.Sprite;
	
	function startDrag():Void;
	
	function stopDrag(nub:phaser.Sprite, pointer:phaser.Pointer):Void;
	
	@:native("update")
	function VirtualJoystick_update():Void;
	
}

