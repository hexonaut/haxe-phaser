package phaser.tween;

@:native("Phaser.TweenManager")
extern class TweenManager {
	
	/**
	 * Phaser - TweenManager
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
