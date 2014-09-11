package phaser.gameobjects;

@:native("Phaser.RenderTexture")
extern class RenderTexture {
	
	/**
	 * A RenderTexture is a special texture that allows any displayObject to be rendered to it. It allows you to take many complex objects and
	 * render them down into a single quad (on WebGL) which can then be used to texture other display objects with. A way of generating textures at run-time.
	 */
	function new (game:phaser.core.Game, key:String, ?width:Float = 100, ?height:Float = 100, ?key:String = '', ?scaleMode:Float);
	
	/**
	 * A reference to the currently running game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The key of the RenderTexture in the Cache, if stored there.
	 */
	var key:String;
	
	/**
	 * Base Phaser object type.
	 */
	var type:Float;
	
	/**
	 * Internal var.
	 */
	var _temp:Dynamic;
	
	/**
	 * This function will draw the display object to the texture.
	 */
	@:overload(function (displayObject:phaser.gameobjects.Sprite, x:Float, y:Float, clear:Bool):Void {})
	@:overload(function (displayObject:phaser.gameobjects.Image, x:Float, y:Float, clear:Bool):Void {})
	@:overload(function (displayObject:phaser.gameobjects.Text, x:Float, y:Float, clear:Bool):Void {})
	@:overload(function (displayObject:phaser.gameobjects.BitmapText, x:Float, y:Float, clear:Bool):Void {})
	function renderXY (displayObject:phaser.core.Group, x:Float, y:Float, clear:Bool):Void;
	
	/**
	 * This function will draw the display object to the texture.
	 */
	@:overload(function (displayObject:phaser.gameobjects.Sprite, position:Dynamic, clear:Bool):Void {})
	@:overload(function (displayObject:phaser.gameobjects.Image, position:Dynamic, clear:Bool):Void {})
	@:overload(function (displayObject:phaser.gameobjects.Text, position:Dynamic, clear:Bool):Void {})
	@:overload(function (displayObject:phaser.gameobjects.BitmapText, position:Dynamic, clear:Bool):Void {})
	function render (displayObject:phaser.core.Group, position:Dynamic, clear:Bool):Void;
	
	/**
	 * Resize this RenderTexture to the given width and height.
	 */
	function resize (width:Float, height:Float):Void;
	
}
