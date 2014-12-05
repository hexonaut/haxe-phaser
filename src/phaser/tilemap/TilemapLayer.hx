package phaser.tilemap;

@:native("Phaser.TilemapLayer")
extern class TilemapLayer {
	
	/**
	 * A TilemapLayer is a Phaser.Image/Sprite that renders a specific TileLayer of a Tilemap.
	 * 
	 * Since a TilemapLayer is a Sprite it can be moved around the display, added to other groups or display objects, etc.
	 * By default TilemapLayers have fixedToCamera set to true. Changing this will break Camera follow and scrolling behaviour.
	 */
	function new (game:phaser.core.Game, tilemap:phaser.tilemap.Tilemap, index:Int, width:Int, height:Int);
	
	/**
	 * A reference to the currently running Game.
	 */
	var game(default, null):phaser.core.Game;
	
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
	 * Required Pixi var.
	 */
	var baseTexture:phaser.pixi.textures.BaseTexture;
	
	/**
	 * Required Pixi var.
	 */
	var texture:phaser.pixi.textures.Texture;
	
	/**
	 * Dimensions of the renderable area.
	 */
	var textureFrame:phaser.animation.Frame;
	
	/**
	 * The name of the layer.
	 */
	var name:String;
	
	/**
	 * The const type of this object.
	 */
	var type(default, null):Float;
	
	/**
	 * An object that is fixed to the camera ignores the position of any ancestors in the display list and uses its x/y coordinates as offsets from the top left of the camera.
	 */
	var fixToCamera:Bool;
	
	/**
	 * If this object is fixed to the camera then use this Point to specify how far away from the Camera x/y it's rendered.
	 */
	var cameraOffset:phaser.geom.Point;
	
	/**
	 * Settings that control standard (non-diagnostic) rendering.
	 */
	var enableScrollDelta:Bool;
	
	/**
	 * Enable an additional "debug rendering" pass to display collision information.
	 */
	var debug:Bool;
	
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
	 * If no valid tileset/image can be found for a tile, the tile is rendered as a rectangle using this as a fill value.
	 * 
	 * Set to null to disable rendering anything for tiles without value tileset images.
	 */
	var tileColor:Dynamic;
	
	/**
	 * Automatically called by World.postUpdate. Handles cache updates.
	 */
	function postUpdate ():Void;
	
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
	 * Returns the appropriate tileset for the index, updating the internal cache as required. This should only be called if tilesets[index] evaluates to undefined.
	 */
	function resolveTileset (Tile:Int):Dynamic;
	
	/**
	 * The TilemapLayer caches tileset look-ups. Call this method of clear the cache if tilesets have been added or updated after the layer has been rendered.
	 */
	function resetTilesetCache ():Void;
	
	/**
	 * Shifts the contents of the canvas - does extra math so that different browsers agree on the result. The specified (x/y) will be shifted to (0,0) after the copy. The newly exposed canvas area will need to be filled in. This method is problematic for transparent tiles.
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
