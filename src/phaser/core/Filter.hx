package phaser.core;

@:native("Phaser.Filter")
extern class Filter {
	function new (game:phaser.core.Game, uniforms:Dynamic, fragmentSrc:Array<Dynamic>);
	var game:phaser.core.Game;
	var type:Float;
	var passes:Dynamic;
	var shaders:Dynamic;
	var dirty:Bool;
	var padding:Float;
	var uniforms:Dynamic;
	var fragmentSrc:Dynamic;
	function init ():Void;
	function setResolution (width:Float, height:Float):Void;
	function update (?pointer:phaser.input.Pointer):Void;
	function destroy ():Void;
	var width:Float;
	var height:Float;
}
