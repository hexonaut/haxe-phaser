package phaser.gameobjects;

@:native("Phaser.RenderTexture")
extern class RenderTexture {
	function new (game:phaser.core.Game, key:String, ?width:Float = 100, ?height:Float = 100);
	var game:phaser.core.Game;
	var key:String;
	var type:Float;
	var _temp:phaser.geom.Point;
	@:overload(function (displayObject:phaser.gameobjects.Sprite, x:Float, y:Float, clear:Bool):Void {})
	@:overload(function (displayObject:phaser.gameobjects.Image, x:Float, y:Float, clear:Bool):Void {})
	@:overload(function (displayObject:phaser.gameobjects.Text, x:Float, y:Float, clear:Bool):Void {})
	@:overload(function (displayObject:phaser.gameobjects.BitmapText, x:Float, y:Float, clear:Bool):Void {})
	function renderXY (displayObject:phaser.core.Group, x:Float, y:Float, clear:Bool):Void;
	@:overload(function (displayObject:phaser.gameobjects.Sprite, position:phaser.geom.Point, clear:Bool):Void {})
	@:overload(function (displayObject:phaser.gameobjects.Image, position:phaser.geom.Point, clear:Bool):Void {})
	@:overload(function (displayObject:phaser.gameobjects.Text, position:phaser.geom.Point, clear:Bool):Void {})
	@:overload(function (displayObject:phaser.gameobjects.BitmapText, position:phaser.geom.Point, clear:Bool):Void {})
	function render (displayObject:phaser.core.Group, position:phaser.geom.Point, clear:Bool):Void;
	function resize (width:Float, height:Float):Void;
}
