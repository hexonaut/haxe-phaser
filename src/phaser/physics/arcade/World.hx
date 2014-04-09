package phaser.physics.arcade;

@:native("Phaser.Physics.Arcade")
extern class World {
	function new (game:phaser.core.Game);
	var game:phaser.core.Game;
	var gravity:phaser.geom.Point;
	var bounds:phaser.geom.Rectangle;
	var checkCollision:Dynamic;
	var maxObjects:Float;
	var maxLevels:Float;
	var OVERLAP_BIAS:Float;
	var TILE_BIAS:Float;
	var forceX:Bool;
	var quadTree:phaser.math.QuadTree;
	var _overlap:Float;
	var _maxOverlap:Float;
	var _velocity1:Float;
	var _velocity2:Float;
	var _newVelocity1:Float;
	var _newVelocity2:Float;
	var _average:Float;
	var _mapData:Array<Dynamic>;
	var _result:Bool;
	var _total:Float;
	var _angle:Float;
	var _dx:Float;
	var _dy:Float;
	function setBounds (x:Float, y:Float, width:Float, height:Float):Void;
	function setBoundsToWorld ():Void;
	@:overload(function (object:Dynamic, ?children:Bool = true):Void {})
	@:overload(function (object:Dynamic, ?children:Bool = true):Void {})
	function enable (object:phaser.core.Group, ?children:Bool = true):Void;
	function enableBody (object:Dynamic):Void;
	function updateMotion (The:phaser.physics.arcade.Body):Void;
	function computeVelocity (axis:Float, body:phaser.physics.arcade.Body, velocity:Float, acceleration:Float, drag:Float, ?max:Float = 10000):Float;
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:phaser.gameobjects.Sprite, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:phaser.gameobjects.Sprite, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Dynamic, object2:phaser.gameobjects.Sprite, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:phaser.core.Group, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:phaser.core.Group, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Dynamic, object2:phaser.core.Group, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:Dynamic, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:Dynamic, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Dynamic, object2:Dynamic, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:Dynamic, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:Dynamic, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	function overlap (object1:Dynamic, object2:Dynamic, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool;
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:phaser.gameobjects.Sprite, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:phaser.gameobjects.Sprite, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Dynamic, object2:phaser.gameobjects.Sprite, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.tilemap.Tilemap, object2:phaser.gameobjects.Sprite, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:phaser.core.Group, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:phaser.core.Group, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Dynamic, object2:phaser.core.Group, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.tilemap.Tilemap, object2:phaser.core.Group, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:Dynamic, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:Dynamic, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Dynamic, object2:Dynamic, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.tilemap.Tilemap, object2:Dynamic, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:phaser.tilemap.Tilemap, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:phaser.tilemap.Tilemap, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Dynamic, object2:phaser.tilemap.Tilemap, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.tilemap.Tilemap, object2:phaser.tilemap.Tilemap, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:Dynamic, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:Dynamic, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Dynamic, object2:Dynamic, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	function collide (object1:phaser.tilemap.Tilemap, object2:Dynamic, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool;
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:phaser.gameobjects.Sprite, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:phaser.core.Group, object2:phaser.gameobjects.Sprite, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:Dynamic, object2:phaser.gameobjects.Sprite, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:phaser.tilemap.Tilemap, object2:phaser.gameobjects.Sprite, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:phaser.core.Group, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:phaser.core.Group, object2:phaser.core.Group, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:Dynamic, object2:phaser.core.Group, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:phaser.tilemap.Tilemap, object2:phaser.core.Group, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:Dynamic, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:phaser.core.Group, object2:Dynamic, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:Dynamic, object2:Dynamic, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:phaser.tilemap.Tilemap, object2:Dynamic, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:phaser.tilemap.Tilemap, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:phaser.core.Group, object2:phaser.tilemap.Tilemap, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:Dynamic, object2:phaser.tilemap.Tilemap, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	function collideHandler (object1:phaser.tilemap.Tilemap, object2:phaser.tilemap.Tilemap, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void;
	function collideSpriteVsSprite (sprite1:phaser.gameobjects.Sprite, sprite2:phaser.gameobjects.Sprite, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Bool;
	function collideSpriteVsGroup (sprite:phaser.gameobjects.Sprite, group:phaser.core.Group, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void;
	function collideGroupVsSelf (group:phaser.core.Group, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Bool;
	function collideGroupVsGroup (group1:phaser.core.Group, group2:phaser.core.Group, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void;
	function collideSpriteVsTilemapLayer (sprite:phaser.gameobjects.Sprite, tilemapLayer:phaser.tilemap.TilemapLayer, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void;
	function collideGroupVsTilemapLayer (group:phaser.core.Group, tilemapLayer:phaser.tilemap.TilemapLayer, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void;
	function separate (body1:phaser.physics.arcade.Body, body2:phaser.physics.arcade.Body, ?processCallback:Dynamic, ?callbackContext:Dynamic, overlapOnly:Bool):Bool;
	function intersects (body1:phaser.physics.arcade.Body, body2:phaser.physics.arcade.Body):Bool;
	function separateX (body1:phaser.physics.arcade.Body, body2:phaser.physics.arcade.Body, overlapOnly:Bool):Bool;
	function separateY (body1:phaser.physics.arcade.Body, body2:phaser.physics.arcade.Body, overlapOnly:Bool):Bool;
	function separateTile (body:phaser.physics.arcade.Body, tile:phaser.tilemap.Tile):Bool;
	function tileCheckX (body:phaser.physics.arcade.Body, tile:phaser.tilemap.Tile):Float;
	function tileCheckY (body:phaser.physics.arcade.Body, tile:phaser.tilemap.Tile):Float;
	function processTileSeparationX (body:phaser.physics.arcade.Body, x:Float):Bool;
	function processTileSeparationY (body:phaser.physics.arcade.Body, y:Float):Void;
	function moveToObject (displayObject:Dynamic, destination:Dynamic, ?speed:Float = 60, ?maxTime:Float = 0):Float;
	function moveToPointer (displayObject:Dynamic, ?speed:Float = 60, ?pointer:phaser.input.Pointer, ?maxTime:Float = 0):Float;
	function moveToXY (displayObject:Dynamic, x:Float, y:Float, ?speed:Float = 60, ?maxTime:Float = 0):Float;
	@:overload(function (angle:Float, ?speed:Float = 60, ?point:phaser.geom.Point):phaser.geom.Point {})
	function velocityFromAngle (angle:Float, ?speed:Float = 60, ?point:Dynamic):phaser.geom.Point;
	@:overload(function (rotation:Float, ?speed:Float = 60, ?point:phaser.geom.Point):phaser.geom.Point {})
	function velocityFromRotation (rotation:Float, ?speed:Float = 60, ?point:Dynamic):phaser.geom.Point;
	@:overload(function (rotation:Float, ?speed:Float = 60, ?point:phaser.geom.Point):phaser.geom.Point {})
	function accelerationFromRotation (rotation:Float, ?speed:Float = 60, ?point:Dynamic):phaser.geom.Point;
	function accelerateToObject (displayObject:Dynamic, destination:Dynamic, ?speed:Float = 60, ?xSpeedMax:Float = 500, ?ySpeedMax:Float = 500):Float;
	function accelerateToPointer (displayObject:Dynamic, ?pointer:phaser.input.Pointer, ?speed:Float = 60, ?xSpeedMax:Float = 500, ?ySpeedMax:Float = 500):Float;
	function accelerateToXY (displayObject:Dynamic, x:Float, y:Float, ?speed:Float = 60, ?xSpeedMax:Float = 500, ?ySpeedMax:Float = 500):Float;
	function distanceBetween (source:Dynamic, target:Dynamic):Float;
	function distanceToXY (displayObject:Dynamic, x:Float, y:Float):Float;
	function distanceToPointer (displayObject:Dynamic, ?pointer:phaser.input.Pointer):Float;
	function angleBetween (source:Dynamic, target:Dynamic):Float;
	function angleToXY (displayObject:Dynamic, x:Float, y:Float):Float;
	function angleToPointer (displayObject:Dynamic, ?pointer:phaser.input.Pointer):Float;
}
