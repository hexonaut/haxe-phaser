package phaser.core;

@:native("Phaser.World")
extern class World extends phaser.core.Group {
	var bounds:phaser.geom.Rectangle;
	var camera:phaser.core.Camera;
	function boot ():Void;
	function setBounds (x:Float, y:Float, width:Float, height:Float):Void;
	function shutdown ():Void;
	var width:Float;
	var height:Float;
	var centerX(default, null):Float;
	var centerY(default, null):Float;
	var randomX(default, null):Float;
	var randomY(default, null):Float;
}
