package phaser;

/**
* Phaser.Game has a single instance of the TweenManager through which all Tween objects are created and updated.
* Tweens are hooked into the game clock and pause system, adjusting based on the game state.
* 
* TweenManager is based heavily on tween.js by http://soledadpenades.com.
* The difference being that tweens belong to a games instance of TweenManager, rather than to a global TWEEN object.
* It also has callbacks swapped for Signals and a few issues patched with regard to properties and completion errors.
* Please see https://github.com/sole/tween.js for a full list of contributors.
*/
@:native("Phaser.TweenManager")
extern class TweenManager {

	/**
	* Phaser.Game has a single instance of the TweenManager through which all Tween objects are created and updated.
	* Tweens are hooked into the game clock and pause system, adjusting based on the game state.
	* 
	* TweenManager is based heavily on tween.js by http://soledadpenades.com.
	* The difference being that tweens belong to a games instance of TweenManager, rather than to a global TWEEN object.
	* It also has callbacks swapped for Signals and a few issues patched with regard to properties and completion errors.
	* Please see https://github.com/sole/tween.js for a full list of contributors.
	* 
	* @param game A reference to the currently running game.
	*/
	function new(game:phaser.Game);
	
	/**
	* Are all newly created Tweens frame or time based? A frame based tween will use the physics elapsed timer when updating. This means
	* it will retain the same consistent frame rate, regardless of the speed of the device. The duration value given should
	* be given in frames.
	* 
	* If the Tween uses a time based update (which is the default) then the duration is given in milliseconds.
	* In this situation a 2000ms tween will last exactly 2 seconds, regardless of the device and how many visual updates the tween
	* has actually been through. For very short tweens you may wish to experiment with a frame based update instead.
	*/
	var frameBased:Bool;
	
	/**
	* Local reference to game.
	*/
	var game:phaser.Game;
	
	/**
	* Add a new tween into the TweenManager.
	* 
	* @param tween The tween object you want to add.
	* @return The tween object you added to the manager.
	*/
	function add(tween:phaser.Tween):phaser.Tween;
	
	/**
	* Create a tween object for a specific object. The object can be any JavaScript object or Phaser object such as Sprite.
	* 
	* @param object Object the tween will be run on.
	* @return The newly created tween object.
	*/
	function create(object:Dynamic):phaser.Tween;
	
	/**
	* Get all the tween objects in an array.
	* 
	* @return Array with all tween objects.
	*/
	function getAll():Array<phaser.Tween>;
	
	/**
	* Checks to see if a particular Sprite is currently being tweened.
	* 
	* @param object The object to check for tweens against.
	* @return Returns true if the object is currently being tweened, false if not.
	*/
	function isTweening(object:Dynamic):Bool;
	
	/**
	* Remove a tween from this manager.
	* 
	* @param tween The tween object you want to remove.
	*/
	function remove(tween:phaser.Tween):phaser.Tween;
	
	/**
	* Remove all tweens running and in the queue. Doesn't call any of the tween onComplete events.
	*/
	function removeAll():Void;
	
	/**
	* Remove all tweens from a specific object, array of objects or Group.
	* 
	* @param obj The object you want to remove the tweens from.
	* @param children If passing a group, setting this to true will remove the tweens from all of its children instead of the group itself. - Default: true
	*/
	function removeFrom(obj:Dynamic, ?children:Bool):Void;
	
	/**
	* Resumes all currently paused tweens.
	*/
	function resumeAll():Void;
	
	/**
	* Update all the tween objects you added to this manager.
	* 
	* @return Return false if there's no tween to update, otherwise return true.
	*/
	function update():Bool;
	
	/**
	* Pauses all currently running tweens.
	*/
	function pauseAll():Void;
	
}

