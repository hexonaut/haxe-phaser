package phaser.gameobjects;

@:native("Phaser.Text")
extern class Text extends phaser.pixi.text.Text {
	var game:phaser.core.Game;
	var exists:Bool;
	var name:String;
	var type:Float;
	var z:Float;
	var world:phaser.geom.Point;
	var _text:String;
	var _font:String;
	var _fontSize:Float;
	var _fontWeight:String;
	var _lineSpacing:Float;
	var events:phaser.gameobjects.Events;
	var input:Dynamic;
	var cameraOffset:phaser.geom.Point;
	var cache:Array<Dynamic>;
	function preUpdate ():Void;
	function update ():Void;
	function postUpdate ():Void;
	function setStyle (Object:Dynamic, pt:Dynamic, Object:Dynamic, String:Dynamic, String:Dynamic, Number:Dynamic, Boolean:Dynamic, Number:Dynamic):Void;
	function updateText ():Void;
	function runWordWrap ():Void;
	var angle:Float;
	var text:String;
	var font:String;
	var fontSize:Float;
	var fontWeight:Float;
	var fill:Dynamic;
	var align:String;
	var stroke:String;
	var strokeThickness:Float;
	var wordWrap:Bool;
	var wordWrapWidth:Float;
	var lineSpacing:Float;
	var shadowOffsetX:Float;
	var shadowOffsetY:Float;
	var shadowColor:String;
	var shadowBlur:Float;
	var inputEnabled:Bool;
	var fixedToCamera:Bool;
}
