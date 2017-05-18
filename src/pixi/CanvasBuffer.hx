package pixi;

import js.html.CanvasElement as HTMLCanvasElement;
import js.html.CanvasRenderingContext2D;

/**
* Creates a Canvas element of the given size.
*/
@:native("PIXI.CanvasBuffer")
extern class CanvasBuffer {

	/**
	* Creates a Canvas element of the given size.
	* 
	* @param width the width for the newly created canvas
	* @param height the height for the newly created canvas
	*/
	function new(width:Float, height:Float);
	
	/**
	* The Canvas object that belongs to this CanvasBuffer.
	*/
	var canvas:HTMLCanvasElement;
	
	/**
	* A CanvasRenderingContext2D object representing a two-dimensional rendering context.
	*/
	var context:CanvasRenderingContext2D;
	
	/**
	* The height of the Canvas in pixels.
	*/
	var height:Float;
	
	/**
	* The width of the Canvas in pixels.
	*/
	var width:Float;
	
	/**
	* Frees the canvas up for use again.
	*/
	function destroy():Void;
	
	/**
	* Clears the canvas that was created by the CanvasBuffer class.
	*/
	function clear():Void;
	
	/**
	* Resizes the canvas to the specified width and height.
	* 
	* @param width the new width of the canvas
	* @param height the new height of the canvas
	*/
	function resize(width:Float, height:Float):Void;
	
}

