package phaser.utils;

@:native("")
extern class Utils {
	static var Utils:Dynamic;
	@:overload(function (size:String, dimension:Float):Float {})
	function parseDimension (size:Float, dimension:Float):Float;
	function shuffle (array:Dynamic):Dynamic;
	function pad (str:String, len:Float, pad:Float, ?dir:Float = 3):String;
	function isPlainObject (obj:Dynamic):Bool;
	function extend (deep:Bool, target:Dynamic):Dynamic;
}
