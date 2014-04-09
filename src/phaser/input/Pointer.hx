package phaser.input;

@:native("Phaser.Pointer")
extern class Pointer {
	function new (game:phaser.core.Game, id:Float);
	var game:phaser.core.Game;
	var id:Float;
	var _holdSent:Bool;
	var _history:Dynamic;
	var _nextDrop:Float;
	var _stateReset:Bool;
	var withinGame:Bool;
	var clientX:Float;
	var clientY:Float;
	var pageX:Float;
	var pageY:Float;
	var screenX:Float;
	var screenY:Float;
	var x:Float;
	var y:Float;
	var isMouse:Bool;
	var isDown:Bool;
	var isUp:Bool;
	var timeDown:Float;
	var timeUp:Float;
	var previousTapTime:Float;
	var totalTouches:Float;
	var msSinceLastClick:Float;
	var targetObject:Dynamic;
	var active:Bool;
	var position:phaser.geom.Point;
	var positionDown:phaser.geom.Point;
	var circle:phaser.geom.Circle;
	function start (event:Dynamic):Void;
	function update ():Void;
	@:overload(function (event:Dynamic, ?fromClick:Bool = false):Void {})
	@:overload(function (event:Dynamic, ?fromClick:Bool = false):Void {})
	function move (event:Dynamic, ?fromClick:Bool = false):Void;
	@:overload(function (event:Dynamic):Void {})
	@:overload(function (event:Dynamic):Void {})
	function leave (event:Dynamic):Void;
	@:overload(function (event:Dynamic):Void {})
	@:overload(function (event:Dynamic):Void {})
	function stop (event:Dynamic):Void;
	function justPressed (?duration:Float):Bool;
	function justReleased (?duration:Float):Bool;
	function reset ():Void;
	var duration(default, null):Float;
}
