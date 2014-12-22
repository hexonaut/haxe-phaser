package phaser.gameobjects;

@:native("Phaser.RenderTexture")
extern class RenderTexture extends phaser.pixi.textures.RenderTexture {
	
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
	 * The matrix that is applied when display objects are rendered to this RenderTexture.
	 */
	var matrix:phaser.pixi.geom.Matrix;
	
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
	@:overload(function (displayObject:phaser.gameobjects.Sprite, position:phaser.geom.Point, clear:Bool):Void {})
	@:overload(function (displayObject:phaser.gameobjects.Image, position:phaser.geom.Point, clear:Bool):Void {})
	@:overload(function (displayObject:phaser.gameobjects.Text, position:phaser.geom.Point, clear:Bool):Void {})
	@:overload(function (displayObject:phaser.gameobjects.BitmapText, position:phaser.geom.Point, clear:Bool):Void {})
	function render (displayObject:phaser.core.Group, position:phaser.geom.Point, clear:Bool):Void;
	
}
