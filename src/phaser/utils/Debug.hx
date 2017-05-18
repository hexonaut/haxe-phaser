package phaser.utils;

import haxe.extern.Rest;
import js.html.CanvasElement as HTMLCanvasElement;
import js.html.CanvasRenderingContext2D;

/**
* A collection of methods for displaying debug information about game objects.
* 
* If your game is running in Canvas mode, then you should invoke all of the Debug methods from
* your games `render` function. This is because they are drawn directly onto the game canvas
* itself, so if you call any debug methods outside of `render` they are likely to be overwritten
* by the game itself.
* 
* If your game is running in WebGL then Debug will create a Sprite that is placed at the top of the Stage display list and bind a canvas texture
* to it, which must be uploaded every frame. Be advised: this is very expensive, especially in browsers like Firefox. So please only enable Debug
* in WebGL mode if you really need it (or your desktop can cope with it well) and disable it for production!
*/
@:native("Phaser.Utils.Debug")
extern class Debug {

	/**
	* A collection of methods for displaying debug information about game objects.
	* 
	* If your game is running in Canvas mode, then you should invoke all of the Debug methods from
	* your games `render` function. This is because they are drawn directly onto the game canvas
	* itself, so if you call any debug methods outside of `render` they are likely to be overwritten
	* by the game itself.
	* 
	* If your game is running in WebGL then Debug will create a Sprite that is placed at the top of the Stage display list and bind a canvas texture
	* to it, which must be uploaded every frame. Be advised: this is very expensive, especially in browsers like Firefox. So please only enable Debug
	* in WebGL mode if you really need it (or your desktop can cope with it well) and disable it for production!
	* 
	* @param game A reference to the currently running game.
	*/
	function new(game:phaser.Game);
	
	/**
	* In WebGL mode this BitmapData contains a copy of the debug canvas.
	*/
	var bmd:phaser.BitmapData;
	
	/**
	* The canvas to which Debug calls draws.
	*/
	var canvas:HTMLCanvasElement;
	
	/**
	* The spacing between columns.
	*/
	var columnWidth:Float;
	
	/**
	* The 2d context of the canvas.
	*/
	var context:CanvasRenderingContext2D;
	
	/**
	* The alpha of the Debug context, set before all debug information is rendered to it.
	* Default: 1
	*/
	var currentAlpha:Float;
	
	/**
	* The current X position the debug information will be rendered at.
	*/
	var currentX:Float;
	
	/**
	* The current Y position the debug information will be rendered at.
	*/
	var currentY:Float;
	
	/**
	* Does the canvas need re-rendering?
	*/
	var dirty:Bool;
	
	/**
	* The font that the debug information is rendered in.
	* Default: '14px Courier'
	*/
	var font:String;
	
	/**
	* A reference to the currently running Game.
	*/
	var game:phaser.Game;
	
	/**
	* The line height between the debug text.
	*/
	var lineHeight:Float;
	
	/**
	* Should the text be rendered with a slight shadow? Makes it easier to read on different types of background.
	*/
	var renderShadow:Bool;
	
	/**
	* If debugging in WebGL mode we need this.
	*/
	var sprite:phaser.Image;
	
	/**
	* Debug method to draw the last calculated path by AStar
	* 
	* @param astar - The AStar plugin that you want to debug.
	* @param x X position on camera for debug display.
	* @param y Y position on camera for debug display.
	* @param color Color to stroke the path line.
	*/
	function AStar(astar:phaser.plugin.AStar, x:Float, y:Float, showVisited:Bool):Void;
	
	/**
	* Internal method that boots the debug displayer.
	*/
	function boot():Void;
	
	/**
	* Render a Sprites Physics body if it has one set. The body is rendered as a filled or stroked rectangle.
	* This only works for Arcade Physics, Ninja Physics (AABB and Circle only) and Box2D Physics bodies.
	* To display a P2 Physics body you should enable debug mode on the body when creating it.
	* 
	* @param sprite The Sprite who's body will be rendered.
	* @param color Color of the debug rectangle to be rendered. The format is a CSS color string such as '#ff0000' or 'rgba(255,0,0,0.5)'. - Default: 'rgba(0,255,0,0.4)'
	* @param filled Render the body as a filled rectangle (true) or a stroked rectangle (false) - Default: true
	*/
	function body(sprite:phaser.Sprite, ?color:String, ?filled:Bool):Void;
	
	/**
	* Render a Sprites Physic Body information.
	* 
	* @param sprite The sprite to be rendered.
	* @param x X position of the debug info to be rendered.
	* @param y Y position of the debug info to be rendered.
	* @param color color of the debug info to be rendered. (format is css color string). - Default: 'rgb(255,255,255)'
	*/
	function bodyInfo(sprite:phaser.Sprite, x:Float, y:Float, ?color:String):Void;
	
	/**
	* Renders 'debug draw' data for the given Box2D body.
	* This uses the standard debug drawing feature of Box2D, so colors will be decided by the Box2D engine.
	* 
	* @param sprite The sprite whos body will be rendered.
	* @param color color of the debug info to be rendered. (format is css color string). - Default: 'rgb(0,255,0)'
	*/
	function box2dBody(body:phaser.Sprite, ?color:String):Void;
	
	/**
	* Renders 'debug draw' data for the Box2D world if it exists.
	* This uses the standard debug drawing feature of Box2D, so colors will be decided by
	* the Box2D engine.
	*/
	function box2dWorld():Void;
	
	/**
	* Render camera information including dimensions and location.
	* 
	* @param camera The Phaser.Camera to show the debug information for.
	* @param x X position of the debug info to be rendered.
	* @param y Y position of the debug info to be rendered.
	* @param color color of the debug info to be rendered. (format is css color string). - Default: 'rgb(255,255,255)'
	*/
	function cameraInfo(camera:phaser.Camera, x:Float, y:Float, ?color:String):Void;
	
	/**
	* Destroy this object.
	*/
	function destroy():Void;
	
	/**
	* Renders a Phaser geometry object including Rectangle, Circle, Point or Line.
	* 
	* @param object The geometry object to render.
	* @param color Color of the debug info to be rendered (format is css color string).
	* @param filled Render the objected as a filled (default, true) or a stroked (false) - Default: true
	* @param forceType Force rendering of a specific type. If 0 no type will be forced, otherwise 1 = Rectangle, 2 = Circle, 3 = Point and 4 = Line.
	*/
	function geom(object:Dynamic, ?color:String, ?fiiled:Bool, ?forceType:Float):Void;
	
	/**
	* Render debug information about the Input object.
	* 
	* @param x X position of the debug info to be rendered.
	* @param y Y position of the debug info to be rendered.
	* @param color color of the debug info to be rendered. (format is css color string). - Default: 'rgb(255,255,255)'
	*/
	function inputInfo(x:Float, y:Float, ?color:String):Void;
	
	/**
	* Renders Line information in the given color.
	* 
	* @param line The Line to display the data for.
	* @param x X position of the debug info to be rendered.
	* @param y Y position of the debug info to be rendered.
	* @param color color of the debug info to be rendered. (format is css color string). - Default: 'rgb(255,255,255)'
	*/
	function lineInfo(line:phaser.Line, x:Float, y:Float, ?color:String):Void;
	
	/**
	* Renders Phaser.Key object information.
	* 
	* @param key The Key to render the information for.
	* @param x X position of the debug info to be rendered.
	* @param y Y position of the debug info to be rendered.
	* @param color color of the debug info to be rendered. (format is css color string). - Default: 'rgb(255,255,255)'
	*/
	function key(key:phaser.Key, ?x:Float, ?y:Float, ?color:String):Void;
	
	/**
	* Internal method that outputs a single line of text split over as many columns as needed, one per parameter.
	*/
	function line(args:Rest<String>):Void;
	
	/**
	* Internal method that clears the canvas (if a Sprite) ready for a new debug session.
	*/
	function preUpdate():Void;
	
	/**
	* Renders a single pixel at the given size.
	* 
	* @param x X position of the pixel to be rendered.
	* @param y Y position of the pixel to be rendered.
	* @param color Color of the pixel (format is css color string).
	* @param size The 'size' to render the pixel at. - Default: 2
	*/
	function pixel(x:Float, y:Float, ?color:String, ?size:Float):Void;
	
	/**
	* Renders the Pointer.circle object onto the stage in green if down or red if up along with debug text.
	* 
	* @param pointer The Pointer you wish to display.
	* @param hideIfUp Doesn't render the circle if the pointer is up.
	* @param downColor The color the circle is rendered in if down. - Default: 'rgba(0,255,0,0.5)'
	* @param upColor The color the circle is rendered in if up (and hideIfUp is false). - Default: 'rgba(255,0,0,0.5)'
	* @param color color of the debug info to be rendered. (format is css color string). - Default: 'rgb(255,255,255)'
	*/
	function pointer(pointer:phaser.Pointer, ?hideIfUp:Bool, ?downColor:String, ?upColor:String, ?color:String):Void;
	
	/**
	* Visually renders a QuadTree to the display.
	* 
	* @param quadtree The quadtree to render.
	* @param color The color of the lines in the quadtree.
	*/
	function quadTree(quadtree:phaser.QuadTree, ?color:String):Void;
	
	function rectangle(object:phaser.Rectangle, ?color:String, ?filled:Bool):Void;
	
	/**
	* Clears the Debug canvas.
	*/
	function reset():Void;
	
	/**
	* Renders the Rope's segments. Note: This is really expensive as it has to calculate new segments every time you call it
	* 
	* @param rope The rope to display the segments of.
	* @param color Color of the debug info to be rendered (format is css color string).
	* @param filled Render the rectangle as a fillRect (default, true) or a strokeRect (false) - Default: true
	*/
	function ropeSegments(rope:phaser.Rope, ?color:Float, ?filled:Bool):Void;
	
	/**
	* Render Sound information, including decoded state, duration, volume and more.
	* 
	* @param sound The sound object to debug.
	* @param x X position of the debug info to be rendered.
	* @param y Y position of the debug info to be rendered.
	* @param color color of the debug info to be rendered. (format is css color string). - Default: 'rgb(255,255,255)'
	*/
	function soundInfo(sound:phaser.Sound, x:Float, y:Float, ?color:String):Void;
	
	/**
	* Renders the Sprites bounds. Note: This is really expensive as it has to calculate the bounds every time you call it!
	* 
	* @param sprite The sprite to display the bounds of.
	* @param color Color of the debug info to be rendered (format is css color string).
	* @param filled Render the rectangle as a fillRect (default, true) or a strokeRect (false) - Default: true
	*/
	function spriteBounds(sprite:Dynamic, ?color:String, ?filled:Bool):Void;
	
	/**
	* Renders the sprite coordinates in local, positional and world space.
	* 
	* @param sprite The sprite to display the coordinates for.
	* @param x X position of the debug info to be rendered.
	* @param y Y position of the debug info to be rendered.
	* @param color color of the debug info to be rendered. (format is css color string). - Default: 'rgb(255,255,255)'
	*/
	function spriteCoords(sprite:Dynamic, x:Float, y:Float, ?color:String):Void;
	
	/**
	* Render debug infos (including name, bounds info, position and some other properties) about the Sprite.
	* 
	* @param sprite The Sprite to display the information of.
	* @param x X position of the debug info to be rendered.
	* @param y Y position of the debug info to be rendered.
	* @param color color of the debug info to be rendered. (format is css color string). - Default: 'rgb(255,255,255)'
	*/
	function spriteInfo(sprite:phaser.Sprite, x:Float, y:Float, ?color:String):Void;
	
	/**
	* Render Sprite Input Debug information.
	* 
	* @param sprite The sprite to display the input data for.
	* @param x X position of the debug info to be rendered.
	* @param y Y position of the debug info to be rendered.
	* @param color color of the debug info to be rendered. (format is css color string). - Default: 'rgb(255,255,255)'
	*/
	function spriteInputInfo(sprite:phaser.Sprite, x:Float, y:Float, ?color:String):Void;
	
	/**
	* Internal method that resets and starts the debug output values.
	* 
	* @param x The X value the debug info will start from.
	* @param y The Y value the debug info will start from.
	* @param color The color the debug text will drawn in. - Default: 'rgb(255,255,255)'
	* @param columnWidth The spacing between columns.
	*/
	function start(?x:Float, ?y:Float, ?color:String, ?columnWidth:Float):Void;
	
	/**
	* Internal method that stops the debug output.
	*/
	function stop():Void;
	
	/**
	* Render a string of text.
	* 
	* @param text The line of text to draw.
	* @param x X position of the debug info to be rendered.
	* @param y Y position of the debug info to be rendered.
	* @param color Color of the debug info to be rendered (format is css color string).
	* @param font The font of text to draw.
	*/
	function text(text:String, x:Float, y:Float, ?color:String, ?font:String):Void;
	
	/**
	* Render Timer information.
	* 
	* @param timer The Phaser.Timer to show the debug information for.
	* @param x X position of the debug info to be rendered.
	* @param y Y position of the debug info to be rendered.
	* @param color color of the debug info to be rendered. (format is css color string). - Default: 'rgb(255,255,255)'
	*/
	function timer(timer:phaser.Timer, x:Float, y:Float, ?color:String):Void;
	
}

