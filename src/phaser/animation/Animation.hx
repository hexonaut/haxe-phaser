package phaser.animation;

@:native("Phaser.Animation")
extern class Animation {
	
	/**
	 * An Animation instance contains a single animation and the controls to play it.
	 * It is created by the AnimationManager, consists of Animation.Frame objects and belongs to a single Game Object such as a Sprite.
	 */
	@:overload(function (game:phaser.core.Game, parent:phaser.gameobjects.Sprite, name:String, frameData:phaser.animation.FrameData, frames:Dynamic, ?frameRate:Float = 60, ?loop:Bool = false, ?loop:Bool):Void {})
	function new (game:phaser.core.Game, parent:phaser.gameobjects.Sprite, name:String, frameData:phaser.animation.FrameData, frames:Dynamic, ?frameRate:Float = 60, ?loop:Bool = false, ?loop:Bool);
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * A reference to the parent Sprite that owns this Animation.
	 */
	var _parent:phaser.gameobjects.Sprite;
	
	/**
	 * The FrameData the Animation uses.
	 */
	var _frameData:phaser.animation.FrameData;
	
	/**
	 * The user defined name given to this Animation.
	 */
	var name:String;
	
	/**
	 * @property {array} _frames
	 */
	var _frames:Array<Dynamic>;
	
	/**
	 * The delay in ms between each frame of the Animation, based on the given frameRate.
	 */
	var delay:Float;
	
	/**
	 * The loop state of the Animation.
	 */
	var loop:Bool;
	
	/**
	 * The number of times the animation has looped since it was last started.
	 */
	var loopCount:Float;
	
	/**
	 * Should the parent of this Animation be killed when the animation completes?
	 */
	var killOnComplete:Bool;
	
	/**
	 * The finished state of the Animation. Set to true once playback completes, false during playback.
	 */
	var isFinished:Bool;
	
	/**
	 * The playing state of the Animation. Set to false once playback completes, true during playback.
	 */
	var isPlaying:Bool;
	
	/**
	 * The paused state of the Animation.
	 */
	var isPaused:Bool;
	
	/**
	 * The time the animation paused.
	 */
	var _pauseStartTime:Bool;
	
	/**
	 * @property {number} _frameIndex
	 */
	var _frameIndex:Float;
	
	/**
	 * @property {number} _frameDiff
	 */
	var _frameDiff:Float;
	
	/**
	 * @property {number} _frameSkip
	 */
	var _frameSkip:Float;
	
	/**
	 * The currently displayed frame of the Animation.
	 */
	var currentFrame:phaser.animation.Frame;
	
	/**
	 * This event is dispatched when this Animation starts playback.
	 */
	var onStart:phaser.core.Signal;
	
	/**
	 * This event is dispatched when the Animation changes frame. By default this event is disabled due to its intensive nature. Enable it with: Animation.enableUpdate = true.
	 */
	var onUpdate:Dynamic;
	
	/**
	 * This event is dispatched when this Animation completes playback. If the animation is set to loop this is never fired, listen for onAnimationLoop instead.
	 */
	var onComplete:phaser.core.Signal;
	
	/**
	 * This event is dispatched when this Animation loops.
	 */
	var onLoop:phaser.core.Signal;
	
	/**
	 * Plays this animation.
	 */
	function play (?frameRate:Float, ?loop:Bool = false, ?killOnComplete:Bool = false):phaser.animation.Animation;
	
	/**
	 * Sets this animation back to the first frame and restarts the animation.
	 */
	function restart ():Void;
	
	/**
	 * Sets this animations playback to a given frame with the given ID.
	 */
	@:overload(function (?frameId:String, ?useLocalFrameIndex:Bool = false):Void {})
	function setFrame (?frameId:Float, ?useLocalFrameIndex:Bool = false):Void;
	
	/**
	 * Stops playback of this animation and set it to a finished state. If a resetFrame is provided it will stop playback and set frame to the first in the animation.
	 * If dispatchComplete is true it will dispatch the complete events, otherwise they'll be ignored.
	 */
	function stop (?resetFrame:Bool = false, ?dispatchComplete:Bool = false):Void;
	
	/**
	 * Called when the Game enters a paused state.
	 */
	function onPause ():Void;
	
	/**
	 * Called when the Game resumes from a paused state.
	 */
	function onResume ():Void;
	
	/**
	 * Updates this animation. Called automatically by the AnimationManager.
	 */
	function update ():Void;
	
	/**
	 * Advances by the given number of frames in the Animation, taking the loop value into consideration.
	 */
	function next (?quantity:Float = 1):Void;
	
	/**
	 * Moves backwards the given number of frames in the Animation, taking the loop value into consideration.
	 */
	function previous (?quantity:Float = 1):Void;
	
	/**
	 * Changes the FrameData object this Animation is using.
	 */
	function updateFrameData (frameData:phaser.animation.FrameData):Void;
	
	/**
	 * Cleans up this animation ready for deletion. Nulls all values and references.
	 */
	function destroy ():Void;
	
	/**
	 * Called internally when the animation finishes playback.
	 * Sets the isPlaying and isFinished states and dispatches the onAnimationComplete event if it exists on the parent and local onComplete event.
	 */
	function complete ():Void;
	
	/**
	 * @name Phaser.Animation#paused
	 */
	var paused:Bool;
	
	/**
	 * @name Phaser.Animation#frameTotal
	 */
	var frameTotal(default, null):Float;
	
	/**
	 * @name Phaser.Animation#frame
	 */
	var frame:Float;
	
	/**
	 * @name Phaser.Animation#speed
	 */
	var speed:Float;
	
	/**
	 * @name Phaser.Animation#enableUpdate
	 */
	var enableUpdate:Bool;
	
	/**
	 * Really handy function for when you are creating arrays of animation data but it's using frame names and not numbers.
	 * For example imagine you've got 30 frames named: 'explosion_0001-large' to 'explosion_0030-large'
	 * You could use this function to generate those by doing: Phaser.Animation.generateFrameNames('explosion_', 1, 30, '-large', 4);
	 */
	static function generateFrameNames (prefix:String, start:Float, stop:Float, ?suffix:String = '', ?zeroPad:Float = 0):Array<String>;
	
}
