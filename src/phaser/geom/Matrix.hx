package phaser.geom;

@:native("Phaser.Matrix")
extern class Matrix {
	
	/**
	 * The Matrix is a 3x3 matrix mostly used for display transforms within the renderer.
	 * 
	 * It is represented like so:
	 * 
	 * | a | b | tx |
	 * | c | d | ty |
	 * | 0 | 0 | 1 |
	 */
	function new (?a:Float = 1, ?b:Float = 0, ?c:Float = 0, ?d:Float = 1, ?tx:Float = 0, ?ty:Float = 0);
	
	/**
	 * @property {number} a
	 */
	var a:Float;
	
	/**
	 * @property {number} b
	 */
	var b:Float;
	
	/**
	 * @property {number} c
	 */
	var c:Float;
	
	/**
	 * @property {number} d
	 */
	var d:Float;
	
	/**
	 * @property {number} tx
	 */
	var tx:Float;
	
	/**
	 * @property {number} ty
	 */
	var ty:Float;
	
	/**
	 * The const type of this object.
	 */
	var type(default, null):Float;
	
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
	 */
	function fromArray (array:Array<Dynamic>):phaser.geom.Matrix;
	
	/**
	 * Sets the values of this Matrix to the given values.
	 */
	function setTo (a:Float, b:Float, c:Float, d:Float, tx:Float, ty:Float):phaser.geom.Matrix;
	
	/**
	 * Creates a new Matrix object based on the values of this Matrix.
	 * If you provide the output parameter the values of this Matrix will be copied over to it.
	 * If the output parameter is blank a new Matrix object will be created.
	 */
	function clone (?output:phaser.geom.Matrix):phaser.geom.Matrix;
	
	/**
	 * Copies the properties from this Matrix to the given Matrix.
	 */
	function copyTo (matrix:phaser.geom.Matrix):phaser.geom.Matrix;
	
	/**
	 * Copies the properties from the given Matrix into this Matrix.
	 */
	function copyFrom (matrix:phaser.geom.Matrix):phaser.geom.Matrix;
	
	/**
	 * Creates a Float32 Array with values populated from this Matrix object.
	 */
	function toArray (?transpose:Bool = false, ?array:Dynamic):Dynamic;
	
	/**
	 * Get a new position with the current transformation applied.
	 * 
	 * Can be used to go from a childs coordinate space to the world coordinate space (e.g. rendering)
	 */
	function apply (pos:phaser.geom.Point, ?newPos:phaser.geom.Point):phaser.geom.Point;
	
	/**
	 * Get a new position with the inverse of the current transformation applied.
	 * 
	 * Can be used to go from the world coordinate space to a childs coordinate space. (e.g. input)
	 */
	function applyInverse (pos:phaser.geom.Point, ?newPos:phaser.geom.Point):phaser.geom.Point;
	
	/**
	 * Translates the matrix on the x and y.
	 * This is the same as Matrix.tx += x.
	 */
	function translate (x:Float, y:Float):phaser.geom.Matrix;
	
	/**
	 * Applies a scale transformation to this matrix.
	 */
	function scale (x:Float, y:Float):phaser.geom.Matrix;
	
	/**
	 * Applies a rotation transformation to this matrix.
	 */
	function rotate (angle:Float):phaser.geom.Matrix;
	
	/**
	 * Appends the given Matrix to this Matrix.
	 */
	function append (matrix:phaser.geom.Matrix):phaser.geom.Matrix;
	
	/**
	 * Resets this Matrix to an identity (default) matrix.
	 */
	function identity ():phaser.geom.Matrix;
	
}
