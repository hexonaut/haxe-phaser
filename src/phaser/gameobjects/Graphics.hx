package phaser.gameobjects;

@:native("Phaser.Graphics")
extern class Graphics {
	function new (game:phaser.core.Game, x:Float, y:Float);
	var game:phaser.core.Game;
	var exists:Bool;
	var name:String;
	var type:Float;
	var z:Float;
	var world:phaser.geom.Point;
	var cameraOffset:phaser.geom.Point;
	var cache:Array<Dynamic>;
	function preUpdate ():Void;
	function update ():Void;
	function postUpdate ():Void;
	function destroy (?destroyChildren:Bool = true):Void;
	function drawPolygon ():Void;
	var angle:Float;
	var fixedToCamera:Bool;
}
