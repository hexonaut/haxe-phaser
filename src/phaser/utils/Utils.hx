package phaser.utils;

@:native("")
extern class Utils {
	static var Utils:Dynamic;
	function parseDimension (size:String, dimension:Float):Float;
	function shuffle (array:Dynamic):Dynamic;
	function pad (str:String, len:Float, pad:Float, ?dir:Float = 3):String;
	function isPlainObject (obj:Dynamic):Bool;
	function extend (deep:Bool, target:Dynamic):Dynamic;
}
