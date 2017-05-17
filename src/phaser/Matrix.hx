package phaser;

/**
* The Matrix is a 3x3 matrix mostly used for display transforms within the renderer.
* 
* It is represented like so:
* 
* | a | b | tx |
* | c | d | ty |
* | 0 | 0 | 1 |
*/
@:native("Phaser.Matrix")
extern class Matrix extends pixi.Matrix {

	/**
	* Default: 1
	*/
	@:native("a")
	var Matrix_a:Float;
	
	/**
	* Default: 0
	*/
	@:native("b")
	var Matrix_b:Float;
	
	/**
	* Default: 0
	*/
	@:native("c")
	var Matrix_c:Float;
	
	/**
	* Default: 1
	*/
	@:native("d")
	var Matrix_d:Float;
	
	/**
	* Default: 0
	*/
	@:native("tx")
	var Matrix_tx:Float;
	
	/**
	* Default: 0
	*/
	@:native("ty")
	var Matrix_ty:Float;
	
	/**
	* The const type of this object.
	*/
	var type:Float;
	
	/**
	* The Matrix is a 3x3 matrix mostly used for display transforms within the renderer.
	* 
	* It is represented like so:
	* 
	* | a | b | tx |
	* | c | d | ty |
	* | 0 | 0 | 1 |
	* 
	* @param a Horizontal scaling - Default: 1
	* @param b Horizontal skewing
	* @param c Vertical skewing
	* @param d Vertical scaling - Default: 1
	* @param tx Horizontal translation
	* @param ty Vertical translation
	*/
	function new(?a:Float, ?b:Float, ?c:Float, ?d:Float, ?tx:Float, ?ty:Float);
	
	/**
	* Get a new position with the current transformation applied.
	* 
	* Can be used to go from a childs coordinate space to the world coordinate space (e.g. rendering)
	* 
	* @param pos The origin Point.
	* @param newPos The point that the new position is assigned to. This can be same as input point.
	* @return The new point, transformed through this matrix.
	*/
	@:native("apply")
	function Matrix_apply(pos:phaser.Point, ?newPos:phaser.Point):phaser.Point;
	
	/**
	* Get a new position with the inverse of the current transformation applied.
	* 
	* Can be used to go from the world coordinate space to a childs coordinate space. (e.g. input)
	* 
	* @param pos The origin Point.
	* @param newPos The point that the new position is assigned to. This can be same as input point.
	* @return The new point, inverse transformed through this matrix.
	*/
	@:native("applyInverse")
	function Matrix_applyInverse(pos:phaser.Point, ?newPos:phaser.Point):phaser.Point;
	
	/**
	* Creates a new Matrix object based on the values of this Matrix.
	* If you provide the output parameter the values of this Matrix will be copied over to it.
	* If the output parameter is blank a new Matrix object will be created.
	* 
	* @param output If provided the values of this Matrix will be copied to it, otherwise a new Matrix object is created.
	* @return A clone of this Matrix.
	*/
	function clone(?output:phaser.Matrix):phaser.Matrix;
	
	/**
	* Copies the properties from the given Matrix into this Matrix.
	* 
	* @param matrix The Matrix to copy from.
	* @return This Matrix object.
	*/
	function copyFrom(matrix:phaser.Matrix):phaser.Matrix;
	
	/**
	* Copies the properties from this Matrix to the given Matrix.
	* 
	* @param matrix The Matrix to copy from.
	* @return The destination Matrix object.
	*/
	function copyTo(matrix:phaser.Matrix):phaser.Matrix;
	
	/**
	* Sets the values of this Matrix to the values in the given array.
	* 
	* The Array elements should be set as follows:
	* 
	* a = array[0]
	* b = array[1]
	* c = array[3]
	* d = array[4]
	* tx = array[2]
	* ty = array[5]
	* 
	* @param array The array to copy from.
	* @return This Matrix object.
	*/
	@:native("fromArray")
	function Matrix_fromArray(array:Array<Float>):phaser.Matrix;
	
	/**
	* Sets the values of this Matrix to the given values.
	* 
	* @param a Horizontal scaling
	* @param b Horizontal skewing
	* @param c Vertical skewing
	* @param d Vertical scaling
	* @param tx Horizontal translation
	* @param ty Vertical translation
	* @return This Matrix object.
	*/
	function setTo(a:Float, b:Float, c:Float, d:Float, tx:Float, ty:Float):phaser.Matrix;
	
	/**
	* Creates a Float32 Array with values populated from this Matrix object.
	* 
	* @param transpose Whether the values in the array are transposed or not.
	* @param array If provided the values will be set into this array, otherwise a new Float32Array is created.
	* @return The newly created array which contains the matrix.
	*/
	@:native("toArray")
	function Matrix_toArray(?transpose:Bool, ?array:Array<Float>):Array<Float>;
	
	/**
	* Translates the matrix on the x and y.
	* This is the same as Matrix.tx += x.
	* 
	* @param x The x value to translate on.
	* @param y The y value to translate on.
	* @return This Matrix object.
	*/
	@:native("translate")
	function Matrix_translate(x:Float, y:Float):phaser.Matrix;
	
	/**
	* Applies a scale transformation to this matrix.
	* 
	* @param x The amount to scale horizontally.
	* @param y The amount to scale vertically.
	* @return This Matrix object.
	*/
	@:native("scale")
	function Matrix_scale(x:Float, y:Float):phaser.Matrix;
	
	/**
	* Applies a rotation transformation to this matrix.
	* 
	* @param angle The angle to rotate by, given in radians.
	* @return This Matrix object.
	*/
	@:native("rotate")
	function Matrix_rotate(angle:Float):phaser.Matrix;
	
	/**
	* Appends the given Matrix to this Matrix.
	* 
	* @param matrix The matrix to append to this one.
	* @return This Matrix object.
	*/
	@:native("append")
	function Matrix_append(matrix:phaser.Matrix):phaser.Matrix;
	
	/**
	* Resets this Matrix to an identity (default) matrix.
	* 
	* @return This Matrix object.
	*/
	@:native("identity")
	function Matrix_identity():phaser.Matrix;
	
}

