package phaser.pixi.geom;

@:native("PIXI.Matrix")
extern class Matrix {
	
	/**
	 * The Matrix class is now an object, which makes it a lot faster, 
	 * here is a representation of it : 
	 * | a | b | tx|
	 * | c | d | ty|
	 * | 0 | 0 | 1 |
	 */
	function new ();
	
	/**
	 * @property a
	 */
	var a:Dynamic;
	
	/**
	 * @property b
	 */
	var b:Dynamic;
	
	/**
	 * @property c
	 */
	var c:Dynamic;
	
	/**
	 * @property d
	 */
	var d:Dynamic;
	
	/**
	 * @property tx
	 */
	var tx:Dynamic;
	
	/**
	 * @property ty
	 */
	var ty:Dynamic;
	
}
