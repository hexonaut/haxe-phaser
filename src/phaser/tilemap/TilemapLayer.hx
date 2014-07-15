package phaser.tilemap;

@:native("Phaser.TilemapLayer")
extern class TilemapLayer {
	
	/**
	 * A Tilemap Layer is a set of map data combined with a Tileset in order to render that data to the game.
	 */
	function new (game:phaser.core.Game, tilemap:phaser.tilemap.Tilemap, index:Float, width:Float, height:Float);
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The Tilemap to which this layer is bound.
	 */
	var map:phaser.tilemap.Tilemap;
	
	/**
	 * The index of this layer within the Tilemap.
	 */
	var index:Float;
	
	/**
	 * The layer object within the Tilemap that this layer represents.
	 */
	var layer:Dynamic;
	
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
	var type:Float;
	
	/**
	 * An object that is fixed to the camera ignores the position of any ancestors in the display list and uses its x/y coordinates as offsets from the top left of the camera.
	 */
	var fixedToCamera:Bool;
	
	/**
	 * If this object is fixed to the camera then use this Point to specify how far away from the Camera x/y it's rendered.
	 */
	var cameraOffset:Dynamic;
	
	/**
	 * If no tileset is given the tiles will be rendered as rectangles in this color. Provide in hex or rgb/rgba string format.
	 */
	var tileColor:String;
	
	/**
	 * If set to true the collideable tile edges path will be rendered. Only works when game is running in Phaser.CANVAS mode.
	 */
	var debug:Bool;
	
	/**
	 * If debug is true then the tileset is rendered with this alpha level, to make the tile edges clearer.
	 */
	var debugAlpha:Float;
	
	/**
	 * If debug is true this is the color used to outline the edges of collidable tiles. Provide in hex or rgb/rgba string format.
	 */
	var debugColor:String;
	
	/**
	 * If true the debug tiles are filled with debugFillColor AND stroked around.
	 */
	var debugFill:Bool;
	
	/**
	 * If debugFill is true this is the color used to fill the tiles. Provide in hex or rgb/rgba string format.
	 */
	var debugFillColor:String;
	
	/**
	 * If debug is true this is the color used to outline the edges of tiles that have collision callbacks. Provide in hex or rgb/rgba string format.
	 */
	var debugCallbackColor:String;
	
	/**
	 * speed at which this layer scrolls
	 * horizontally, relative to the camera (e.g. scrollFactorX of 0.5 scrolls
	 * half as quickly as the 'normal' camera-locked layers do)
	 */
	var scrollFactorX:Float;
	
	/**
	 * speed at which this layer scrolls
	 * vertically, relative to the camera (e.g. scrollFactorY of 0.5 scrolls
	 * half as quickly as the 'normal' camera-locked layers do)
	 */
	var scrollFactorY:Float;
	
	/**
	 * Flag controlling when to re-render the layer.
	 */
	var dirty:Bool;
	
	/**
	 * When ray-casting against tiles this is the number of steps it will jump. For larger tile sizes you can increase this to improve performance.
	 */
	var rayStepRate:Float;
	
	/**
	 * Flag controlling if the layer tiles wrap at the edges. Only works if the World size matches the Map size.
	 */
	var wrap:Bool;
	
	/**
	 * Local map data and calculation cache.
	 */
	var _mc:Dynamic;
	
	/**
	 * Local render loop var to help avoid gc spikes.
	 */
	var _results:Array<Dynamic>;
	
	/**
	 * Automatically called by World.postUpdate. Handles cache updates.
	 */
	function postUpdate ():Void;
	
	/**
	 * Sets the world size to match the size of this layer.
	 */
	function resizeWorld ():Void;
	
	/**
	 * Take an x coordinate that doesn't account for scrollFactorX and 'fix' it
	 * into a scrolled local space. Used primarily internally
	 */
	function _fixX (x:Float):Float;
	
	/**
	 * Take an x coordinate that <em>does</em> account for scrollFactorX and 'unfix' it
	 * back to camera space. Used primarily internally
	 */
	function _unfixX (x:Float):Float;
	
	/**
	 * Take a y coordinate that doesn't account for scrollFactorY and 'fix' it
	 * into a scrolled local space. Used primarily internally
	 */
	function _fixY (y:Float):Float;
	
	/**
	 * Take a y coordinate that <em>does</em> account for scrollFactorY and 'unfix' it
	 * back to camera space. Used primarily internally
	 */
	function _unfixY (y:Float):Float;
	
	/**
	 * Convert a pixel value to a tile coordinate.
	 */
	function getTileX (x:Float):phaser.tilemap.Tile;
	
	/**
	 * Convert a pixel value to a tile coordinate.
	 */
	function getTileY (y:Float):phaser.tilemap.Tile;
	
	/**
	 * Convert a pixel value to a tile coordinate.
	 */
	@:overload(function (x:Float, y:Float, point:Dynamic):Dynamic {})
	function getTileXY (x:Float, y:Float, point:Dynamic):Dynamic;
	
	/**
	 * Gets all tiles that intersect with the given line.
	 */
	function getRayCastTiles (line:phaser.geom.Line, ?stepRate:Float, ?collides:Bool = false, ?interestingFace:Bool = false):Dynamic;
	
	/**
	 * Get all tiles that exist within the given area, defined by the top-left corner, width and height. Values given are in pixels, not tiles.
	 */
	function getTiles (x:Float, y:Float, width:Float, height:Float, ?collides:Bool = false, ?interestingFace:Bool = false):Dynamic;
	
	/**
	 * Internal function to update maximum values.
	 */
	function updateMax ():Void;
	
	/**
	 * Renders the tiles to the layer canvas and pushes to the display.
	 */
	function render ():Void;
	
	/**
	 * Renders a collision debug overlay on-top of the canvas. Called automatically by render when debug = true.
	 */
	function renderDebug ():Void;
	
	/**
	 * @name Phaser.TilemapLayer#scrollX
	 */
	var scrollX:Float;
	
	/**
	 * @name Phaser.TilemapLayer#scrollY
	 */
	var scrollY:Float;
	
	/**
	 * @name Phaser.TilemapLayer#collisionWidth
	 */
	var collisionWidth:Float;
	
	/**
	 * @name Phaser.TilemapLayer#collisionHeight
	 */
	var collisionHeight:Float;
	
}
