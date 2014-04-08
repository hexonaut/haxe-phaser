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
	function enableAABB (object:Dynamic, ?children:Bool = true):Void;
	function enableCircle (object:Dynamic, radius:Float, ?children:Bool = true):Void;
	function enableTile (object:Dynamic, ?id:Float = 1, ?children:Bool = true):Void;
	function enable (object:Dynamic, ?type:Float = 1, ?id:Float = 1, ?radius:Float = 0, ?children:Bool = true):Void;
	function enableBody (object:Dynamic):Void;
	function setBounds (x:Float, y:Float, width:Float, height:Float):Void;
	function setBoundsToWorld ():Void;
	function clearTilemapLayerBodies (map:phaser.tilemap.Tilemap, ?layer:Float):Void;
	function convertTilemap (map:phaser.tilemap.Tilemap, ?layer:Float, ?slopeMap:Dynamic):Dynamic;
	function overlap (object1:phaser.gameobjects.Sprite, object2:phaser.gameobjects.Sprite, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool;
	function collide (object1:phaser.gameobjects.Sprite, object2:phaser.gameobjects.Sprite, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool;
	function collideHandler (object1:phaser.gameobjects.Sprite, object2:phaser.gameobjects.Sprite, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void;
	function collideSpriteVsSprite ():Void;
	function collideSpriteVsGroup ():Void;
	function collideGroupVsSelf ():Void;
	function collideGroupVsGroup ():Void;
	function separate (body1:phaser.physics.ninja.Body, body2:phaser.physics.ninja.Body, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool;
}
