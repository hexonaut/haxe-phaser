package phaser.pixi.renderers.canvas.utils;

@:native("PIXI.CanvasBuffer")
extern class CanvasBuffer {
	
	/**
	 * Creates a Canvas element of the given size.
	 */
	function new (Number:Dynamic, Number:Dynamic);
	
	/**
	 * The width of the Canvas in pixels.
	 */
	var width:Float;
	
	/**
	 * The height of the Canvas in pixels.
	 */
	var height:Float;
	
	/**
	 * The Canvas object that belongs to this CanvasBuffer.
	 */
	var canvas:Dynamic;
	
	/**
	 * A CanvasRenderingContext2D object representing a two-dimensional rendering context.
	 */
	var context:Dynamic;
	
}
