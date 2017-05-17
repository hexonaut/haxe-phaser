package pixi;

@:native("PIXI.Matrix")
extern class Matrix {

	var a:Float;
	
	var b:Float;
	
	var c:Float;
	
	var d:Float;
	
	var tx:Float;
	
	var ty:Float;
	
	function append(matrix:Matrix):Matrix;
	
	function apply(pos:Point, newPos:Point):Point;
	
	function applyInverse(pos:Point, newPos:Point):Point;
	
	function determineMatrixArrayType():Array<Float>;
	
	function identity():Matrix;
	
	function rotate(angle:Float):Matrix;
	
	function fromArray(array:Array<Float>):Void;
	
	function translate(x:Float, y:Float):Matrix;
	
	function toArray(transpose:Bool):Array<Float>;
	
	function scale(x:Float, y:Float):Matrix;
	
}

