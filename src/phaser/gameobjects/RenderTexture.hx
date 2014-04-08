package phaser.gameobjects;

@:native("Phaser.RenderTexture")
extern class RenderTexture {
	function new (game:phaser.core.Game, key:String, ?width:Float = 100, ?height:Float = 100);
	var game:phaser.core.Game;
	var key:String;
	var type:Float;
	var _temp:phaser.geom.Point;
	function renderXY (displayObject:phaser.gameobjects.Sprite, x:Float, y:Float, clear:Bool):Void;
	function render (displayObject:phaser.gameobjects.Sprite, position:phaser.geom.Point, clear:Bool):Void;
	function resize (width:Float, height:Float):Void;
}
