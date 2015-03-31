package phaser.pixi.primitives;

@:native("PIXI.GraphicsData")
extern class Graphics extends phaser.pixi.display.DisplayObjectContainer {

	/**
	 * The Graphics class contains a set of methods that you can use to create primitive shapes and lines.
	 * It is important to know that with the webGL renderer only simple polygons can be filled at this stage
	 * Complex polygons will not be filled. Heres an example of a complex polygon: http://www.goodboydigital.com/wp-content/uploads/2013/06/complexPolygon.png
	 *
	 * @class Graphics
	 * @extends DisplayObjectContainer
	 * @constructor
	*/
	function new ():Void;

	/**
	 * Specifies the line style used for subsequent calls to Graphics methods such as the lineTo() method or the drawCircle() method.
	 *
	 * @method lineStyle
	 * @param lineWidth {Number} width of the line to draw, will update the object's stored style
	 * @param color {Number} color of the line to draw, will update the object's stored style
	 * @param alpha {Number} alpha of the line to draw, will update the object's stored style
	*/
	function lineStyle (lineWidth:Float, ?color:Float, ?alpha:Float):Void;

	/**
	 * Moves the current drawing position to (x, y).
	 *
	 * @method moveTo
	 * @param x {Number} the X coordinate to move to
	 * @param y {Number} the Y coordinate to move to
	*/
	function moveTo (x:Float, y:Float):Void;

	/**
	 * Draws a line using the current line style from the current drawing position to (x, y);
	 * the current drawing position is then set to (x, y).
	 *
	 * @method lineTo
	 * @param x {Number} the X coordinate to draw to
	 * @param y {Number} the Y coordinate to draw to
	*/
	function lineTo (x:Float, y:Float):Void;

	/**
	 * Calculate the points for a bezier curve.
	 *
	 * @method bezierCurveTo
	 * @param  {number}   cpX    Control point x
	 * @param  {number}   cpY    Control point y
	 * @param  {number}   cpX2   Second Control point x
	 * @param  {number}   cpY2   Second Control point y
	 * @param  {number}   toX    Destination point x
	 * @param  {number}   toY    Destination point y
	 * @return {PIXI.Graphics}
	*/
	function bezierCurveTo (cpX:Float, cpY:Float, cpX2:Float, cpY2:Float, toX:Float, toY:Float):Graphics;

	/*
	 * the arcTo() method creates an arc/curve between two tangents on the canvas.
	 * 
	 * "borrowed" from https://code.google.com/p/fxcanvas/ - thanks google!
	 *
	 * @method arcTo
	 * @param  {number}   x1        The x-coordinate of the beginning of the arc
	 * @param  {number}   y1        The y-coordinate of the beginning of the arc
	 * @param  {number}   x2        The x-coordinate of the end of the arc
	 * @param  {number}   y2        The y-coordinate of the end of the arc
	 * @param  {number}   radius    The radius of the arc
	 * @return {PIXI.Graphics}
	*/
	function arcTo (x1:Float, y1:Float, x2:Float, y2:Float, radius:Float):Graphics;

	
	/**
	 * The alpha value used when filling the Graphics object.
	 */
	var fillAlpha:Float;
	
	/**
	 * The width (thickness) of any lines drawn.
	 */
	var lineWidth:Float;
	
	/**
	 * The color of any lines drawn.
	 */
	var lineColor:String;
	
	/**
	 * Graphics data
	*/
	var graphicsData:Array<Dynamic>;
	
	/**
	 * The tint applied to the graphic shape. This is a hex value. Apply a value of 0xFFFFFF to reset the tint.
	 */
	var tint:Float;
	
	/**
	 * The blend mode to be applied to the graphic shape. Apply a value of PIXI.blendModes.NORMAL to reset the blend mode.
	 */
	var blendMode:Float;
	
	/**
	 * Current path
	*/
	var currentPath:Dynamic;
	
	/**
	 * Array containing some WebGL-related properties used by the WebGL renderer.
	 */
	var webGL:Array<Dynamic>;
	
	/**
	 * Whether this shape is being used as a mask.
	 */
	var isMask:Bool;
	
	/**
	 * The bounds' padding used for bounds calculation.
	 */
	var boundsPadding:Float;
	
	/**
	 * Used to detect if the graphics object has changed. If this is set to true then the graphics object will be recalculated.
	 */
	var dirty:Bool;
	
	/**
	 * Used to detect if the webgl graphics object has changed. If this is set to true then the graphics object will be recalculated.
	 */
	var webGLDirty:Bool;
	
	/**
	 * Used to detect if the cached sprite object needs to be updated.
	 */
	var cachedSpriteDirty:Bool;
	
	/**
	 * Draws a circle.
	 */
	function drawCircle (x:Float, y:Float, diameter:Float):Dynamic;
	
}
