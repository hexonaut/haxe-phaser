package phaser;

import haxe.extern.EitherType;

/**
* The Animation Manager is used to add, play and update Phaser Animations.
* Any Game Object such as Phaser.Sprite that supports animation contains a single AnimationManager instance.
*/
@:native("Phaser.AnimationManager")
extern class AnimationManager {

	/**
	* The Animation Manager is used to add, play and update Phaser Animations.
	* Any Game Object such as Phaser.Sprite that supports animation contains a single AnimationManager instance.
	* 
	* @param sprite A reference to the Game Object that owns this AnimationManager.
	*/
	function new(sprite:phaser.Sprite);
	
	/**
	* The currently displayed animation, if any.
	*/
	var currentAnim:phaser.Animation;
	
	/**
	* The currently displayed Frame of animation, if any.
	* This property is only set once an Animation starts playing. Until that point it remains set as `null`.
	*/
	var currentFrame:phaser.Frame;
	
	/**
	* Gets or sets the current frame index and updates the Texture Cache for display.
	*/
	var frame:Float;
	
	/**
	* The current animations FrameData.
	*/
	var frameData:phaser.FrameData;
	
	/**
	* Gets or sets the current frame name and updates the Texture Cache for display.
	*/
	var frameName:String;
	
	/**
	* The total number of frames in the currently loaded FrameData, or -1 if no FrameData is loaded.
	*/
	var frameTotal:Float;
	
	/**
	* A reference to the currently running Game.
	*/
	var game:phaser.Game;
	
	/**
	* Set to true once animation data has been loaded.
	*/
	var isLoaded:Bool;
	
	/**
	* Gets the current animation name, if set.
	*/
	var name:String;
	
	/**
	* Gets and sets the paused state of the current animation.
	*/
	var paused:Bool;
	
	/**
	* A reference to the parent Sprite that owns this AnimationManager.
	*/
	var sprite:phaser.Sprite;
	
	/**
	* Update the animation data only while the the sprite is {@link Phaser.Sprite#visible}. Set to `false` to continue updating while the sprite is invisible.
	* Default: true
	*/
	var updateIfVisible:Bool;
	
	/**
	* Adds a new animation under the given key. Optionally set the frames, frame rate and loop.
	* Animations added in this way are played back with the play function.
	* 
	* @param name The unique (within this Sprite) name for the animation, i.e. "run", "fire", "walk".
	* @param frames An array of numbers/strings that correspond to the frames to add to this animation and in which order. e.g. [1, 2, 3] or ['run0', 'run1', run2]). If null then all frames will be used.
	* @param frameRate The speed at which the animation should play. The speed is given in frames per second. - Default: 60
	* @param loop Whether or not the animation is looped or just plays once.
	* @param useNumericIndex Are the given frames using numeric indexes (default) or strings? - Default: true
	* @return The Animation object that was created.
	*/
	function add(name:String, ?frames:EitherType<Array<Float>, Array<String>>, ?frameRate:Float, ?loop:Bool, ?useNumericIndex:Bool):phaser.Animation;
	
	/**
	* Loads FrameData into the internal temporary vars and resets the frame index to zero.
	* This is called automatically when a new Sprite is created.
	* 
	* @param frameData The FrameData set to load.
	* @param frame The frame to default to.
	* @return Returns `true` if the frame data was loaded successfully, otherwise `false`
	*/
	function copyFrameData(frameData:phaser.FrameData, frame:EitherType<String, Float>):Bool;
	
	/**
	* Destroys all references this AnimationManager contains.
	* Iterates through the list of animations stored in this manager and calls destroy on each of them.
	*/
	function destroy():Void;
	
	/**
	* Returns an animation that was previously added by name.
	* 
	* @param name The name of the animation to be returned, e.g. "fire".
	* @return The Animation instance, if found, otherwise null.
	*/
	function getAnimation(name:String):phaser.Animation;
	
	/**
	* Advances by the given number of frames in the current animation, taking the loop value into consideration.
	* 
	* @param quantity The number of frames to advance. - Default: 1
	*/
	function next(?quantity:Float):Void;
	
	/**
	* Play an animation based on the given key. The animation should previously have been added via `animations.add`
	* 
	* If the requested animation is already playing this request will be ignored.
	* If you need to reset an already running animation do so directly on the Animation object itself.
	* 
	* If you need to jump to a specific frame of this animation, then call `play` and immediately after it,
	* set the frame you require (i.e. `animation.play(); animation.frame = 4`).
	* 
	* @param name The name of the animation to be played, e.g. "fire", "walk", "jump".
	* @param frameRate The framerate to play the animation at. The speed is given in frames per second. If not provided the previously set frameRate of the Animation is used.
	* @param loop Should the animation be looped after playback. If not provided the previously set loop value of the Animation is used.
	* @param killOnComplete If set to true when the animation completes (only happens if loop=false) the parent Sprite will be killed.
	* @return A reference to playing Animation instance.
	*/
	function play(name:String, ?frameRate:Float, ?loop:Bool, ?killOnComplete:Bool):phaser.Animation;
	
	/**
	* Moves backwards the given number of frames in the current animation, taking the loop value into consideration.
	* 
	* @param quantity The number of frames to move back. - Default: 1
	*/
	function previous(?quantity:Float):Void;
	
	/**
	* Stop playback of an animation. If a name is given that specific animation is stopped, otherwise the current animation is stopped.
	* The currentAnim property of the AnimationManager is automatically set to the animation given.
	* 
	* @param name The name of the animation to be stopped, e.g. "fire". If none is given the currently running animation is stopped.
	* @param resetFrame When the animation is stopped should the currentFrame be set to the first frame of the animation (true) or paused on the last frame displayed (false)
	*/
	function stop(?name:String, ?resetFrame:Bool):Void;
	
	/**
	* The main update function is called by the Sprites update loop. It's responsible for updating animation frames and firing related events.
	* 
	* @return True if a new animation frame has been set, otherwise false.
	*/
	function update():Bool;
	
	/**
	* Check whether the frames in the given array are valid and exist.
	* 
	* @param frames An array of frames to be validated.
	* @param useNumericIndex Validate the frames based on their numeric index (true) or string index (false) - Default: true
	* @return True if all given Frames are valid, otherwise false.
	*/
	function validateFrames(frames:Array<phaser.Frame>, ?useNumericIndex:Bool):Bool;
	
}

