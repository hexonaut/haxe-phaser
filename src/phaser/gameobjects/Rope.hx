package phaser.gameobjects;

@:native("Phaser.Rope")
extern class Rope extends phaser.gameobjects.components.Smoothed {
	
	/**
	 * A Rope is a Sprite that has a repeating texture.
	 * 
	 * The texture will automatically wrap on the edges as it moves.
	 * 
	 * Please note that Ropes cannot have an input handler.
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
	 * Automatically called by World.preUpdate.
	 */
	function preUpdate ():Void;
	
	/**
	 * Override and use this function in your own custom objects to handle any update requirements you may have.
	 */
	function update ():Void;
	
	/**
	 * Resets the Rope. This places the Rope at the given x/y world coordinates and then
	 * sets alive, exists, visible and renderable all to true. Also resets the outOfBounds state.
	 * If the Rope has a physics body that too is reset.
	 */
	function reset (x:Float, y:Float):phaser.gameobjects.Rope;
	
	/**
	 * A Rope will call its updateAnimation function on each update loop if it has one.
	 */
	var updateAnimation:Dynamic;
	
}
