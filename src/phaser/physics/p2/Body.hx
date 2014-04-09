package phaser.physics.p2;

@:native("Phaser.Physics.P2.Body")
extern class Body {
	function new (game:phaser.core.Game, ?sprite:phaser.gameobjects.Sprite, ?x:Float = 0, ?y:Float = 0, ?mass:Float = 1);
	var game:phaser.core.Game;
	var world:phaser.physics.p2.World;
	var sprite:phaser.gameobjects.Sprite;
	var type:Float;
	var offset:phaser.geom.Point;
	var data:Dynamic;
	var velocity:Dynamic;
	var force:Dynamic;
	var gravity:phaser.geom.Point;
	var onImpact:phaser.core.Signal;
	var onBeginContact:phaser.core.Signal;
	var onEndContact:phaser.core.Signal;
	var collidesWith:Dynamic;
	var removeNextStep:Bool;
	var _bodyCallbacks:Dynamic;
	var _bodyCallbackContext:Dynamic;
	var _groupCallbacks:Dynamic;
	var _groupCallbackContext:Dynamic;
	var debugBody:phaser.physics.p2.BodyDebug;
	@:overload(function (object:phaser.gameobjects.Sprite, callback:Dynamic, callbackContext:Dynamic):Void {})
	@:overload(function (object:phaser.gameobjects.TileSprite, callback:Dynamic, callbackContext:Dynamic):Void {})
	@:overload(function (object:phaser.physics.p2.Body, callback:Dynamic, callbackContext:Dynamic):Void {})
	function createBodyCallback (object:Dynamic, callback:Dynamic, callbackContext:Dynamic):Void;
	function createGroupCallback (group:Dynamic, callback:Dynamic, callbackContext:Dynamic):Void;
	function getCollisionMask ():Float;
	function updateCollisionMask (?shape:Dynamic):Void;
	function setCollisionGroup (group:Dynamic, ?shape:Dynamic):Void;
	function clearCollision (?clearGroup:Bool = true, ?clearMask:Bool = true, ?shape:Dynamic):Void;
	@:overload(function (group:Dynamic, ?callback:Dynamic, ?callbackContext:Dynamic, ?shape:Dynamic):Void {})
	function collides (group:Dynamic, ?callback:Dynamic, ?callbackContext:Dynamic, ?shape:Dynamic):Void;
	function adjustCenterOfMass ():Void;
	function applyDamping (dt:Float):Void;
	function applyForce (force:Float, worldX:Float, worldY:Float):Void;
	function setZeroForce ():Void;
	function setZeroRotation ():Void;
	function setZeroVelocity ():Void;
	function setZeroDamping ():Void;
	@:overload(function (out:Dynamic, worldPoint:Dynamic):Void {})
	@:overload(function (out:Array<Dynamic>, worldPoint:Dynamic):Void {})
	@:overload(function (out:Dynamic, worldPoint:Array<Dynamic>):Void {})
	function toLocalFrame (out:Array<Dynamic>, worldPoint:Array<Dynamic>):Void;
	function toWorldFrame (out:Array<Dynamic>, localPoint:Array<Dynamic>):Void;
	function rotateLeft (speed:Float):Void;
	function rotateRight (speed:Float):Void;
	function moveForward (speed:Float):Void;
	function moveBackward (speed:Float):Void;
	function thrust (speed:Float):Void;
	function rever (speed:Float):Void;
	function moveLeft (speed:Float):Void;
	function moveRight (speed:Float):Void;
	function moveUp (speed:Float):Void;
	function moveDown (speed:Float):Void;
	function preUpdate ():Void;
	function postUpdate ():Void;
	function reset (x:Float, y:Float, ?resetDamping:Bool = false, ?resetMass:Bool = false):Void;
	function addToWorld ():Void;
	function removeFromWorld ():Void;
	function destroy ():Void;
	function clearShapes ():Void;
	function addShape (shape:Dynamic, ?offsetX:Float = 0, ?offsetY:Float = 0, ?rotation:Float = 0):Dynamic;
	function addCircle (radius:Float, ?offsetX:Float = 0, ?offsetY:Float = 0, ?rotation:Float = 0):Dynamic;
	function addRectangle (width:Float, height:Float, ?offsetX:Float = 0, ?offsetY:Float = 0, ?rotation:Float = 0):Dynamic;
	function addPlane (?offsetX:Float = 0, ?offsetY:Float = 0, ?rotation:Float = 0):Dynamic;
	function addParticle (?offsetX:Float = 0, ?offsetY:Float = 0, ?rotation:Float = 0):Dynamic;
	function addLine (length:Float, ?offsetX:Float = 0, ?offsetY:Float = 0, ?rotation:Float = 0):Dynamic;
	function addCapsule (length:Float, radius:Float, ?offsetX:Float = 0, ?offsetY:Float = 0, ?rotation:Float = 0):Dynamic;
	@:overload(function (options:Dynamic, options:Bool, options:Bool, options:Bool, points:Dynamic):Bool {})
	@:overload(function (options:Dynamic, options:Bool, options:Bool, options:Float, points:Dynamic):Bool {})
	@:overload(function (options:Dynamic, options:Bool, options:Bool, options:Bool, points:Dynamic):Bool {})
	function addPolygon (options:Dynamic, options:Bool, options:Bool, options:Float, points:Dynamic):Bool;
	@:overload(function (shape:Dynamic):Bool {})
	@:overload(function (shape:Dynamic):Bool {})
	@:overload(function (shape:Dynamic):Bool {})
	@:overload(function (shape:Dynamic):Bool {})
	function removeShape (shape:Dynamic):Bool;
	function setCircle (radius:Float, ?offsetX:Float = 0, ?offsetY:Float = 0, ?rotation:Float = 0):Void;
	function setRectangle (?width:Float = 16, ?height:Float = 16, ?offsetX:Float = 0, ?offsetY:Float = 0, ?rotation:Float = 0):Dynamic;
	@:overload(function (?sprite:phaser.gameobjects.Sprite):Dynamic {})
	function setRectangleFromSprite (?sprite:phaser.gameobjects.Image):Dynamic;
	function setMaterial (material:Dynamic, ?shape:Dynamic):Void;
	function shapeChanged ():Void;
	function loadPhaserPolygon (key:String, object:String):Void;
	function addPolygonFixture (fixtureData:String):Void;
	@:overload(function (key:String, object:String, options:Dynamic, options:Bool, options:Bool, options:Bool):Bool {})
	function loadPolygon (key:String, object:String, options:Dynamic, options:Bool, options:Bool, options:Float):Bool;
	static var DYNAMIC:Dynamic;
	static var STATIC:Dynamic;
	static var KINEMATIC:Dynamic;
	var a0:Bool;
	var kinematic:Bool;
	var allowSleep:Bool;
	var angle:Float;
	var angularDamping:Float;
	var angularForce:Float;
	var angularVelocity:Float;
	var damping:Float;
	var fixedRotation:Bool;
	var inertia:Float;
	var mass:Float;
	var motionState:Float;
	var rotation:Float;
	var sleepSpeedLimit:Float;
	var x:Float;
	var y:Float;
	var id(default, null):Float;
	var debug:Bool;
	var collideWorldBounds:Bool;
}
