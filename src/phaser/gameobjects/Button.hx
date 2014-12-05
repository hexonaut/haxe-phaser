package phaser.gameobjects;

@:native("Phaser.Button")
extern class Button extends phaser.gameobjects.Image {
	
	/**
	 * The name or ID of the Over state frame.
	 */
	var onOverFrame:Dynamic;
	
	/**
	 * The name or ID of the Out state frame.
	 */
	var onOutFrame:Dynamic;
	
	/**
	 * The name or ID of the Down state frame.
	 */
	var onDownFrame:Dynamic;
	
	/**
	 * The name or ID of the Up state frame.
	 */
	var onUpFrame:Dynamic;
	
	/**
	 * The Sound to be played when this Buttons Over state is activated.
	 */
	var onOverSound(default, null):Dynamic;
	
	/**
	 * The Sound to be played when this Buttons Out state is activated.
	 */
	var onOutSound(default, null):Dynamic;
	
	/**
	 * The Sound to be played when this Buttons Down state is activated.
	 */
	var onDownSound(default, null):Dynamic;
	
	/**
	 * The Sound to be played when this Buttons Up state is activated.
	 */
	var onUpSound(default, null):Dynamic;
	
	/**
	 * The Sound Marker used in conjunction with the onOverSound.
	 */
	var onOverSoundMarker(default, null):String;
	
	/**
	 * The Sound Marker used in conjunction with the onOutSound.
	 */
	var onOutSoundMarker(default, null):String;
	
	/**
	 * The Sound Marker used in conjunction with the onDownSound.
	 */
	var onDownSoundMarker(default, null):String;
	
	/**
	 * The Sound Marker used in conjunction with the onUpSound.
	 */
	var onUpSoundMarker(default, null):String;
	
	/**
	 * The Signal (or event) dispatched when this Button is in an Over state.
	 */
	var onInputOver:phaser.core.Signal;
	
	/**
	 * The Signal (or event) dispatched when this Button is in an Out state.
	 */
	var onInputOut:phaser.core.Signal;
	
	/**
	 * The Signal (or event) dispatched when this Button is in an Down state.
	 */
	var onInputDown:phaser.core.Signal;
	
	/**
	 * The Signal (or event) dispatched when this Button is in an Up state.
	 */
	var onInputUp:phaser.core.Signal;
	
	/**
	 * If true then onOver events (such as onOverSound) will only be triggered if the Pointer object causing them was the Mouse Pointer.
	 * The frame will still be changed as applicable.
	 */
	var onOverMouseOnly:Bool;
	
	/**
	 * When true the the texture frame will not be automatically switched on up/down/over/out events.
	 */
	var freezeFrames:Bool;
	
	/**
	 * When the Button is touched / clicked and then released you can force it to enter a state of "out" instead of "up".
	 */
	var forceOut:Bool;
	
	/**
	 * Clears all of the frames set on this Button.
	 */
	function clearFrames ():Void;
	
	/**
	 * Called when this Button is removed from the World.
	 */
	function removedFromWorld ():Void;
	
	/**
	 * Set the frame name/ID for the given state.
	 */
	@:overload(function (state:Dynamic, frame:Float, switchImmediately:Bool):Void {})
	function setStateFrame (state:Dynamic, frame:String, switchImmediately:Bool):Void;
	
	/**
	 * Change the frame to that of the given state, <em>if</em> the state has a frame assigned <em>and</em> if the frames are not currently "frozen".
	 */
	function changeStateFrame (state:Dynamic):Bool;
	
	/**
	 * Used to manually set the frames that will be used for the different states of the Button.
	 * 
	 * Frames can be specified as either an integer (the frame ID) or a string (the frame name); these are the same values that can be used with a Sprite constructor.
	 */
	@:overload(function (?overFrame:String, ?outFrame:String, ?downFrame:String, ?upFrame:String):Void {})
	@:overload(function (?overFrame:Int, ?outFrame:String, ?downFrame:String, ?upFrame:String):Void {})
	@:overload(function (?overFrame:String, ?outFrame:Int, ?downFrame:String, ?upFrame:String):Void {})
	@:overload(function (?overFrame:Int, ?outFrame:Int, ?downFrame:String, ?upFrame:String):Void {})
	@:overload(function (?overFrame:String, ?outFrame:String, ?downFrame:Int, ?upFrame:String):Void {})
	@:overload(function (?overFrame:Int, ?outFrame:String, ?downFrame:Int, ?upFrame:String):Void {})
	@:overload(function (?overFrame:String, ?outFrame:Int, ?downFrame:Int, ?upFrame:String):Void {})
	@:overload(function (?overFrame:Int, ?outFrame:Int, ?downFrame:Int, ?upFrame:String):Void {})
	@:overload(function (?overFrame:String, ?outFrame:String, ?downFrame:String, ?upFrame:Int):Void {})
	@:overload(function (?overFrame:Int, ?outFrame:String, ?downFrame:String, ?upFrame:Int):Void {})
	@:overload(function (?overFrame:String, ?outFrame:Int, ?downFrame:String, ?upFrame:Int):Void {})
	@:overload(function (?overFrame:Int, ?outFrame:Int, ?downFrame:String, ?upFrame:Int):Void {})
	@:overload(function (?overFrame:String, ?outFrame:String, ?downFrame:Int, ?upFrame:Int):Void {})
	@:overload(function (?overFrame:Int, ?outFrame:String, ?downFrame:Int, ?upFrame:Int):Void {})
	@:overload(function (?overFrame:String, ?outFrame:Int, ?downFrame:Int, ?upFrame:Int):Void {})
	function setFrames (?overFrame:Int, ?outFrame:Int, ?downFrame:Int, ?upFrame:Int):Void;
	
	/**
	 * Set the sound/marker for the given state.
	 */
	@:overload(function (state:Dynamic, ?sound:phaser.sound.Sound, ?marker:String = ''):Void {})
	function setStateSound (state:Dynamic, ?sound:phaser.sound.AudioSprite, ?marker:String = ''):Void;
	
	/**
	 * Play the sound for the given state, <em>if</em> the state has a sound assigned.
	 */
	function playStateSound (state:Dynamic):Bool;
	
	/**
	 * Sets the sounds to be played whenever this Button is interacted with. Sounds can be either full Sound objects, or markers pointing to a section of a Sound object.
	 * The most common forms of sounds are 'hover' effects and 'click' effects, which is why the order of the parameters is overSound then downSound.
	 * 
	 * Call this function with no parameters to reset all sounds on this Button.
	 */
	@:overload(function (?overSound:phaser.sound.Sound, ?overMarker:String, ?downSound:phaser.sound.Sound, ?downMarker:String, ?outSound:phaser.sound.Sound, ?outMarker:String, ?upSound:phaser.sound.Sound, ?upMarker:String):Void {})
	@:overload(function (?overSound:phaser.sound.AudioSprite, ?overMarker:String, ?downSound:phaser.sound.Sound, ?downMarker:String, ?outSound:phaser.sound.Sound, ?outMarker:String, ?upSound:phaser.sound.Sound, ?upMarker:String):Void {})
	@:overload(function (?overSound:phaser.sound.Sound, ?overMarker:String, ?downSound:phaser.sound.AudioSprite, ?downMarker:String, ?outSound:phaser.sound.Sound, ?outMarker:String, ?upSound:phaser.sound.Sound, ?upMarker:String):Void {})
	@:overload(function (?overSound:phaser.sound.AudioSprite, ?overMarker:String, ?downSound:phaser.sound.AudioSprite, ?downMarker:String, ?outSound:phaser.sound.Sound, ?outMarker:String, ?upSound:phaser.sound.Sound, ?upMarker:String):Void {})
	@:overload(function (?overSound:phaser.sound.Sound, ?overMarker:String, ?downSound:phaser.sound.Sound, ?downMarker:String, ?outSound:phaser.sound.AudioSprite, ?outMarker:String, ?upSound:phaser.sound.Sound, ?upMarker:String):Void {})
	@:overload(function (?overSound:phaser.sound.AudioSprite, ?overMarker:String, ?downSound:phaser.sound.Sound, ?downMarker:String, ?outSound:phaser.sound.AudioSprite, ?outMarker:String, ?upSound:phaser.sound.Sound, ?upMarker:String):Void {})
	@:overload(function (?overSound:phaser.sound.Sound, ?overMarker:String, ?downSound:phaser.sound.AudioSprite, ?downMarker:String, ?outSound:phaser.sound.AudioSprite, ?outMarker:String, ?upSound:phaser.sound.Sound, ?upMarker:String):Void {})
	@:overload(function (?overSound:phaser.sound.AudioSprite, ?overMarker:String, ?downSound:phaser.sound.AudioSprite, ?downMarker:String, ?outSound:phaser.sound.AudioSprite, ?outMarker:String, ?upSound:phaser.sound.Sound, ?upMarker:String):Void {})
	@:overload(function (?overSound:phaser.sound.Sound, ?overMarker:String, ?downSound:phaser.sound.Sound, ?downMarker:String, ?outSound:phaser.sound.Sound, ?outMarker:String, ?upSound:phaser.sound.AudioSprite, ?upMarker:String):Void {})
	@:overload(function (?overSound:phaser.sound.AudioSprite, ?overMarker:String, ?downSound:phaser.sound.Sound, ?downMarker:String, ?outSound:phaser.sound.Sound, ?outMarker:String, ?upSound:phaser.sound.AudioSprite, ?upMarker:String):Void {})
	@:overload(function (?overSound:phaser.sound.Sound, ?overMarker:String, ?downSound:phaser.sound.AudioSprite, ?downMarker:String, ?outSound:phaser.sound.Sound, ?outMarker:String, ?upSound:phaser.sound.AudioSprite, ?upMarker:String):Void {})
	@:overload(function (?overSound:phaser.sound.AudioSprite, ?overMarker:String, ?downSound:phaser.sound.AudioSprite, ?downMarker:String, ?outSound:phaser.sound.Sound, ?outMarker:String, ?upSound:phaser.sound.AudioSprite, ?upMarker:String):Void {})
	@:overload(function (?overSound:phaser.sound.Sound, ?overMarker:String, ?downSound:phaser.sound.Sound, ?downMarker:String, ?outSound:phaser.sound.AudioSprite, ?outMarker:String, ?upSound:phaser.sound.AudioSprite, ?upMarker:String):Void {})
	@:overload(function (?overSound:phaser.sound.AudioSprite, ?overMarker:String, ?downSound:phaser.sound.Sound, ?downMarker:String, ?outSound:phaser.sound.AudioSprite, ?outMarker:String, ?upSound:phaser.sound.AudioSprite, ?upMarker:String):Void {})
	@:overload(function (?overSound:phaser.sound.Sound, ?overMarker:String, ?downSound:phaser.sound.AudioSprite, ?downMarker:String, ?outSound:phaser.sound.AudioSprite, ?outMarker:String, ?upSound:phaser.sound.AudioSprite, ?upMarker:String):Void {})
	function setSounds (?overSound:phaser.sound.AudioSprite, ?overMarker:String, ?downSound:phaser.sound.AudioSprite, ?downMarker:String, ?outSound:phaser.sound.AudioSprite, ?outMarker:String, ?upSound:phaser.sound.AudioSprite, ?upMarker:String):Void;
	
	/**
	 * The Sound to be played when a Pointer moves over this Button.
	 */
	@:overload(function (sound:phaser.sound.Sound, ?marker:String):Void {})
	function setOverSound (sound:phaser.sound.AudioSprite, ?marker:String):Void;
	
	/**
	 * The Sound to be played when a Pointer moves out of this Button.
	 */
	@:overload(function (sound:phaser.sound.Sound, ?marker:String):Void {})
	function setOutSound (sound:phaser.sound.AudioSprite, ?marker:String):Void;
	
	/**
	 * The Sound to be played when a Pointer presses down on this Button.
	 */
	@:overload(function (sound:phaser.sound.Sound, ?marker:String):Void {})
	function setDownSound (sound:phaser.sound.AudioSprite, ?marker:String):Void;
	
	/**
	 * The Sound to be played when a Pointer has pressed down and is released from this Button.
	 */
	@:overload(function (sound:phaser.sound.Sound, ?marker:String):Void {})
	function setUpSound (sound:phaser.sound.AudioSprite, ?marker:String):Void;
	
	/**
	 * Internal function that handles input events.
	 */
	function onInputOverHandler (sprite:phaser.gameobjects.Button, pointer:phaser.input.Pointer):Void;
	
	/**
	 * Internal function that handles input events.
	 */
	function onInputOutHandler (sprite:phaser.gameobjects.Button, pointer:phaser.input.Pointer):Void;
	
	/**
	 * Internal function that handles input events.
	 */
	function onInputDownHandler (sprite:phaser.gameobjects.Button, pointer:phaser.input.Pointer):Void;
	
	/**
	 * Internal function that handles input events.
	 */
	function onInputUpHandler (sprite:phaser.gameobjects.Button, pointer:phaser.input.Pointer):Void;
	
}
