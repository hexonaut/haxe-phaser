package pixi;

@:native("PIXI.ConvolutionFilter")
extern class ConvolutionFilter extends AbstractFilter {

	function new(matrix:Array<Float>, width:Float, height:Float);
	
	var matrix:Matrix;
	
	var width:Float;
	
	var height:Float;
	
}

