package phaser.physics.ninja;

@:native("Phaser.Physics.Ninja")
extern class World {
	function new (game:phaser.core.Game);
	var game:phaser.core.Game;
	var time:phaser.time.Time;
	var gravity:Float;
	var bounds:phaser.geom.Rectangle;
	var maxObjects:Float;
	var maxLevels:Float;
	var quadTree:phaser.math.QuadTree;
	@:overload(function (object:Dynamic, ?children:Bool = true):Void {})
	@:overload(function (object:Dynamic, ?children:Bool = true):Void {})
	function enableAABB (object:phaser.core.Group, ?children:Bool = true):Void;
	@:overload(function (object:Dynamic, radius:Float, ?children:Bool = true):Void {})
	@:overload(function (object:Dynamic, radius:Float, ?children:Bool = true):Void {})
	function enableCircle (object:phaser.core.Group, radius:Float, ?children:Bool = true):Void;
	@:overload(function (object:Dynamic, ?id:Float = 1, ?children:Bool = true):Void {})
	@:overload(function (object:Dynamic, ?id:Float = 1, ?children:Bool = true):Void {})
	function enableTile (object:phaser.core.Group, ?id:Float = 1, ?children:Bool = true):Void;
	@:overload(function (object:Dynamic, ?type:Float = 1, ?id:Float = 1, ?radius:Float = 0, ?children:Bool = true):Void {})
	@:overload(function (object:Dynamic, ?type:Float = 1, ?id:Float = 1, ?radius:Float = 0, ?children:Bool = true):Void {})
	function enable (object:phaser.core.Group, ?type:Float = 1, ?id:Float = 1, ?radius:Float = 0, ?children:Bool = true):Void;
	function enableBody (object:Dynamic):Void;
	function setBounds (x:Float, y:Float, width:Float, height:Float):Void;
	function setBoundsToWorld ():Void;
	@:overload(function (map:phaser.tilemap.Tilemap, ?layer:Float):Void {})
	@:overload(function (map:phaser.tilemap.Tilemap, ?layer:String):Void {})
	function clearTilemapLayerBodies (map:phaser.tilemap.Tilemap, ?layer:phaser.tilemap.TilemapLayer):Void;
	@:overload(function (map:phaser.tilemap.Tilemap, ?layer:Float, ?slopeMap:Dynamic):Dynamic {})
	@:overload(function (map:phaser.tilemap.Tilemap, ?layer:String, ?slopeMap:Dynamic):Dynamic {})
	function convertTilemap (map:phaser.tilemap.Tilemap, ?layer:phaser.tilemap.TilemapLayer, ?slopeMap:Dynamic):Dynamic;
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
	function collideSpriteVsSprite ():Void;
	function collideSpriteVsGroup ():Void;
	function collideGroupVsSelf ():Void;
	function collideGroupVsGroup ():Void;
	function separate (body1:phaser.physics.ninja.Body, body2:phaser.physics.ninja.Body, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool;
}
