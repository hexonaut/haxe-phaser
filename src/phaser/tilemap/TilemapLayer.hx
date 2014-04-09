package phaser.tilemap;

@:native("Phaser.TilemapLayer")
extern class TilemapLayer {
	function new (game:phaser.core.Game, tilemap:phaser.tilemap.Tilemap, index:Float, width:Float, height:Float);
	var game:phaser.core.Game;
	var map:phaser.tilemap.Tilemap;
	var index:Float;
	var layer:Dynamic;
	var canvas:Dynamic;
	var context:Dynamic;
	var baseTexture:phaser.pixi.textures.BaseTexture;
	var texture:phaser.pixi.textures.Texture;
	var textureFrame:phaser.animation.Frame;
	var name:String;
	var type:Float;
	var fixedToCamera:Bool;
	var cameraOffset:phaser.geom.Point;
	var tileColor:String;
	var debug:Bool;
	var debugAlpha:Float;
	var debugColor:String;
	var debugFill:Bool;
	var debugFillColor:String;
	var debugCallbackColor:String;
	var scrollFactorX:Float;
	var scrollFactorY:Float;
	var dirty:Bool;
	var rayStepRate:Float;
	var _mc:Dynamic;
	var _results:Dynamic;
	function postUpdate ():Void;
	function resizeWorld ():Void;
	function _fixX (x:Float):Float;
	function _unfixX (x:Float):Float;
	function _fixY (y:Float):Float;
	function _unfixY (y:Float):Float;
	function getTileX (x:Float):phaser.tilemap.Tile;
	function getTileY (y:Float):phaser.tilemap.Tile;
	@:overload(function (x:Float, y:Float, point:phaser.geom.Point):Dynamic {})
	function getTileXY (x:Float, y:Float, point:Dynamic):Dynamic;
	function getRayCastTiles (line:phaser.geom.Line, ?stepRate:Float, ?collides:Bool = false, ?interestingFace:Bool = false):Dynamic;
	function getTiles (x:Float, y:Float, width:Float, height:Float, ?collides:Bool = false, ?interestingFace:Bool = false):Dynamic;
	function updateMax ():Void;
	function render ():Void;
	function renderDebug ():Void;
	var scrollX:Float;
	var scrollY:Float;
	var collisionWidth:Float;
	var collisionHeight:Float;
}
