package phaser.utils;

@:native("Phaser.Utils.Debug")
extern class Debug {
	function new (game:phaser.core.Game);
	var game:phaser.core.Game;
	var sprite:phaser.pixi.display.Sprite;
	var canvas:Dynamic;
	var baseTexture:phaser.pixi.textures.BaseTexture;
	var texture:phaser.pixi.textures.Texture;
	var textureFrame:phaser.animation.Frame;
	var context:Dynamic;
	var font:String;
	var columnWidth:Float;
	var lineHeight:Float;
	var renderShadow:Bool;
	var currentX:Dynamic;
	var currentY:Float;
	var currentAlpha:Float;
	var dirty:Bool;
	function boot ():Void;
	function preUpdate ():Void;
	function start (?x:Float = 0, ?y:Float = 0, ?color:String = 'rgb(255,255,255)', ?columnWidth:Float = 0):Void;
	function stop ():Void;
	function line ():Void;
	function soundInfo (sound:phaser.sound.Sound, x:Float, y:Float, ?color:String = 'rgb(255,255,255)'):Void;
	function cameraInfo (camera:phaser.core.Camera, x:Float, y:Float, ?color:String = 'rgb(255,255,255)'):Void;
	function pointer (pointer:phaser.input.Pointer, ?hideIfUp:Bool = false, ?downColor:String = 'rgba(0,255,0,0.5)', ?upColor:String = 'rgba(255,0,0,0.5)', ?color:String = 'rgb(255,255,255)'):Void;
	@:overload(function (sprite:phaser.gameobjects.Sprite, x:Float, y:Float, ?color:String = 'rgb(255,255,255)'):Void {})
	function spriteInputInfo (sprite:phaser.gameobjects.Image, x:Float, y:Float, ?color:String = 'rgb(255,255,255)'):Void;
	function key (key:phaser.input.Key, x:Float, y:Float, ?color:String = 'rgb(255,255,255)'):Void;
	function inputInfo (x:Float, y:Float, ?color:String = 'rgb(255,255,255)'):Void;
	@:overload(function (sprite:phaser.gameobjects.Sprite, ?color:String, ?filled:Bool = true):Void {})
	function spriteBounds (sprite:phaser.gameobjects.Image, ?color:String, ?filled:Bool = true):Void;
	function spriteInfo (sprite:phaser.gameobjects.Sprite, x:Float, y:Float, ?color:String = 'rgb(255,255,255)'):Void;
	@:overload(function (sprite:phaser.gameobjects.Sprite, x:Float, y:Float, ?color:String = 'rgb(255,255,255)'):Void {})
	function spriteCoords (sprite:phaser.gameobjects.Image, x:Float, y:Float, ?color:String = 'rgb(255,255,255)'):Void;
	function lineInfo (line:phaser.geom.Line, x:Float, y:Float, ?color:String = 'rgb(255,255,255)'):Void;
	function pixel (x:Float, y:Float, ?color:String, ?size:Float = 2):Void;
	@:overload(function (object:phaser.geom.Rectangle, ?color:String, ?filled:Bool = true, ?forceType:Float = 0):Void {})
	@:overload(function (object:phaser.geom.Circle, ?color:String, ?filled:Bool = true, ?forceType:Float = 0):Void {})
	@:overload(function (object:phaser.geom.Point, ?color:String, ?filled:Bool = true, ?forceType:Float = 0):Void {})
	function geom (object:phaser.geom.Line, ?color:String, ?filled:Bool = true, ?forceType:Float = 0):Void;
	function text (text:String, x:Float, y:Float, ?color:String, ?font:String):Void;
	function quadTree (quadtree:phaser.math.QuadTree, color:String):Void;
	function body (sprite:phaser.gameobjects.Sprite, ?color:String = 'rgb(255,255,255)', ?filled:Bool = true):Void;
	function bodyInfo (sprite:phaser.gameobjects.Sprite, x:Float, y:Float, ?color:String = 'rgb(255,255,255)'):Void;
}
