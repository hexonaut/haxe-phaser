package phaser.gameobjects;

@:native("Phaser.Image")
extern class Image extends phaser.gameobjects.components.Smoothed {
	
	/**
	 * An Image is a light-weight object you can use to display anything that doesn't need physics or animation.
	 * It can still rotate, scale, crop and receive input events. This makes it perfect for logos, backgrounds, simple buttons and other non-Sprite graphics.
	 */
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:String, frame:String):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:phaser.gameobjects.RenderTexture, frame:String):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:phaser.gameobjects.BitmapData, frame:String):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:phaser.pixi.textures.Texture, frame:String):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:String, frame:Float):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:phaser.gameobjects.RenderTexture, frame:Float):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:phaser.gameobjects.BitmapData, frame:Float):Void {})
	function new (game:phaser.core.Game, x:Float, y:Float, key:phaser.pixi.textures.Texture, frame:Float);
	
	/**
	 * The const type of this object.
	 */
	var type(default, null):Float;
	
	/**
	 * Automatically called by World.preUpdate.
	 */
	function preUpdate ():Void;
	
}
