package phaser;

import js.html.CanvasElement as HTMLCanvasElement;
import js.html.CanvasRenderingContext2D;

/**
* A TilemapLayer is a Phaser.Image/Sprite that renders a specific TileLayer of a Tilemap.
* 
* Since a TilemapLayer is a Sprite it can be moved around the display, added to other groups or display objects, etc.
* 
* By default TilemapLayers have fixedToCamera set to `true`. Changing this will break Camera follow and scrolling behavior.
*/
@:native("Phaser.TilemapLayer")
extern class TilemapLayer extends phaser.Sprite {

	/**
	* A TilemapLayer is a Phaser.Image/Sprite that renders a specific TileLayer of a Tilemap.
	* 
	* Since a TilemapLayer is a Sprite it can be moved around the display, added to other groups or display objects, etc.
	* 
	* By default TilemapLayers have fixedToCamera set to `true`. Changing this will break Camera follow and scrolling behavior.
	* 
	* @param game Game reference to the currently running game.
	* @param tilemap The tilemap to which this layer belongs.
	* @param index The index of the TileLayer to render within the Tilemap.
	* @param width Width of the renderable area of the layer (in pixels).
	* @param height Height of the renderable area of the layer (in pixels).
	*/
	function new(game:phaser.Game, tilemap:phaser.Tilemap, index:Float, ?width:Float, ?height:Float);
	
	/**
	* The canvas to which this TilemapLayer draws.
	*/
	var canvas:HTMLCanvasElement;
	
	var collisionHeight:Float;
	
	var collisionWidth:Float;
	
	/**
	* The 2d context of the canvas.
	*/
	var context:CanvasRenderingContext2D;
	
	/**
	* Enable an additional "debug rendering" pass to display collision information.
	*/
	@:native("debug")
	var TilemapLayer_debug:Bool;
	
	var debugAlpha:Float;
	
	var debugCallbackColor:String;
	
	var debugColor:String;
	
	/**
	* Settings used for debugging and diagnostics.
	*/
	var debugSettings:{missingImageFill:String, debuggedTileOverfill:String, forceFullRedraw:Bool, debugAlpha:Float, facingEdgeStroke:String, collidingTileOverfill:String};
	
	/**
	* If true tiles will be force rendered, even if such is not believed to be required.
	*/
	var dirty:Bool;
	
	/**
	* Controls if the core game loop and physics update this game object or not.
	*/
	@:native("exists")
	var TilemapLayer_exists:Bool;
	
	/**
	* The index of this layer within the Tilemap.
	*/
	var index:Float;
	
	/**
	* The layer object within the Tilemap that this layer represents.
	*/
	var layer:phaser.TilemapLayer;
	
	/**
	* The Tilemap to which this layer is bound.
	*/
	var map:phaser.Tilemap;
	
	/**
	* Settings that control standard (non-diagnostic) rendering.
	* Default: {"enableScrollDelta":true,"overdrawRatio":0.2,"copyCanvas":null}
	*/
	var renderSettings:{enableScrollDelta:Bool, overdrawRatio:Float, copyCanvas:Dynamic};
	
	/**
	* Speed at which this layer scrolls horizontally, relative to the camera (e.g. scrollFactorX of 0.5 scrolls half as quickly as the 'normal' camera-locked layers do).
	* Default: 1
	*/
	var scrollFactorX:Float;
	
	/**
	* Speed at which this layer scrolls vertically, relative to the camera (e.g. scrollFactorY of 0.5 scrolls half as quickly as the 'normal' camera-locked layers do)
	* Default: 1
	*/
	var scrollFactorY:Float;
	
	var scrollX:Float;
	
	var scrollY:Float;
	
	/**
	* The const type of this object.
	* Default: Phaser.TILEMAPLAYER
	*/
	@:native("type")
	var TilemapLayer_type:Float;
	
	var wrap:Bool;
	
	/**
	* Destroys this TilemapLayer.
	*/
	@:native("destroy")
	function TilemapLayer_destroy():Void;
	
	/**
	* Gets all tiles that intersect with the given line.
	* 
	* @param line The line used to determine which tiles to return.
	* @param stepRate How many steps through the ray will we check? Defaults to `rayStepRate`. - Default: (rayStepRate)
	* @param collides If true, _only_ return tiles that collide on one or more faces.
	* @param interestingFace If true, _only_ return tiles that have interesting faces.
	* @return An array of Phaser.Tiles.
	*/
	function getRayCastTiles(line:phaser.Line, ?stepRate:Float, ?collides:Bool, ?interestingFace:Bool):Array<phaser.Tile>;
	
	/**
	* Get all tiles that exist within the given area, defined by the top-left corner, width and height. Values given are in pixels, not tiles.
	* 
	* @param x X position of the top left corner (in pixels).
	* @param y Y position of the top left corner (in pixels).
	* @param width Width of the area to get (in pixels).
	* @param height Height of the area to get (in pixels).
	* @param collides If true, _only_ return tiles that collide on one or more faces.
	* @param interestingFace If true, _only_ return tiles that have interesting faces.
	* @return An array of Tiles.
	*/
	function getTiles(x:Float, y:Float, width:Float, height:Float, ?collides:Bool, ?interestingFace:Bool):Array<phaser.Tile>;
	
	/**
	* Convert a pixel value to a tile coordinate.
	* 
	* @param x X position of the point in target tile (in pixels).
	* @return The X map location of the tile.
	*/
	function getTileX(x:Float):Float;
	
	/**
	* Convert a pixel coordinate to a tile coordinate.
	* 
	* @param x X position of the point in target tile (in pixels).
	* @param y Y position of the point in target tile (in pixels).
	* @param point The Point/object to update.
	* @return A Point/object with its `x` and `y` properties set.
	*/
	function getTileXY(x:Float, y:Float, point:phaser.Point):phaser.Point;
	
	/**
	* Convert a pixel value to a tile coordinate.
	* 
	* @param y Y position of the point in target tile (in pixels).
	* @return The Y map location of the tile.
	*/
	function getTileY(y:Float):Float;
	
	/**
	* Automatically called by World.postUpdate. Handles cache updates.
	*/
	@:native("postUpdate")
	function TilemapLayer_postUpdate():Void;
	
	/**
	* Renders the tiles to the layer canvas and pushes to the display.
	*/
	function render():Void;
	
	/**
	* Resizes the internal canvas and texture frame used by this TilemapLayer.
	* 
	* This is an expensive call, so don't bind it to a window resize event! But instead call it at carefully
	* selected times.
	* 
	* Be aware that no validation of the new sizes takes place and the current map scroll coordinates are not
	* modified either. You will have to handle both of these things from your game code if required.
	* 
	* @param width The new width of the TilemapLayer
	* @param height The new height of the TilemapLayer
	*/
	function resize(width:Float, height:Float):Void;
	
	/**
	* Sets the world size to match the size of this layer.
	*/
	function resizeWorld():Void;
	
	/**
	* The TilemapLayer caches tileset look-ups.
	* 
	* Call this method of clear the cache if tilesets have been added or updated after the layer has been rendered.
	*/
	function resetTilesetCache():Void;
	
	/**
	* This method will set the scale of the tilemap as well as update the underlying block data of this layer.
	* 
	* @param xScale The scale factor along the X-plane - Default: 1
	* @param yScale The scale factor along the Y-plane
	*/
	function setScale(?xScale:Float, ?yScale:Float):Void;
	
	function updateMax():Void;
	
	function getTileOffsetX():Float;
	
	/**
	* Get the Y axis position offset of this layer's tiles.
	*/
	function getTileOffsetY():Float;
	
}

