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
	 * Draws a p2.Box to the Graphics object.
	 */
	function drawRectangle ():Void;
	
	/**
	 * Draws a p2.Circle to the Graphics object.
	 */
	function drawCircle ():Void;
	
	/**
	 * Draws a p2.Line to the Graphics object.
	 */
	function drawLine ():Void;
	
	/**
	 * Draws a p2.Convex to the Graphics object.
	 */
	function drawConvex ():Void;
	
	/**
	 * Draws a p2.Path to the Graphics object.
	 */
	function drawPath ():Void;
	
	/**
	 * Draws a p2.Plane to the Graphics object.
	 */
	function drawPlane ():Void;
	
	/**
	 * Draws a p2.Capsule to the Graphics object.
	 */
	function drawCapsule ():Void;
	
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
