package phaser.gameobjects;

@:native("Phaser.Image")
extern class Image {
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:String, frame:String):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:phaser.gameobjects.RenderTexture, frame:String):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:phaser.gameobjects.BitmapData, frame:String):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:phaser.pixi.textures.Texture, frame:String):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:String, frame:Float):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:phaser.gameobjects.RenderTexture, frame:Float):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:phaser.gameobjects.BitmapData, frame:Float):Void {})
	function new (game:phaser.core.Game, x:Float, y:Float, key:phaser.pixi.textures.Texture, frame:Float);
	var game:phaser.core.Game;
	var exists:Bool;
	var name:String;
	var type(default, null):Float;
	var z:Float;
	var events:phaser.gameobjects.Events;
	var key:Dynamic;
	var _frame:Float;
	var _frameName:String;
	var world:phaser.geom.Point;
	var autoCull:Bool;
	var input:Dynamic;
	var cameraOffset:phaser.geom.Point;
	var cache:Array<Dynamic>;
	function preUpdate ():Void;
	function update ():Void;
	function postUpdate ():Void;
	@:overload(function (key:String, frame:String):Void {})
	@:overload(function (key:phaser.gameobjects.RenderTexture, frame:String):Void {})
	@:overload(function (key:phaser.gameobjects.BitmapData, frame:String):Void {})
	@:overload(function (key:phaser.pixi.textures.Texture, frame:String):Void {})
	@:overload(function (key:String, frame:Float):Void {})
	@:overload(function (key:phaser.gameobjects.RenderTexture, frame:Float):Void {})
	@:overload(function (key:phaser.gameobjects.BitmapData, frame:Float):Void {})
	function loadTexture (key:phaser.pixi.textures.Texture, frame:Float):Void;
	function crop (rect:phaser.geom.Rectangle):Void;
	function revive ():phaser.gameobjects.Image;
	function kill ():phaser.gameobjects.Image;
	function destroy (?destroyChildren:Bool = true):Void;
	function reset (x:Float, y:Float):phaser.gameobjects.Image;
	function bringToTop ():phaser.gameobjects.Image;
	var angle:Float;
	var deltaX(default, null):Float;
	var deltaY(default, null):Float;
	var deltaZ(default, null):Float;
	var inWorld(default, null):Bool;
	var inCamera(default, null):Bool;
	var frame:Float;
	var frameName:String;
	var renderOrderID(default, null):Float;
	var inputEnabled:Bool;
	var fixedToCamera:Bool;
	var smoothed:Bool;
}
