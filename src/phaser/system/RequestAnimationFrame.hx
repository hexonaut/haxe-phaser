package phaser.system;

@:native("Phaser.RequestAnimationFrame")
extern class RequestAnimationFrame {
	
	/**
	 * Abstracts away the use of RAF or setTimeOut for the core game update loop.
	 */
	function new (game:phaser.core.Game, ?forceSetTimeOut:Bool = false);
	
	/**
	 * The currently running game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * true if RequestAnimationFrame is running, otherwise false.
	 */
	var isRunning:Bool;
	
	/**
	 * Tell Phaser to use setTimeOut even if raf is available.
	 */
	var forceSetTimeOut:Bool;
	
	/**
	 * true if the browser is using setTimeout instead of raf.
	 */
	var _isSetTimeOut:Bool;
	
	/**
	 * The function called by the update.
	 */
	var _onLoop:Dynamic;
	
	/**
	 * The callback ID used when calling cancel.
	 */
	var _timeOutID:Float;
	
	/**
	 * Starts the requestAnimationFrame running or setTimeout if unavailable in browser
	 */
	function start ():Void;
	
	/**
	 * The update method for the requestAnimationFrame
	 */
	function updateRAF ():Void;
	
	/**
	 * The update method for the setTimeout.
	 */
	function updateSetTimeout ():Void;
	
	/**
	 * Stops the requestAnimationFrame from running.
	 */
	function stop ():Void;
	
	/**
	 * Is the browser using setTimeout?
	 */
	function isSetTimeOut ():Bool;
	
	/**
	 * Is the browser using requestAnimationFrame?
	 */
	function isRAF ():Bool;
	
}
