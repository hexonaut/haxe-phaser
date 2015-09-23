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
	var _tempMatrix:phaser.pixi.geom.Matrix;
	
	/**
	 * This function will draw the display object to the RenderTexture at the given coordinates.
	 * 
	 * When the display object is drawn it takes into account scale and rotation.
	 * 
	 * If you don't want those then use RenderTexture.renderRawXY instead.
	 */
	@:overload(function (displayObject:phaser.gameobjects.Sprite, x:Float, y:Float, ?clear:Bool = false):Void {})
	@:overload(function (displayObject:phaser.gameobjects.Image, x:Float, y:Float, ?clear:Bool = false):Void {})
	@:overload(function (displayObject:phaser.gameobjects.Text, x:Float, y:Float, ?clear:Bool = false):Void {})
	@:overload(function (displayObject:phaser.gameobjects.BitmapText, x:Float, y:Float, ?clear:Bool = false):Void {})
	function renderXY (displayObject:phaser.core.Group, x:Float, y:Float, ?clear:Bool = false):Void;
	
	/**
	 * This function will draw the display object to the RenderTexture at the given coordinates.
	 * 
	 * When the display object is drawn it doesn't take into account scale, rotation or translation.
	 * 
	 * If you need those then use RenderTexture.renderXY instead.
	 */
	@:overload(function (displayObject:phaser.gameobjects.Sprite, x:Float, y:Float, ?clear:Bool = false):Void {})
	@:overload(function (displayObject:phaser.gameobjects.Image, x:Float, y:Float, ?clear:Bool = false):Void {})
	@:overload(function (displayObject:phaser.gameobjects.Text, x:Float, y:Float, ?clear:Bool = false):Void {})
	@:overload(function (displayObject:phaser.gameobjects.BitmapText, x:Float, y:Float, ?clear:Bool = false):Void {})
	function renderRawXY (displayObject:phaser.core.Group, x:Float, y:Float, ?clear:Bool = false):Void;
	
	/**
	 * This function will draw the display object to the RenderTexture.
	 * 
	 * In versions of Phaser prior to 2.4.0 the second parameter was a Phaser.Point object. 
	 * This is now a Matrix allowing you much more control over how the Display Object is rendered.
	 * If you need to replicate the earlier behavior please use Phaser.RenderTexture.renderXY instead.
	 * 
	 * If you wish for the displayObject to be rendered taking its current scale, rotation and translation into account then either
	 * pass null, leave it undefined or pass displayObject.worldTransform as the matrix value.
	 */
	@:overload(function (displayObject:phaser.gameobjects.Sprite, ?matrix:phaser.geom.Matrix, ?clear:Bool = false):Void {})
	@:overload(function (displayObject:phaser.gameobjects.Image, ?matrix:phaser.geom.Matrix, ?clear:Bool = false):Void {})
	@:overload(function (displayObject:phaser.gameobjects.Text, ?matrix:phaser.geom.Matrix, ?clear:Bool = false):Void {})
	@:overload(function (displayObject:phaser.gameobjects.BitmapText, ?matrix:phaser.geom.Matrix, ?clear:Bool = false):Void {})
	function render (displayObject:phaser.core.Group, ?matrix:phaser.geom.Matrix, ?clear:Bool = false):Void;
	
}
