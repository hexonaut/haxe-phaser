package phaser;

@:native("Phaser.TilemapLayerGL")
extern class TilemapLayerGL {

	function new(game:phaser.Game, tilemap:phaser.Tilemap, index:Float, ?width:Float, ?height:Float, ?tileset:phaser.Tileset);
	
	var collisionHeight:Float;
	
	var collisionWidth:Float;
	
	var data:Dynamic;
	
	var dirty:Bool;
	
	var exists:Bool;
	
	var fixedToCamera:Bool;
	
	var game:phaser.Game;
	
	var index:Float;
	
	var layer:phaser.TilemapLayer;
	
	var map:phaser.Tilemap;
	
	var name:String;
	
	var physicsType:Float;
	
	var scrollFactorX:Float;
	
	var scrollFactorY:Float;
	
	var scrollX:Float;
	
	var scrollY:Float;
	
	var type:Float;
	
	var wrap:Bool;
	
	var x:Float;
	
	var y:Float;
	
	var width:Float;
	
	var height:Float;
	
	function destroy():Void;
	
	function postUpdate():Void;
	
	function render():Void;
	
	function resize(width:Float, height:Float):Void;
	
	function resizeWorld():Void;
	
	function resetTilesetCache():Void;
	
	function setScale(?xScale:Float, ?yScale:Float):Void;
	
	function updateMax():Void;
	
}

