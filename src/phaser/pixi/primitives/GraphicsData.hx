package phaser.pixi.primitives;

@:native("PIXI.GraphicsData")
extern class GraphicsData {
	
	/**
	 * A GraphicsData object.
	 */
	function new ();
	
	/**
	 * @member {number} the width of the line to draw
	 */
	var lineWidth:Float;
	
	/**
	 * @member {number} the color of the line to draw
	 */
	var lineColor:Float;
	
	/**
	 * @member {number} the alpha of the line to draw
	 */
	var lineAlpha:Float;
	
	/**
	 * @member {number} cached tint of the line to draw
	 */
	var _lineTint:Float;
	
	/**
	 * @member {number} the color of the fill
	 */
	var fillColor:Float;
	
	/**
	 * @member {number} the alpha of the fill
	 */
	var fillAlpha:Float;
	
	/**
	 * @member {number} cached tint of the fill
	 */
	var _fillTint:Float;
	
	/**
	 * @member {boolean} whether or not the shape is filled with a color
	 */
	var fill:Bool;
	
	/**
	 * @member {Circle|Rectangle|Ellipse|Line|Polygon} The shape object to draw.
	 */
	var shape:Dynamic;
	
	/**
	 * @member {number} The type of the shape, see the Const.Shapes file for all the existing types,
	 */
	var type:Float;
	
}
