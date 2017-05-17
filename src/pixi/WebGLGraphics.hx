package pixi;

import js.html.webgl.RenderingContext as WebGLRenderingContext;

/**
* A set of functions used by the webGL renderer to draw the primitive graphics data
*/
@:native("PIXI.WebGLGraphics")
extern class WebGLGraphics {

	static var graphicsDataPool:Array<Dynamic>;
	
	/**
	* Renders the graphics object
	* 
	* @param graphics -
	* @param renderSession -
	*/
	static function renderGraphics(graphics:Graphics, renderRession:RenderSession):Void;
	
	/**
	* Updates the graphics object
	* 
	* @param graphicsData The graphics object to update
	* @param gl the current WebGL drawing context
	*/
	static function updateGraphics(graphics:Graphics, gl:WebGLRenderingContext):Void;
	
	/**
	* undefined
	* 
	* @param webGL -
	* @param type -
	*/
	static function switchMode(webGL:WebGLRenderingContext, type:Float):Dynamic;
	
	/**
	* Builds a rectangle to draw
	* 
	* @param graphicsData The graphics object containing all the necessary properties
	* @param webGLData -
	*/
	static function buildRectangle(graphicsData:GraphicsData, webGLData:Dynamic):Void;
	
	/**
	* Builds a rounded rectangle to draw
	* 
	* @param graphicsData The graphics object containing all the necessary properties
	* @param webGLData -
	*/
	static function buildRoundedRectangle(graphicsData:GraphicsData, webGLData:Dynamic):Void;
	
	/**
	* Calculate the points for a quadratic bezier curve. (helper function..)
	* Based on: https://stackoverflow.com/questions/785097/how-do-i-implement-a-bezier-curve-in-c
	* 
	* @param fromX Origin point x
	* @param fromY Origin point x
	* @param cpX Control point x
	* @param cpY Control point y
	* @param toX Destination point x
	* @param toY Destination point y
	*/
	static function quadraticBezierCurve(fromX:Float, fromY:Float, cpX:Float, cpY:Float, toX:Float, toY:Float):Array<Float>;
	
	/**
	* Builds a circle to draw
	* 
	* @param graphicsData The graphics object to draw
	* @param webGLData -
	*/
	static function buildCircle(graphicsData:GraphicsData, webGLData:Dynamic):Void;
	
	/**
	* Builds a line to draw
	* 
	* @param graphicsData The graphics object containing all the necessary properties
	* @param webGLData -
	*/
	static function buildLine(graphicsData:GraphicsData, webGLData:Dynamic):Void;
	
	/**
	* Builds a complex polygon to draw
	* 
	* @param graphicsData The graphics object containing all the necessary properties
	* @param webGLData -
	*/
	static function buildComplexPoly(graphicsData:GraphicsData, webGLData:Dynamic):Void;
	
	/**
	* Builds a polygon to draw
	* 
	* @param graphicsData The graphics object containing all the necessary properties
	* @param webGLData -
	*/
	static function buildPoly(graphicsData:GraphicsData, webGLData:Dynamic):Bool;
	
	function reset():Void;
	
	function upload():Void;
	
}

