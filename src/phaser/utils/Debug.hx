package phaser.utils;

@:native("Phaser.Utils.Debug")
extern class Debug {
	
	/**
	 * A collection of methods for displaying debug information about game objects.
	 * If your game is running in WebGL then Debug will create a Sprite that is placed at the top of the Stage display list and bind a canvas texture
	 * to it, which must be uploaded every frame. Be advised: this is very expensive, especially in browsers like Firefox. So please only enable Debug
	 * in WebGL mode if you really need it (or your desktop can cope with it well) and disable it for production!
	 * If your game is using a Canvas renderer then the debug information is literally drawn on the top of the active game canvas and no Sprite is used.
	 */
	function new (game:phaser.core.Game);
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * If debugging in WebGL mode we need this.
	 */
	var sprite:phaser.gameobjects.Image;
	
	/**
	 * In WebGL mode this BitmapData contains a copy of the debug canvas.
	 */
	var bmd:phaser.gameobjects.BitmapData;
	
	/**
	 * The canvas to which Debug calls draws.
	 */
	var canvas:Dynamic;
	
	/**
	 * The 2d context of the canvas.
	 */
	var context:Dynamic;
	
	/**
	 * The font that the debug information is rendered in.
	 */
	var font:String;
	
	/**
	 * The spacing between columns.
	 */
	var columnWidth:Float;
	
	/**
	 * The line height between the debug text.
	 */
	var lineHeight:Float;
	
	/**
	 * Should the text be rendered with a slight shadow? Makes it easier to read on different types of background.
	 */
	var renderShadow:Bool;
	
	/**
	 * The current X position the debug information will be rendered at.
	 */
	var currentX:Float;
	
	/**
	 * The current Y position the debug information will be rendered at.
	 */
	var currentY:Float;
	
	/**
	 * The current alpha the debug information will be rendered at.
	 */
	var currentAlpha:Float;
	
	/**
	 * Does the canvas need re-rendering?
	 */
	var dirty:Bool;
	
	/**
	 * Internal method that boots the debug displayer.
	 */
	function boot ():Void;
	
	/**
	 * Internal method that clears the canvas (if a Sprite) ready for a new debug session.
	 */
	function preUpdate ():Void;
	
	/**
	 * Clears the Debug canvas.
	 */
	function reset ():Void;
	
	/**
	 * Internal method that resets and starts the debug output values.
	 */
	function start (?x:Float = 0, ?y:Float = 0, ?color:String = 'rgb(255,255,255)', ?columnWidth:Float = 0):Void;
	
	/**
	 * Internal method that stops the debug output.
	 */
	function stop ():Void;
	
	/**
	 * Internal method that outputs a single line of text split over as many columns as needed, one per parameter.
	 */
	function line ():Void;
	
	/**
	 * Render Sound information, including decoded state, duration, volume and more.
	 */
	function soundInfo (sound:phaser.sound.Sound, x:Float, y:Float, ?color:String = 'rgb(255,255,255)'):Void;
	
	/**
	 * Render camera information including dimensions and location.
	 */
	function cameraInfo (camera:phaser.core.Camera, x:Float, y:Float, ?color:String = 'rgb(255,255,255)'):Void;
	
	/**
	 * Render Timer information.
	 */
	function timer (timer:phaser.time.Timer, x:Float, y:Float, ?color:String = 'rgb(255,255,255)'):Void;
	
	/**
	 * Renders the Pointer.circle object onto the stage in green if down or red if up along with debug text.
	 */
	function pointer (pointer:phaser.input.Pointer, ?hideIfUp:Bool = false, ?downColor:String = 'rgba(0,255,0,0.5)', ?upColor:String = 'rgba(255,0,0,0.5)', ?color:String = 'rgb(255,255,255)'):Void;
	
	/**
	 * Render Sprite Input Debug information.
	 */
	@:overload(function (sprite:phaser.gameobjects.Sprite, x:Float, y:Float, ?color:String = 'rgb(255,255,255)'):Void {})
	function spriteInputInfo (sprite:phaser.gameobjects.Image, x:Float, y:Float, ?color:String = 'rgb(255,255,255)'):Void;
	
	/**
	 * Renders Phaser.Key object information.
	 */
	function key (key:phaser.input.Key, x:Float, y:Float, ?color:String = 'rgb(255,255,255)'):Void;
	
	/**
	 * Render debug information about the Input object.
	 */
	function inputInfo (x:Float, y:Float, ?color:String = 'rgb(255,255,255)'):Void;
	
	/**
	 * Renders the Sprites bounds. Note: This is really expensive as it has to calculate the bounds every time you call it!
	 */
	@:overload(function (sprite:phaser.gameobjects.Sprite, ?color:String, ?filled:Bool = true):Void {})
	function spriteBounds (sprite:phaser.gameobjects.Image, ?color:String, ?filled:Bool = true):Void;
	
	/**
	 * Renders the Rope's segments. Note: This is really expensive as it has to calculate new segments everytime you call it
	 */
	function ropeSegments (rope:phaser.gameobjects.Rope, ?color:String, ?filled:Bool = true):Void;
	
	/**
	 * Render debug infos (including name, bounds info, position and some other properties) about the Sprite.
	 */
	function spriteInfo (sprite:phaser.gameobjects.Sprite, x:Float, y:Float, ?color:String = 'rgb(255,255,255)'):Void;
	
	/**
	 * Renders the sprite coordinates in local, positional and world space.
	 */
	@:overload(function (sprite:phaser.gameobjects.Sprite, x:Float, y:Float, ?color:String = 'rgb(255,255,255)'):Void {})
	function spriteCoords (sprite:phaser.gameobjects.Image, x:Float, y:Float, ?color:String = 'rgb(255,255,255)'):Void;
	
	/**
	 * Renders Line information in the given color.
	 */
	function lineInfo (line:phaser.geom.Line, x:Float, y:Float, ?color:String = 'rgb(255,255,255)'):Void;
	
	/**
	 * Renders a single pixel at the given size.
	 */
	function pixel (x:Float, y:Float, ?color:String, ?size:Float = 2):Void;
	
	/**
	 * Renders a Phaser geometry object including Rectangle, Circle, Point or Line.
	 */
	@:overload(function (object:phaser.geom.Rectangle, ?color:String, ?filled:Bool = true, ?forceType:Float = 0):Void {})
	@:overload(function (object:phaser.geom.Circle, ?color:String, ?filled:Bool = true, ?forceType:Float = 0):Void {})
	@:overload(function (object:phaser.geom.Point, ?color:String, ?filled:Bool = true, ?forceType:Float = 0):Void {})
	function geom (object:phaser.geom.Line, ?color:String, ?filled:Bool = true, ?forceType:Float = 0):Void;
	
	/**
	 * Render a string of text.
	 */
	function text (text:String, x:Float, y:Float, ?color:String, ?font:String):Void;
	
	/**
	 * Visually renders a QuadTree to the display.
	 */
	function quadTree (quadtree:phaser.math.QuadTree, color:String):Void;
	
	/**
	 * Render a Sprites Physics body if it has one set. Note this only works for Arcade and
	 * Ninja (AABB, circle only) Physics.
	 * To display a P2 body you should enable debug mode on the body when creating it.
	 */
	function body (sprite:phaser.gameobjects.Sprite, ?color:String = 'rgba(0,255,0,0.4)', ?filled:Bool = true):Void;
	
	/**
	 * Render a Sprites Physic Body information.
	 */
	function bodyInfo (sprite:phaser.gameobjects.Sprite, x:Float, y:Float, ?color:String = 'rgb(255,255,255)'):Void;
	
	/**
	 * Renders 'debug draw' data for the Box2D world if it exists.
	 * This uses the standard debug drawing feature of Box2D, so colors will be decided by
	 * the Box2D engine.
	 */
	function box2dWorld ():Void;
	
	/**
	 * Renders 'debug draw' data for the given Box2D body.
	 * This uses the standard debug drawing feature of Box2D, so colors will be decided by the Box2D engine.
	 */
	function box2dBody (sprite:phaser.gameobjects.Sprite, ?color:String = 'rgb(0,255,0)'):Void;
	
}
