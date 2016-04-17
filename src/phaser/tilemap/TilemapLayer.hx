package phaser.tilemap;

@:native("Phaser.TilemapLayer")
extern class TilemapLayer extends phaser.gameobjects.Sprite {
	
	/**
	 * The Tilemap to which this layer is bound.
	 */
	var map(default, null):phaser.tilemap.Tilemap;
	
	/**
	 * The index of this layer within the Tilemap.
	 */
	var index(default, null):Float;
	
	/**
	 * The layer object within the Tilemap that this layer represents.
	 */
	var layer(default, null):Dynamic;
	
	/**
	 * The canvas to which this TilemapLayer draws.
	 */
	var canvas:Dynamic;
	
	/**
	 * The 2d context of the canvas.
	 */
	var context:Dynamic;
	
	/**
	 * Settings that control standard (non-diagnostic) rendering.
	 */
	var copyCanvas:Dynamic;
	
	/**
	 * Settings used for debugging and diagnostics.
	 */
	var collidingTileOverfill:Dynamic;
	
	/**
	 * Speed at which this layer scrolls horizontally, relative to the camera (e.g. scrollFactorX of 0.5 scrolls half as quickly as the 'normal' camera-locked layers do).
	 */
	var scrollFactorX:Float;
	
	/**
	 * Speed at which this layer scrolls vertically, relative to the camera (e.g. scrollFactorY of 0.5 scrolls half as quickly as the 'normal' camera-locked layers do)
	 */
	var scrollFactorY:Float;
	
	/**
	 * If true tiles will be force rendered, even if such is not believed to be required.
	 */
	var dirty:Bool;
	
	/**
	 * When ray-casting against tiles this is the number of steps it will jump. For larger tile sizes you can increase this to improve performance.
	 */
	var rayStepRate:Int;
	
	/**
	 * Flag controlling if the layer tiles wrap at the edges.
	 */
	var wrap:Bool;
	
	/**
	 * Local map data and calculation cache.
	 */
	var mc:Dynamic;
	
	/**
	 * The current canvas left after scroll is applied.
	 */
	var scrollX:Float;
	
	/**
	 * The current canvas top after scroll is applied.
	 */
	var _scrollY:Dynamic;
	
	/**
	 * Used for caching the tiles / array of tiles.
	 */
	var results:Dynamic;
	
	/**
	 * Create if needed (and return) a shared copy canvas that is shared across all TilemapLayers.
	 * 
	 * Code that uses the canvas is responsible to ensure the dimensions and save/restore state as appropriate.
	 */
	static function ensureSharedCopyCanvas ():Void;
	
	/**
	 * Automatically called by World.preUpdate.
	 */
	function preUpdate ():Void;
	
	/**
	 * Automatically called by World.postUpdate. Handles cache updates.
	 */
	function postUpdate ():Void;
	
	/**
	 * Resizes the internal canvas and texture frame used by this TilemapLayer.
	 * 
	 * This is an expensive call, so don't bind it to a window resize event! But instead call it at carefully
	 * selected times.
	 * 
	 * Be aware that no validation of the new sizes takes place and the current map scroll coordinates are not
	 * modified either. You will have to handle both of these things from your game code if required.
	 */
	function resize (width:Float, height:Float):Void;
	
	/**
	 * Sets the world size to match the size of this layer.
	 */
	function resizeWorld ():Void;
	
	/**
	 * Take an x coordinate that doesn't account for scrollFactorX and 'fix' it into a scrolled local space.
	 */
	function _fixX (x:Float):Float;
	
	/**
	 * Take an x coordinate that <em>does</em> account for scrollFactorX and 'unfix' it back to camera space.
	 */
	function _unfixX (x:Float):Float;
	
	/**
	 * Take a y coordinate that doesn't account for scrollFactorY and 'fix' it into a scrolled local space.
	 */
	function _fixY (y:Float):Float;
	
	/**
	 * Take a y coordinate that <em>does</em> account for scrollFactorY and 'unfix' it back to camera space.
	 */
	function _unfixY (y:Float):Float;
	
	/**
	 * Convert a pixel value to a tile coordinate.
	 */
	function getTileX (x:Float):Int;
	
	/**
	 * Convert a pixel value to a tile coordinate.
	 */
	function getTileY (y:Float):Int;
	
	/**
	 * Convert a pixel coordinate to a tile coordinate.
	 */
	@:overload(function (x:Float, y:Float, point:Dynamic):Dynamic {})
	function getTileXY (x:Float, y:Float, point:Dynamic):Dynamic;
	
	/**
	 * Gets all tiles that intersect with the given line.
	 */
	function getRayCastTiles (line:phaser.geom.Line, ?stepRate:Int, ?collides:Bool = false, ?interestingFace:Bool = false):Dynamic;
	
	/**
	 * Get all tiles that exist within the given area, defined by the top-left corner, width and height. Values given are in pixels, not tiles.
	 */
	function getTiles (x:Float, y:Float, width:Float, height:Float, ?collides:Bool = false, ?interestingFace:Bool = false):Dynamic;
	
	/**
	 * Returns the appropriate tileset for the index, updating the internal cache as required.
	 * This should only be called if tilesets[index] evaluates to undefined.
	 */
	function resolveTileset (Tile:Int):Dynamic;
	
	/**
	 * The TilemapLayer caches tileset look-ups.
	 * 
	 * Call this method of clear the cache if tilesets have been added or updated after the layer has been rendered.
	 */
	function resetTilesetCache ():Void;
	
	/**
	 * This method will set the scale of the tilemap as well as update the underlying block data of this layer.
	 */
	function setScale (?xScale:Float = 1, ?yScale:Float):Void;
	
	/**
	 * Shifts the contents of the canvas - does extra math so that different browsers agree on the result.
	 * 
	 * The specified (x/y) will be shifted to (0,0) after the copy and the newly exposed canvas area will need to be filled in.
	 */
	function shiftCanvas (context:Dynamic, x:Int, y:Int):Void;
	
	/**
	 * Render tiles in the given area given by the virtual tile coordinates biased by the given scroll factor.
	 * This will constrain the tile coordinates based on wrapping but not physical coordinates.
	 */
	function renderRegion (scrollX:Int, scrollY:Int, left:Int, top:Int, right:Int, bottom:Int):Void;
	
	/**
	 * Shifts the canvas and render damaged edge tiles.
	 */
	function renderDeltaScroll ():Void;
	
	/**
	 * Clear and render the entire canvas.
	 */
	function renderFull ():Void;
	
	/**
	 * Renders the tiles to the layer canvas and pushes to the display.
	 */
	function render ():Void;
	
	/**
	 * Renders a debug overlay on-top of the canvas. Called automatically by render when debug is true.
	 * 
	 * See debugSettings for assorted configuration options.
	 */
	function renderDebug ():Void;
	
	/**
	 * Scrolls the map vertically or returns the current y position.
	 */
	var scrollY:Float;
	
	/**
	 * The width of the collision tiles (in pixels).
	 */
	var collisionWidth:Int;
	
	/**
	 * The height of the collision tiles (in pixels).
	 */
	var collisionHeight:Int;
	
}
