package phaser.gameobjects;

@:native("Phaser.BitmapData")
extern class BitmapData {
	function new (game:phaser.core.Game, key:String, ?width:Float = 100, ?height:Float = 100);
	var game:phaser.core.Game;
	var key:String;
	var width:Float;
	var height:Float;
	var canvas:Dynamic;
	var context:Dynamic;
	var ctx:Dynamic;
	var imageData:Dynamic;
	var baseTexture:phaser.pixi.textures.BaseTexture;
	var texture:phaser.pixi.textures.Texture;
	var textureFrame:phaser.animation.Frame;
	var type:Float;
	var dirty:Bool;
	function add (object:phaser.gameobjects.Sprite):Void;
	function clear ():Void;
	function resize ():Void;
	function setPixel32 (x:Float, y:Float, red:Float, green:Float, blue:Float, alpha:Float):Void;
	function setPixel (x:Float, y:Float, red:Float, green:Float, blue:Float):Void;
	function render ():Void;
}
