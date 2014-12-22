package phaser.animation;

@:native("Phaser.AnimationManager")
extern class AnimationManager {
	
	/**
	 * The Animation Manager is used to add, play and update Phaser Animations.
	 * Any Game Object such as Phaser.Sprite that supports animation contains a single AnimationManager instance.
	 */
	function new (sprite:phaser.gameobjects.Sprite);
	
	/**
	 * A reference to the parent Sprite that owns this AnimationManager.
	 */
	var sprite:phaser.gameobjects.Sprite;
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The currently displayed Frame of animation, if any.
	 */
	var currentFrame:phaser.animation.Frame;
	
	/**
	 * The currently displayed animation, if any.
	 */
	var currentAnim:phaser.animation.Animation;
	
	/**
	 * Should the animation data continue to update even if the Sprite.visible is set to false.
	 */
	var updateIfVisible:Bool;
	
	/**
	 * Set to true once animation data has been loaded.
	 */
	var isLoaded:Bool;
	
	/**
	 * A temp. var for holding the currently playing Animations FrameData.
	 */
	var _frameData:phaser.animation.FrameData;
	
	/**
	 * An internal object that stores all of the Animation instances.
	 */
	var _anims:Dynamic;
	
	/**
	 * An internal object to help avoid gc.
	 */
	var _outputFrames:Dynamic;
	
	/**
	 * Loads FrameData into the internal temporary vars and resets the frame index to zero.
	 * This is called automatically when a new Sprite is created.
	 */
	@:overload(function (frameData:phaser.animation.FrameData, frame:String):Bool {})
	function loadFrameData (frameData:phaser.animation.FrameData, frame:Float):Bool;
	
	/**
	 * Loads FrameData into the internal temporary vars and resets the frame index to zero.
	 * This is called automatically when a new Sprite is created.
	 */
	@:overload(function (frameData:phaser.animation.FrameData, frame:String):Bool {})
	function copyFrameData (frameData:phaser.animation.FrameData, frame:Float):Bool;
	
	/**
	 * Adds a new animation under the given key. Optionally set the frames, frame rate and loop.
	 * Animations added in this way are played back with the play function.
	 */
	function add (name:String, ?frames:Array<Dynamic>, ?frameRate:Float = 60, ?loop:Bool = false, ?useNumericIndex:Bool = true):phaser.animation.Animation;
	
	/**
	 * Check whether the frames in the given array are valid and exist.
	 */
	function validateFrames (frames:Array<Dynamic>, ?useNumericIndex:Bool = true):Bool;
	
	/**
	 * Play an animation based on the given key. The animation should previously have been added via sprite.animations.add()
	 * If the requested animation is already playing this request will be ignored. If you need to reset an already running animation do so directly on the Animation object itself.
	 */
	function play (name:String, ?frameRate:Float, ?loop:Bool = false, ?killOnComplete:Bool = false):phaser.animation.Animation;
	
	/**
	 * Stop playback of an animation. If a name is given that specific animation is stopped, otherwise the current animation is stopped.
	 * The currentAnim property of the AnimationManager is automatically set to the animation given.
	 */
	function stop (?name:String, ?resetFrame:Bool = false):Void;
	
	/**
	 * The main update function is called by the Sprites update loop. It's responsible for updating animation frames and firing related events.
	 */
	function update ():Bool;
	
	/**
	 * Advances by the given number of frames in the current animation, taking the loop value into consideration.
	 */
	function next (?quantity:Float = 1):Void;
	
	/**
	 * Moves backwards the given number of frames in the current animation, taking the loop value into consideration.
	 */
	function previous (?quantity:Float = 1):Void;
	
	/**
	 * Returns an animation that was previously added by name.
	 */
	function getAnimation (name:String):phaser.animation.Animation;
	
	/**
	 * Refreshes the current frame data back to the parent Sprite and also resets the texture data.
	 */
	function refreshFrame ():Void;
	
	/**
	 * Destroys all references this AnimationManager contains.
	 * Iterates through the list of animations stored in this manager and calls destroy on each of them.
	 */
	function destroy ():Void;
	
	/**
	 * @name Phaser.AnimationManager#frameData
	 */
	var frameData(default, null):phaser.animation.FrameData;
	
	/**
	 * @name Phaser.AnimationManager#frameTotal
	 */
	var frameTotal(default, null):Float;
	
	/**
	 * @name Phaser.AnimationManager#paused
	 */
	var paused:Bool;
	
	/**
	 * @name Phaser.AnimationManager#name
	 */
	var name:String;
	
	/**
	 * @name Phaser.AnimationManager#frame
	 */
	var frame:Float;
	
	/**
	 * @name Phaser.AnimationManager#frameName
	 */
	var frameName:String;
	
}
