package phaser;

import js.html.CanvasElement as HTMLCanvasElement;
import js.html.CanvasRenderingContext2D;

/**
* The Phaser.Create class is a collection of smaller helper methods that allow you to generate game content
* quickly and easily, without the need for any external files. You can create textures for sprites and in
* coming releases we'll add dynamic sound effect generation support as well (like sfxr).
* 
* Access this via `Game.create` (`this.game.create` from within a State object)
*/
@:native("Phaser.Create")
extern class Create {

	/**
	* The Phaser.Create class is a collection of smaller helper methods that allow you to generate game content
	* quickly and easily, without the need for any external files. You can create textures for sprites and in
	* coming releases we'll add dynamic sound effect generation support as well (like sfxr).
	* 
	* Access this via `Game.create` (`this.game.create` from within a State object)
	* 
	* @param game Game reference to the currently running game.
	*/
	function new(game:phaser.Game);
	
	/**
	* A 16 color palette by [Arne](http://androidarts.com/palette/16pal.htm)
	*/
	static var PALETTE_ARNE:Float;
	
	/**
	* A 16 color JMP inspired palette.
	*/
	static var PALETTE_JMP:Float;
	
	/**
	* A 16 color CGA inspired palette.
	*/
	static var PALETTE_CGA:Float;
	
	/**
	* A 16 color C64 inspired palette.
	*/
	static var PALETTE_C64:Float;
	
	/**
	* A 16 color palette inspired by Japanese computers like the MSX.
	*/
	static var PALETTE_JAPANESE_MACHINE:Float;
	
	/**
	* The internal BitmapData Create uses to generate textures from.
	*/
	var bmd:phaser.BitmapData;
	
	/**
	* The canvas the BitmapData uses.
	*/
	var canvas:HTMLCanvasElement;
	
	/**
	* The 2d context of the canvas.
	*/
	var ctx:CanvasRenderingContext2D;
	
	/**
	* A reference to the currently running Game.
	*/
	var game:phaser.Game;
	
	/**
	* A range of 16 color palettes for use with sprite generation.
	*/
	var palettes:Dynamic;
	
	/**
	* Creates a grid texture based on the given dimensions.
	* 
	* @param key The key used to store this texture in the Phaser Cache.
	* @param width The width of the grid in pixels.
	* @param height The height of the grid in pixels.
	* @param cellWidth The width of the grid cells in pixels.
	* @param cellHeight The height of the grid cells in pixels.
	* @param color The color to draw the grid lines in. Should be a Canvas supported color string like `#ff5500` or `rgba(200,50,3,0.5)`.
	* @return The newly generated texture.
	*/
	function grid(key:String, width:Float, height:Float, cellWidth:Float, cellHeight:Float, color:String):pixi.Texture;
	
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
	* `var data = [
	*    ' 333 ',
	*    ' 777 ',
	*    'E333E',
	*    ' 333 ',
	*    ' 3 3 '
	* ];`
	* 
	* `game.create.texture('bob', data);`
	* 
	* The above will create a new texture called `bob`, which will look like a little man wearing a hat. You can then use it
	* for sprites the same way you use any other texture: `game.add.sprite(0, 0, 'bob');`
	* 
	* @param key The key used to store this texture in the Phaser Cache.
	* @param data An array of pixel data.
	* @param pixelWidth The width of each pixel. - Default: 8
	* @param pixelHeight The height of each pixel. - Default: 8
	* @param palette The palette to use when rendering the texture. One of the Phaser.Create.PALETTE consts.
	* @return The newly generated texture.
	*/
	function texture(key:String, data:Dynamic, ?pixelWidth:Float, ?pixelHeight:Float, ?palette:Float):pixi.Texture;
	
}

