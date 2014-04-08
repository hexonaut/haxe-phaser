package phaser.core;

@:native("Phaser.Stage")
extern class Stage extends phaser.pixi.display.Stage {
	var game:phaser.core.Game;
	var offset:phaser.geom.Point;
	var name:String;
	var disableVisibilityChange:Bool;
	var checkOffsetInterval:Dynamic;
	var exists:Bool;
	var currentRenderOrderID:Float;
	var _hiddenVar:String;
	var _nextOffsetCheck:Float;
	var _backgroundColor:Float;
	function preUpdate ():Void;
	function update ():Void;
	function postUpdate ():Void;
	function parseConfig ():Void;
	function boot ():Void;
	function checkVisibility ():Void;
	function visibilityChange (event:Dynamic):Void;
	var backgroundColor:Dynamic;
	var smoothed:Bool;
}
