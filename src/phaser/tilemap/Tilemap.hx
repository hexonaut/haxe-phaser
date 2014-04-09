package phaser.tilemap;

@:native("Phaser.Tilemap")
extern class Tilemap {
	function new (game:phaser.core.Game, ?key:String, ?tileWidth:Float = 32, ?tileHeight:Float = 32, ?width:Float = 10, ?height:Float = 10);
	var game:phaser.core.Game;
	var key:String;
	var width:Float;
	var height:Float;
	var tileWidth:Float;
	var tileHeight:Float;
	var orientation:String;
	var version:Float;
	var properties:Dynamic;
	var widthInPixels:Float;
	var heightInPixels:Float;
	var layers:Dynamic;
	var tilesets:Dynamic;
	var tiles:Dynamic;
	var objects:Dynamic;
	var collideIndexes:Dynamic;
	var collision:Dynamic;
	var images:Dynamic;
	var currentLayer:Float;
	var debugMap:Dynamic;
	var _results:Dynamic;
	var _tempA:Float;
	var _tempB:Float;
	static var CSV:Float;
	static var TILED_JSON:Float;
	function create (name:String, width:Float, height:Float, tileWidth:Float, tileHeight:Float, ?group:phaser.core.Group):phaser.tilemap.TilemapLayer;
	function setTileSize (tileWidth:Float, tileHeight:Float):Void;
	function addTilesetImage (tileset:String, ?key:String, ?tileWidth:Float = 32, ?tileHeight:Float = 32, ?tileMargin:Float = 0, ?tileSpacing:Float = 0, ?gid:Float = 0):phaser.tilemap.Tileset;
	@:overload(function (name:String, gid:Float, key:String, ?frame:Float, ?exists:Bool = true, ?autoCull:Bool = false, ?group:phaser.core.Group, ?CustomClass:Dynamic, ?adjustY:Bool = true):Void {})
	function createFromObjects (name:String, gid:Float, key:String, ?frame:String, ?exists:Bool = true, ?autoCull:Bool = false, ?group:phaser.core.Group, ?CustomClass:Dynamic, ?adjustY:Bool = true):Void;
	@:overload(function (layer:Float, ?width:Float, ?height:Float, ?group:phaser.core.Group):phaser.tilemap.TilemapLayer {})
	function createLayer (layer:String, ?width:Float, ?height:Float, ?group:phaser.core.Group):phaser.tilemap.TilemapLayer;
	function getIndex (location:Dynamic, name:String):Float;
	function getLayerIndex (name:String):Float;
	function getTilesetIndex (name:String):Float;
	function getImageIndex (name:String):Float;
	function getObjectIndex (name:String):Float;
	@:overload(function (indexes:Float, callback:Dynamic, callbackContext:Dynamic, ?layer:Float):Void {})
	@:overload(function (indexes:Dynamic, callback:Dynamic, callbackContext:Dynamic, ?layer:Float):Void {})
	@:overload(function (indexes:Float, callback:Dynamic, callbackContext:Dynamic, ?layer:String):Void {})
	@:overload(function (indexes:Dynamic, callback:Dynamic, callbackContext:Dynamic, ?layer:String):Void {})
	@:overload(function (indexes:Float, callback:Dynamic, callbackContext:Dynamic, ?layer:phaser.tilemap.TilemapLayer):Void {})
	function setTileIndexCallback (indexes:Dynamic, callback:Dynamic, callbackContext:Dynamic, ?layer:phaser.tilemap.TilemapLayer):Void;
	@:overload(function (x:Float, y:Float, width:Float, height:Float, callback:Dynamic, callbackContext:Dynamic, ?layer:Float):Void {})
	@:overload(function (x:Float, y:Float, width:Float, height:Float, callback:Dynamic, callbackContext:Dynamic, ?layer:String):Void {})
	function setTileLocationCallback (x:Float, y:Float, width:Float, height:Float, callback:Dynamic, callbackContext:Dynamic, ?layer:phaser.tilemap.TilemapLayer):Void;
	@:overload(function (indexes:Float, ?collides:Bool = true, ?layer:Float):Void {})
	@:overload(function (indexes:Dynamic, ?collides:Bool = true, ?layer:Float):Void {})
	@:overload(function (indexes:Float, ?collides:Bool = true, ?layer:String):Void {})
	@:overload(function (indexes:Dynamic, ?collides:Bool = true, ?layer:String):Void {})
	@:overload(function (indexes:Float, ?collides:Bool = true, ?layer:phaser.tilemap.TilemapLayer):Void {})
	function setCollision (indexes:Dynamic, ?collides:Bool = true, ?layer:phaser.tilemap.TilemapLayer):Void;
	@:overload(function (start:Float, stop:Float, ?collides:Bool = true, ?layer:Float):Void {})
	@:overload(function (start:Float, stop:Float, ?collides:Bool = true, ?layer:String):Void {})
	function setCollisionBetween (start:Float, stop:Float, ?collides:Bool = true, ?layer:phaser.tilemap.TilemapLayer):Void;
	@:overload(function (indexes:Dynamic, ?collides:Bool = true, ?layer:Float):Void {})
	@:overload(function (indexes:Dynamic, ?collides:Bool = true, ?layer:String):Void {})
	function setCollisionByExclusion (indexes:Dynamic, ?collides:Bool = true, ?layer:phaser.tilemap.TilemapLayer):Void;
	function setCollisionByIndex (index:Float, ?collides:Bool = true, ?layer:Float, ?recalculate:Bool = true):Void;
	@:overload(function (layer:Float):Float {})
	@:overload(function (layer:String):Float {})
	function getLayer (layer:phaser.tilemap.TilemapLayer):Float;
	function calculateFaces (layer:Float):Void;
	function getTileAbove (layer:Float, x:Float, y:Float):Void;
	function getTileBelow (layer:Float, x:Float, y:Float):Void;
	function getTileLeft (layer:Float, x:Float, y:Float):Void;
	function getTileRight (layer:Float, x:Float, y:Float):Void;
	@:overload(function (layer:Float):Void {})
	@:overload(function (layer:String):Void {})
	function setLayer (layer:phaser.tilemap.TilemapLayer):Void;
	@:overload(function (x:Float, y:Float, layer:Float):Bool {})
	@:overload(function (x:Float, y:Float, layer:String):Bool {})
	function hasTile (x:Float, y:Float, layer:phaser.tilemap.TilemapLayer):Bool;
	@:overload(function (tile:phaser.tilemap.Tile, x:Float, y:Float, ?layer:Float):phaser.tilemap.Tile {})
	@:overload(function (tile:Float, x:Float, y:Float, ?layer:Float):phaser.tilemap.Tile {})
	@:overload(function (tile:phaser.tilemap.Tile, x:Float, y:Float, ?layer:String):phaser.tilemap.Tile {})
	@:overload(function (tile:Float, x:Float, y:Float, ?layer:String):phaser.tilemap.Tile {})
	@:overload(function (tile:phaser.tilemap.Tile, x:Float, y:Float, ?layer:phaser.tilemap.TilemapLayer):phaser.tilemap.Tile {})
	function putTile (tile:Float, x:Float, y:Float, ?layer:phaser.tilemap.TilemapLayer):phaser.tilemap.Tile;
	@:overload(function (tile:phaser.tilemap.Tile, x:Float, y:Float, tileWidth:Float, tileHeight:Float, ?layer:Float):Void {})
	@:overload(function (tile:Float, x:Float, y:Float, tileWidth:Float, tileHeight:Float, ?layer:Float):Void {})
	@:overload(function (tile:phaser.tilemap.Tile, x:Float, y:Float, tileWidth:Float, tileHeight:Float, ?layer:String):Void {})
	@:overload(function (tile:Float, x:Float, y:Float, tileWidth:Float, tileHeight:Float, ?layer:String):Void {})
	@:overload(function (tile:phaser.tilemap.Tile, x:Float, y:Float, tileWidth:Float, tileHeight:Float, ?layer:phaser.tilemap.TilemapLayer):Void {})
	function putTileWorldXY (tile:Float, x:Float, y:Float, tileWidth:Float, tileHeight:Float, ?layer:phaser.tilemap.TilemapLayer):Void;
	@:overload(function (x:Float, y:Float, ?layer:Float):phaser.tilemap.Tile {})
	@:overload(function (x:Float, y:Float, ?layer:String):phaser.tilemap.Tile {})
	function getTile (x:Float, y:Float, ?layer:phaser.tilemap.TilemapLayer):phaser.tilemap.Tile;
	@:overload(function (x:Float, y:Float, ?tileWidth:Float, ?tileHeight:Float, ?layer:Float):phaser.tilemap.Tile {})
	@:overload(function (x:Float, y:Float, ?tileWidth:Float, ?tileHeight:Float, ?layer:String):phaser.tilemap.Tile {})
	function getTileWorldXY (x:Float, y:Float, ?tileWidth:Float, ?tileHeight:Float, ?layer:phaser.tilemap.TilemapLayer):phaser.tilemap.Tile;
	@:overload(function (x:Float, y:Float, width:Float, height:Float, ?layer:Float):Dynamic {})
	@:overload(function (x:Float, y:Float, width:Float, height:Float, ?layer:String):Dynamic {})
	function copy (x:Float, y:Float, width:Float, height:Float, ?layer:phaser.tilemap.TilemapLayer):Dynamic;
	@:overload(function (x:Float, y:Float, tileblock:Dynamic, ?layer:Float):Void {})
	@:overload(function (x:Float, y:Float, tileblock:Dynamic, ?layer:String):Void {})
	function paste (x:Float, y:Float, tileblock:Dynamic, ?layer:phaser.tilemap.TilemapLayer):Void;
	@:overload(function (tileA:Float, tileB:Float, x:Float, y:Float, width:Float, height:Float, ?layer:Float):Void {})
	@:overload(function (tileA:Float, tileB:Float, x:Float, y:Float, width:Float, height:Float, ?layer:String):Void {})
	function swap (tileA:Float, tileB:Float, x:Float, y:Float, width:Float, height:Float, ?layer:phaser.tilemap.TilemapLayer):Void;
	function swapHandler (value:Float, index:Float):Void;
	@:overload(function (callback:Float, context:Float, x:Float, y:Float, width:Float, height:Float, ?layer:Float):Void {})
	@:overload(function (callback:Float, context:Float, x:Float, y:Float, width:Float, height:Float, ?layer:String):Void {})
	function forEach (callback:Float, context:Float, x:Float, y:Float, width:Float, height:Float, ?layer:phaser.tilemap.TilemapLayer):Void;
	@:overload(function (source:Float, dest:Float, x:Float, y:Float, width:Float, height:Float, ?layer:Float):Void {})
	@:overload(function (source:Float, dest:Float, x:Float, y:Float, width:Float, height:Float, ?layer:String):Void {})
	function replace (source:Float, dest:Float, x:Float, y:Float, width:Float, height:Float, ?layer:phaser.tilemap.TilemapLayer):Void;
	@:overload(function (x:Float, y:Float, width:Float, height:Float, ?layer:Float):Void {})
	@:overload(function (x:Float, y:Float, width:Float, height:Float, ?layer:String):Void {})
	function random (x:Float, y:Float, width:Float, height:Float, ?layer:phaser.tilemap.TilemapLayer):Void;
	@:overload(function (x:Float, y:Float, width:Float, height:Float, ?layer:Float):Void {})
	@:overload(function (x:Float, y:Float, width:Float, height:Float, ?layer:String):Void {})
	function shuffle (x:Float, y:Float, width:Float, height:Float, ?layer:phaser.tilemap.TilemapLayer):Void;
	@:overload(function (index:Float, x:Float, y:Float, width:Float, height:Float, ?layer:Float):Void {})
	@:overload(function (index:Float, x:Float, y:Float, width:Float, height:Float, ?layer:String):Void {})
	function fill (index:Float, x:Float, y:Float, width:Float, height:Float, ?layer:phaser.tilemap.TilemapLayer):Void;
	function removeAllLayers ():Void;
	function dump ():Void;
	function destroy ():Void;
}
