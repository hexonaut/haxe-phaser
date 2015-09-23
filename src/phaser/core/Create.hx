package phaser.core;

@:native("Phaser.Create")
extern class Create {
	
	/**
	 * The Phaser.Create class is a collection of smaller helper methods that allow you to generate game content
	 * quickly and easily, without the need for any external files. You can create textures for sprites and in
	 * coming releases we'll add dynamic sound effect generation support as well (like sfxr).
	 * 
	 * Access this via State.create (or this.create from within a State object)
	 */
	function new (game:phaser.core.Game);
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The internal BitmapData Create uses to generate textures from.
	 */
	var bmd:phaser.gameobjects.BitmapData;
	
	/**
	 * The canvas the BitmapData uses.
	 */
	var canvas:Dynamic;
	
	/**
	 * The 2d context of the canvas.
	 */
	var ctx:Dynamic;
	
	/**
	 * A range of 16 color palettes for use with sprite generation.
	 */
	var palettes:Array<Dynamic>;
	
	/**
	 * Generates a new PIXI.Texture from the given data, which can be applied to a Sprite.
	 * 
	 * This allows you to create game graphics quickly and easily, with no external files but that use actual proper images
	 * rather than Phaser.Graphics objects, which are expensive to render and limited in scope.
	 * 
	 * Each element of the array is a string holding the pixel color values, as mapped to one of the Phaser.Create PALETTE consts.
	 * 
	 * For example:
	 * 
	 * var data = [
	 *   ' 333 ',
	 *   ' 777 ',
	 *   'E333E',
	 *   ' 333 ',
	 *   ' 3 3 '
	 * ];
	 * 
	 * game.create.texture('bob', data);
	 * 
	 * The above will create a new texture called bob, which will look like a little man wearing a hat. You can then use it
	 * for sprites the same way you use any other texture: game.add.sprite(0, 0, 'bob');
	 */
	function texture (key:String, data:Array<Dynamic>, ?pixelWidth:Int = 8, ?pixelHeight:Int = 8, ?palette:Int = 0):phaser.pixi.textures.Texture;
	
	/**
	 * Creates a grid texture based on the given dimensions.
	 */
	function grid (key:String, width:Int, height:Int, cellWidth:Int, cellHeight:Int, color:String):phaser.pixi.textures.Texture;
	
}
