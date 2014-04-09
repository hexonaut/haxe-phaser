package phaser.gameobjects;

@:native("Phaser.TileSprite")
extern class TileSprite {
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, width:Float, height:Float, key:String, frame:String):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, width:Float, height:Float, key:phaser.gameobjects.RenderTexture, frame:String):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, width:Float, height:Float, key:phaser.gameobjects.BitmapData, frame:String):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, width:Float, height:Float, key:phaser.pixi.textures.Texture, frame:String):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, width:Float, height:Float, key:String, frame:Float):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, width:Float, height:Float, key:phaser.gameobjects.RenderTexture, frame:Float):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, width:Float, height:Float, key:phaser.gameobjects.BitmapData, frame:Float):Void {})
	function new (game:phaser.core.Game, x:Float, y:Float, width:Float, height:Float, key:phaser.pixi.textures.Texture, frame:Float);
	var game:phaser.core.Game;
	var name:String;
	var type(default, null):Float;
	var z:Float;
	var events:phaser.gameobjects.Events;
	var animations:phaser.animation.AnimationManager;
	var key:Dynamic;
	var _frame:Float;
	var _frameName:String;
	var _scroll:phaser.geom.Point;
	var input:Dynamic;
	var world:phaser.geom.Point;
	var autoCull:Bool;
	var checkWorldBounds:Bool;
	var cameraOffset:phaser.geom.Point;
	var body:Dynamic;
	var cache:Array<Dynamic>;
	function preUpdate ():Void;
	function update ():Void;
	function postUpdate ():Void;
	function autoScroll ():Void;
	function stopScroll ():Void;
	@:overload(function (key:String, frame:String):Void {})
	@:overload(function (key:phaser.gameobjects.RenderTexture, frame:String):Void {})
	@:overload(function (key:phaser.gameobjects.BitmapData, frame:String):Void {})
	@:overload(function (key:phaser.pixi.textures.Texture, frame:String):Void {})
	@:overload(function (key:String, frame:Float):Void {})
	@:overload(function (key:phaser.gameobjects.RenderTexture, frame:Float):Void {})
	@:overload(function (key:phaser.gameobjects.BitmapData, frame:Float):Void {})
	function loadTexture (key:phaser.pixi.textures.Texture, frame:Float):Void;
	function destroy (?destroyChildren:Bool = true):Void;
	function play (name:String, ?frameRate:Float, ?loop:Bool = false, ?killOnComplete:Bool = false):phaser.animation.Animation;
	function reset (x:Float, y:Float):Dynamic;
	var angle:Float;
	var frame:Float;
	var frameName:String;
	var fixedToCamera:Bool;
	var exists:Bool;
	var inputEnabled:Bool;
}
