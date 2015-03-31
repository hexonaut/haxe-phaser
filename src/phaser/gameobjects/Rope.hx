package phaser.gameobjects;

@:native("Phaser.Rope")
extern class Rope extends phaser.pixi.extras.Rope {
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The user defined name given to this Sprite.
	 */
	var name:String;
	
	/**
	 * A Rope is a Sprite that has a repeating texture. The texture can be scrolled and scaled and will automatically wrap on the edges as it does so.
	 * Please note that Ropes, as with normal Sprites, have no input handler or physics bodies by default. Both need enabling.
	 * Example usage: <a href='https://github.com/codevinsky/phaser-rope-demo/blob/master/dist/demo.js'>https://github.com/codevinsky/phaser-rope-demo/blob/master/dist/demo.js</a>
	 */
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:String, frame:String, points:Array<Dynamic>):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:phaser.gameobjects.RenderTexture, frame:String, points:Array<Dynamic>):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:phaser.gameobjects.BitmapData, frame:String, points:Array<Dynamic>):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:phaser.pixi.textures.Texture, frame:String, points:Array<Dynamic>):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:String, frame:Float, points:Array<Dynamic>):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:phaser.gameobjects.RenderTexture, frame:Float, points:Array<Dynamic>):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:phaser.gameobjects.BitmapData, frame:Float, points:Array<Dynamic>):Void {})
	function new (game:phaser.core.Game, x:Float, y:Float, key:phaser.pixi.textures.Texture, frame:Float, points:Array<Dynamic>);
	
	/**
	 * The const type of this object.
	 */
	var type(default, null):Float;
	
	/**
	 * Internal cache var.
	 */
	var _scroll:phaser.geom.Point;
	
	/**
	 * Automatically called by World.preUpdate.
	 */
	function preUpdate ():Void;
	
	/**
	 * Override and use this function in your own custom objects to handle any update requirements you may have.
	 */
	function update ():Void;
	
	/**
	 * Resets the Rope. This places the Rope at the given x/y world coordinates, resets the tilePosition and then
	 * sets alive, exists, visible and renderable all to true. Also resets the outOfBounds state.
	 * If the Rope has a physics body that too is reset.
	 */
	function reset (x:Float, y:Float):Dynamic;
	
	/**
	 * A Rope will call it's updateAnimation function on each update loop if it has one
	 */
	var updateAnimation:Dynamic;
	
}
