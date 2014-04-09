package phaser.core;

@:native("Phaser.Camera")
extern class Camera {
	function new (game:phaser.core.Game, id:Float, x:Float, y:Float, width:Float, height:Float);
	var game:phaser.core.Game;
	var world:phaser.core.World;
	var id:Float;
	var view:phaser.geom.Rectangle;
	var screenView:phaser.geom.Rectangle;
	var bounds:phaser.geom.Rectangle;
	var deadzone:phaser.geom.Rectangle;
	var visible:Bool;
	var atLimit:Bool;
	var target:phaser.gameobjects.Sprite;
	var _edge:Float;
	var displayObject:phaser.pixi.display.DisplayObject;
	var scale:phaser.geom.Point;
	static var FOLLOW_LOCKON:Float;
	static var FOLLOW_PLATFORMER:Float;
	static var FOLLOW_TOPDOWN:Float;
	static var FOLLOW_TOPDOWN_TIGHT:Float;
	@:overload(function (target:phaser.gameobjects.Sprite, ?style:Float):Void {})
	@:overload(function (target:phaser.gameobjects.Image, ?style:Float):Void {})
	function follow (target:phaser.gameobjects.Text, ?style:Float):Void;
	function focusOn (displayObject:Dynamic):Void;
	function focusOnXY (x:Float, y:Float):Void;
	function update ():Void;
	function updateTarget ():Void;
	function setBoundsToWorld ():Void;
	function checkWorldBounds ():Void;
	function setPosition (x:Float, y:Float):Void;
	function setSize (width:Float, height:Float):Void;
	function reset ():Void;
	var x:Float;
	var y:Float;
	var width:Float;
	var height:Float;
}
