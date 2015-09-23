package phaser.gameobjects;

@:native("Phaser.Graphics")
extern class Graphics extends phaser.gameobjects.components.Reset {
	
	/**
	 * Creates a new Graphics object.
	 */
	function new (game:phaser.core.Game, ?x:Float = 0, ?y:Float = 0);
	
	/**
	 * The const type of this object.
	 */
	var type:Float;
	
	/**
	 * The const physics body type of this object.
	 */
	var physicsType(default, null):Float;
	
	/**
	 * Destroy this Graphics instance.
	 */
	function destroy (?destroyChildren:Bool = true):Void;
	
	/**
	 * Draws a single {Phaser.Polygon} triangle from a {Phaser.Point} array
	 */
	function drawTriangle (points:Dynamic, ?cull:Bool = false):Void;
	
	/**
	 * Draws {Phaser.Polygon} triangles 
	 */
	@:overload(function (vertices:Dynamic, indices:Dynamic, ?cull:Bool = false):Void {})
	function drawTriangles (vertices:Dynamic, indices:Dynamic, ?cull:Bool = false):Void;
	
}
