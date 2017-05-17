package phaser.physics.p2;

/**
* Draws a P2 Body to a Graphics instance for visual debugging.
* Needless to say, for every body you enable debug drawing on, you are adding processor and graphical overhead.
* So use sparingly and rarely (if ever) in production code.
* 
* Also be aware that the Debug body is only updated when the Sprite it is connected to changes position. If you
* manipulate the sprite in any other way (such as moving it to another Group or bringToTop, etc) then you will
* need to manually adjust its BodyDebug as well.
*/
@:native("Phaser.Physics.P2.BodyDebug")
extern class BodyDebug extends phaser.Group {

	/**
	* Draws a P2 Body to a Graphics instance for visual debugging.
	* Needless to say, for every body you enable debug drawing on, you are adding processor and graphical overhead.
	* So use sparingly and rarely (if ever) in production code.
	* 
	* Also be aware that the Debug body is only updated when the Sprite it is connected to changes position. If you
	* manipulate the sprite in any other way (such as moving it to another Group or bringToTop, etc) then you will
	* need to manually adjust its BodyDebug as well.
	* 
	* @param game Game reference to the currently running game.
	* @param body The P2 Body to display debug data for.
	* @param settings Settings object.
	*/
	function new(game:phaser.Game, body:phaser.physics.p2.Body, settings:{pixelsPerLengthUnit:Float, debugPolygons:Bool, lineWidth:Float, alpha:Float});
	
	/**
	* The P2 Body to display debug data for.
	*/
	var body:phaser.physics.p2.Body;
	
	/**
	* The canvas to render the debug info to.
	*/
	var canvas:phaser.Graphics;
	
	/**
	* Pixels per Length Unit.
	*/
	var ppu:Float;
	
	/**
	* Core update.
	*/
	function updateSpriteTransform():Void;
	
	/**
	* Draws the P2 shapes to the Graphics object.
	*/
	function draw():Void;
	
}

