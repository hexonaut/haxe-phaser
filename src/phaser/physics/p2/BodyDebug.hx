package phaser.physics.p2;

@:native("Phaser.Physics.P2.BodyDebug")
extern class BodyDebug extends phaser.core.Group {
	
	/**
	 * Pixels per Length Unit.
	 */
	var ppu:Float;
	
	/**
	 * The P2 Body to display debug data for.
	 */
	var body:phaser.physics.p2.Body;
	
	/**
	 * The canvas to render the debug info to.
	 */
	var canvas:phaser.gameobjects.Graphics;
	
	/**
	 * Core update.
	 */
	function updateSpriteTransform ():Void;
	
	/**
	 * Draws the P2 shapes to the Graphics object.
	 */
	function draw ():Void;
	
	/**
	 * Draws a P2 Circle shape.
	 */
	function drawCircle ():Void;
	
	/**
	 * Draws a P2 Convex shape.
	 */
	function drawConvex ():Void;
	
	/**
	 * Draws a P2 Path.
	 */
	function drawPath ():Void;
	
	/**
	 * Draws a P2 Plane shape.
	 */
	function drawPlane ():Void;
	
	/**
	 * Picks a random pastel color.
	 */
	function randomPastelHex ():Void;
	
	/**
	 * Converts from RGB to Hex.
	 */
	function rgbToHex ():Void;
	
	/**
	 * Component to hex conversion.
	 */
	function componentToHex ():Void;
	
}
