package phaser;

/**
* Abstracts away the use of RAF or setTimeOut for the core game update loop.
*/
@:native("Phaser.RequestAnimationFrame")
extern class RequestAnimationFrame {

	/**
	* Abstracts away the use of RAF or setTimeOut for the core game update loop.
	* 
	* @param game A reference to the currently running game.
	* @param forceSetTimeOut Tell Phaser to use setTimeOut even if raf is available.
	*/
	function new(game:phaser.Game, ?forceSetTimeOut:Bool);
	
	/**
	* Tell Phaser to use setTimeOut even if raf is available.
	*/
	var forceSetTimeOut:Bool;
	
	/**
	* The currently running game.
	*/
	var game:phaser.Game;
	
	/**
	* true if RequestAnimationFrame is running, otherwise false.
	*/
	var isRunning:Bool;
	
	/**
	* Is the browser using requestAnimationFrame?
	*/
	function isRAF():Bool;
	
	/**
	* Is the browser using setTimeout?
	*/
	function isSetTimeOut():Bool;
	
	/**
	* Starts the requestAnimationFrame running or setTimeout if unavailable in browser
	*/
	function start():Bool;
	
	/**
	* Stops the requestAnimationFrame from running.
	*/
	function stop():Void;
	
	/**
	* The update method for the requestAnimationFrame
	*/
	function updateRAF(rafTime:Float):Void;
	
	/**
	* The update method for the setTimeout.
	*/
	function updateSetTimeout(time:Float):Void;
	
}

