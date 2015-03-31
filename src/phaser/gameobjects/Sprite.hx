package phaser.gameobjects;

@:native("Phaser.Sprite")
extern class Sprite extends phaser.pixi.display.Sprite {
	
	/**
	 * Sprites are the lifeblood of your game, used for nearly everything visual.
	 * 
	 * At its most basic a Sprite consists of a set of coordinates and a texture that is rendered to the canvas.
	 * They also contain additional properties allowing for physics motion (via Sprite.body), input handling (via Sprite.input),
	 * events (via Sprite.events), animation (via Sprite.animations), camera culling and more. Please see the Examples for use cases.
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
	 * The const physics body type of this object.
	 */
	var physicsType(default, null):Float;
	
}
