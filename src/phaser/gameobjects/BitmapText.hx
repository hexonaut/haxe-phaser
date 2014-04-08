package phaser.gameobjects;

@:native("Phaser.BitmapText")
extern class BitmapText {
	function new (game:phaser.core.Game, x:Float, y:Float, font:String, ?text:String = '', ?size:Float = 32);
	var game:phaser.core.Game;
	var exists:Bool;
	var name:String;
	var type(default, null):Float;
	var z:Float;
	var world:phaser.geom.Point;
	var _text:String;
	var _font:String;
	var _fontSize:Float;
	var _align:String;
	var _tint:Float;
	var events:phaser.gameobjects.Events;
	var input:Dynamic;
	var cameraOffset:phaser.geom.Point;
	var cache:Array<Dynamic>;
	function preUpdate ():Void;
	function update ():Void;
	function postUpdate ():Void;
	function destroy (?destroyChildren:Bool = true):Void;
	var align:String;
	var tint:Float;
	var angle:Float;
	var font:String;
	var fontSize:Float;
	var text:String;
	var inputEnabled:Bool;
	var fixedToCamera:Bool;
}
