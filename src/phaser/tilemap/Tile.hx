package phaser.tilemap;

@:native("Phaser.Tile")
extern class Tile {
	function new (layer:Dynamic, index:Float, x:Float, y:Float, width:Float, height:Float);
	var layer:Dynamic;
	var index:Float;
	var x:Float;
	var y:Float;
	var worldX:Float;
	var worldY:Float;
	var width:Float;
	var height:Float;
	var centerX:Float;
	var centerY:Float;
	var alpha:Float;
	var properties:Dynamic;
	var scanned:Bool;
	var faceTop:Bool;
	var faceBottom:Bool;
	var faceLeft:Bool;
	var faceRight:Bool;
	var collideLeft:Bool;
	var collideRight:Bool;
	var collideUp:Bool;
	var collideDown:Bool;
	var collisionCallback:Dynamic;
	var collisionCallbackContext:Dynamic;
	function containsPoint (x:Float, y:Float):Bool;
	function intersects (x:Float, y:Float, right:Float, bottom:Float):Void;
	function setCollisionCallback (callback:Dynamic, context:Dynamic):Void;
	function destroy ():Void;
	function setCollision (left:Bool, right:Bool, up:Bool, down:Bool):Void;
	function resetCollision ():Void;
	function isInteresting (collides:Bool, faces:Bool):Bool;
	function copy (tile:phaser.tilemap.Tile):Void;
	var canCollide(default, null):Bool;
	var left(default, null):Float;
	var right(default, null):Float;
	var top(default, null):Float;
	var bottom(default, null):Float;
}
