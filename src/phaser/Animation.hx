package phaser;

import haxe.extern.EitherType;

/**
* An Animation instance contains a single animation and the controls to play it.
* 
* It is created by the AnimationManager, consists of Animation.Frame objects and belongs to a single Game Object such as a Sprite.
*/
@:native("Phaser.Animation")
extern class Animation {

	/**
	* An Animation instance contains a single animation and the controls to play it.
	* 
	* It is created by the AnimationManager, consists of Animation.Frame objects and belongs to a single Game Object such as a Sprite.
	* 
	* @param game A reference to the currently running game.
	* @param parent A reference to the owner of this Animation.
	* @param name The unique name for this animation, used in playback commands.
	* @param frameData The FrameData object that contains all frames used by this Animation.
	* @param frames An array of numbers or strings indicating which frames to play in which order.
	* @param frameRate The speed at which the animation should play. The speed is given in frames per second. - Default: 60
	* @param loop Whether or not the animation is looped or just plays once.
	*/
	function new(game:phaser.Game, parent:phaser.Sprite, name:String, frameData:phaser.FrameData, frames:EitherType<Array<Float>, Array<String>>, ?frameRate:Float, ?loop:Bool);
	
	/**
	* The currently displayed frame of the Animation.
	*/
	var currentFrame:phaser.Frame;
	
	/**
	* The delay in ms between each frame of the Animation, based on the given frameRate.
	*/
	var delay:Float;
	
	/**
	* Gets or sets if this animation will dispatch the onUpdate events upon changing frame.
	*/
	var enableUpdate:Bool;
	
	/**
	* Gets or sets the current frame index and updates the Texture Cache for display.
	*/
	var frame:Float;
	
	/**
	* The total number of frames in the currently loaded FrameData, or -1 if no FrameData is loaded.
	*/
	var frameTotal:Float;
	
	/**
	* A reference to the currently running Game.
	*/
	var game:phaser.Game;
	
	/**
	* The finished state of the Animation. Set to true once playback completes, false during playback.
	*/
	var isFinished:Bool;
	
	/**
	* The paused state of the Animation.
	*/
	var isPaused:Bool;
	
	/**
	* The playing state of the Animation. Set to false once playback completes, true during playback.
	*/
	var isPlaying:Bool;
	
	/**
	* Should the parent of this Animation be killed when the animation completes?
	*/
	var killOnComplete:Bool;
	
	/**
	* The loop state of the Animation.
	*/
	var loop:Bool;
	
	/**
	* The number of times the animation has looped since it was last started.
	*/
	var loopCount:Float;
	
	/**
	* The user defined name given to this Animation.
	*/
	var name:String;
	
	/**
	* This event is dispatched when this Animation completes playback. If the animation is set to loop this is never fired, listen for onLoop instead.
	*/
	var onComplete:phaser.Signal;
	
	/**
	* This event is dispatched when this Animation loops.
	*/
	var onLoop:phaser.Signal;
	
	/**
	* This event is dispatched when this Animation starts playback.
	*/
	var onStart:phaser.Signal;
	
	/**
	* This event is dispatched when the Animation changes frame.
	* By default this event is disabled due to its intensive nature. Enable it with: `Animation.enableUpdate = true`.
	* Note that the event is only dispatched with the current frame. In a low-FPS environment Animations
	* will automatically frame-skip to try and claw back time, so do not base your code on expecting to
	* receive a perfectly sequential set of frames from this event.
	*/
	var onUpdate:phaser.Signal;
	
	/**
	* Gets and sets the paused state of this Animation.
	*/
	var paused:Bool;
	
	/**
	* Gets and sets the isReversed state of this Animation.
	*/
	var reversed:Bool;
	
	/**
	* Gets or sets the current speed of the animation in frames per second. Changing this in a playing animation will take effect from the next frame. Value must be greater than 0.
	*/
	var speed:Float;
	
	/**
	* Called internally when the animation finishes playback.
	* Sets the isPlaying and isFinished states and dispatches the onAnimationComplete event if it exists on the parent and local onComplete event.
	*/
	function complete():Void;
	
	/**
	* Cleans up this animation ready for deletion. Nulls all values and references.
	*/
	function destroy():Void;
	
	/**
	* Really handy function for when you are creating arrays of animation data but it's using frame names and not numbers.
	* For example imagine you've got 30 frames named: 'explosion_0001-large' to 'explosion_0030-large'
	* You could use this function to generate those by doing: Phaser.Animation.generateFrameNames('explosion_', 1, 30, '-large', 4);
	* 
	* @param prefix The start of the filename. If the filename was 'explosion_0001-large' the prefix would be 'explosion_'.
	* @param start The number to start sequentially counting from. If your frames are named 'explosion_0001' to 'explosion_0034' the start is 1.
	* @param stop The number to count to. If your frames are named 'explosion_0001' to 'explosion_0034' the stop value is 34.
	* @param suffix The end of the filename. If the filename was 'explosion_0001-large' the prefix would be '-large'. - Default: ''
	* @param zeroPad The number of zeros to pad the min and max values with. If your frames are named 'explosion_0001' to 'explosion_0034' then the zeroPad is 4.
	* @return An array of framenames.
	*/
	static function generateFrameNames(prefix:String, start:Float, stop:Float, ?suffix:String, ?zeroPad:Float):Array<String>;
	
	/**
	* Advances by the given number of frames in the Animation, taking the loop value into consideration.
	* 
	* @param quantity The number of frames to advance. - Default: 1
	*/
	function next(?quantity:Float):Void;
	
	/**
	* Called when the Game enters a paused state.
	*/
	function onPause():Void;
	
	/**
	* Called when the Game resumes from a paused state.
	*/
	function onResume():Void;
	
	/**
	* Plays this animation.
	* 
	* If you need to jump to a specific frame of this animation, then call `play` and immediately after it,
	* set the frame you require (i.e. `animation.play(); animation.frame = 4`).
	* 
	* @param frameRate The framerate to play the animation at. The speed is given in frames per second. If not provided the previously set frameRate of the Animation is used.
	* @param loop Should the animation be looped after playback. If not provided the previously set loop value of the Animation is used.
	* @param killOnComplete If set to true when the animation completes (only happens if loop=false) the parent Sprite will be killed.
	* @return - A reference to this Animation instance.
	*/
	function play(?frameRate:Float, ?loop:Bool, ?killOnComplete:Bool):phaser.Animation;
	
	/**
	* Moves backwards the given number of frames in the Animation, taking the loop value into consideration.
	* 
	* @param quantity The number of frames to move back. - Default: 1
	*/
	function previous(?quantity:Float):Void;
	
	/**
	* Sets this animation back to the first frame and restarts the animation.
	*/
	function restart():Void;
	
	/**
	* Reverses the animation direction.
	* 
	* @return The animation instance.
	*/
	function reverse():Animation;
	
	/**
	* Reverses the animation direction for the current/next animation only
	* Once the onComplete event is called this method will be called again and revert
	* the reversed state.
	* 
	* @return The animation instance.
	*/
	function reverseOnce():Animation;
	
	/**
	* Sets this animations playback to a given frame with the given ID.
	* 
	* @param frameId The identifier of the frame to set. Can be the name of the frame, the sprite index of the frame, or the animation-local frame index.
	* @param useLocalFrameIndex If you provide a number for frameId, should it use the numeric indexes of the frameData, or the 0-indexed frame index local to the animation.
	*/
	function setFrame(?frameId:EitherType<String, Float>, ?useLocalFrameIndex:Bool):Void;
	
	/**
	* Stops playback of this animation and set it to a finished state. If a resetFrame is provided it will stop playback and set frame to the first in the animation.
	* If `dispatchComplete` is true it will dispatch the complete events, otherwise they'll be ignored.
	* 
	* @param resetFrame If true after the animation stops the currentFrame value will be set to the first frame in this animation.
	* @param dispatchComplete Dispatch the Animation.onComplete and parent.onAnimationComplete events?
	*/
	function stop(?resetFrame:Bool, ?dispatchComplete:Bool):Void;
	
	/**
	* Updates this animation. Called automatically by the AnimationManager.
	*/
	function update():Bool;
	
	/**
	* Changes the currentFrame per the _frameIndex, updates the display state,
	* and triggers the update signal.
	* 
	* Returns true if the current frame update was 'successful', false otherwise.
	* 
	* @param signalUpdate If true the `Animation.onUpdate` signal will be dispatched.
	* @param fromPlay Was this call made from the playing of a new animation?
	* @return True if the current frame was updated, otherwise false.
	*/
	function updateCurrentFrame(signalUpdate:Bool, ?fromPlay:Bool):Bool;
	
	/**
	* Changes the FrameData object this Animation is using.
	* 
	* @param frameData The FrameData object that contains all frames used by this Animation.
	*/
	function updateFrameData(frameData:FrameData):Void;
	
}

