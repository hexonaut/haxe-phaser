package phaser.tween;

@:native("Phaser.TweenManager")
extern class TweenManager {
	
	/**
	 * Phaser.Game has a single instance of the TweenManager through which all Tween objects are created and updated.
	 * Tweens are hooked into the game clock and pause system, adjusting based on the game state.
	 * 
	 * TweenManager is based heavily on tween.js by <a href='http://soledadpenades.com'>http://soledadpenades.com</a>.
	 * The difference being that tweens belong to a games instance of TweenManager, rather than to a global TWEEN object.
	 * It also has callbacks swapped for Signals and a few issues patched with regard to properties and completion errors.
	 * Please see <a href='https://github.com/sole/tween.js'>https://github.com/sole/tween.js</a> for a full list of contributors.
	 */
	function new (game:phaser.core.Game);
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * All of the currently running tweens.
	 */
	var _tweens:Dynamic;
	
	/**
	 * All of the tweens queued to be added in the next update.
	 */
	var _add:Dynamic;
	
	/**
	 * Get all the tween objects in an array.
	 */
	function getAll ():Dynamic;
	
	/**
	 * Remove all tweens running and in the queue. Doesn't call any of the tween onComplete events.
	 */
	function removeAll ():Void;
	
	/**
	 * Remove all tweens from a specific object, array of objects or Group.
	 */
	@:overload(function (obj:Dynamic, ?children:Bool = true):Void {})
	@:overload(function (obj:Dynamic, ?children:Bool = true):Void {})
	function removeFrom (obj:phaser.core.Group, ?children:Bool = true):Void;
	
	/**
	 * Add a new tween into the TweenManager.
	 */
	function add (tween:phaser.tween.Tween):phaser.tween.Tween;
	
	/**
	 * Create a tween object for a specific object. The object can be any JavaScript object or Phaser object such as Sprite.
	 */
	function create (object:Dynamic):phaser.tween.Tween;
	
	/**
	 * Remove a tween from this manager.
	 */
	function remove (tween:phaser.tween.Tween):Void;
	
	/**
	 * Update all the tween objects you added to this manager.
	 */
	function update ():Bool;
	
	/**
	 * Checks to see if a particular Sprite is currently being tweened.
	 */
	function isTweening (object:Dynamic):Bool;
	
	/**
	 * Private. Called by game focus loss. Pauses all currently running tweens.
	 */
	function _pauseAll ():Void;
	
	/**
	 * Private. Called by game focus loss. Resumes all currently paused tweens.
	 */
	function _resumeAll ():Void;
	
	/**
	 * Pauses all currently running tweens.
	 */
	function pauseAll ():Void;
	
	/**
	 * Resumes all currently paused tweens.
	 */
	function resumeAll ():Void;
	
}
