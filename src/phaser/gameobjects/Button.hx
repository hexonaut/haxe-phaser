package phaser.gameobjects;

@:native("Phaser.Button")
extern class Button extends phaser.gameobjects.Image {
	
	/**
	 * Internal variable.
	 */
	var _onOverFrameName:String;
	
	/**
	 * Internal variable.
	 */
	var _onOutFrameName:String;
	
	/**
	 * Internal variable.
	 */
	var _onDownFrameName:String;
	
	/**
	 * Internal variable.
	 */
	var _onUpFrameName:String;
	
	/**
	 * Internal variable.
	 */
	var _onOverFrameID:Float;
	
	/**
	 * Internal variable.
	 */
	var _onOutFrameID:Float;
	
	/**
	 * Internal variable.
	 */
	var _onDownFrameID:Float;
	
	/**
	 * Internal variable.
	 */
	var _onUpFrameID:Float;
	
	/**
	 * If true then onOver events (such as onOverSound) will only be triggered if the Pointer object causing them was the Mouse Pointer.
	 */
	var onOverMouseOnly:Bool;
	
	/**
	 * The Sound to be played when this Buttons Over state is activated.
	 */
	var onOverSound:phaser.sound.Sound;
	
	/**
	 * The Sound to be played when this Buttons Out state is activated.
	 */
	var onOutSound:phaser.sound.Sound;
	
	/**
	 * The Sound to be played when this Buttons Down state is activated.
	 */
	var onDownSound:phaser.sound.Sound;
	
	/**
	 * The Sound to be played when this Buttons Up state is activated.
	 */
	var onUpSound:phaser.sound.Sound;
	
	/**
	 * The Sound Marker used in conjunction with the onOverSound.
	 */
	var onOverSoundMarker:String;
	
	/**
	 * The Sound Marker used in conjunction with the onOutSound.
	 */
	var onOutSoundMarker:String;
	
	/**
	 * The Sound Marker used in conjunction with the onDownSound.
	 */
	var onDownSoundMarker:String;
	
	/**
	 * The Sound Marker used in conjunction with the onUpSound.
	 */
	var onUpSoundMarker:String;
	
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
	 * When true the Button will cease to change texture frame on all events (over, out, up, down).
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
	 * Used to manually set the frames that will be used for the different states of the Button.
	 */
	@:overload(function (?overFrame:String, ?outFrame:String, ?downFrame:String, ?upFrame:String):Void {})
	@:overload(function (?overFrame:Float, ?outFrame:String, ?downFrame:String, ?upFrame:String):Void {})
	@:overload(function (?overFrame:String, ?outFrame:Float, ?downFrame:String, ?upFrame:String):Void {})
	@:overload(function (?overFrame:Float, ?outFrame:Float, ?downFrame:String, ?upFrame:String):Void {})
	@:overload(function (?overFrame:String, ?outFrame:String, ?downFrame:Float, ?upFrame:String):Void {})
	@:overload(function (?overFrame:Float, ?outFrame:String, ?downFrame:Float, ?upFrame:String):Void {})
	@:overload(function (?overFrame:String, ?outFrame:Float, ?downFrame:Float, ?upFrame:String):Void {})
	@:overload(function (?overFrame:Float, ?outFrame:Float, ?downFrame:Float, ?upFrame:String):Void {})
	@:overload(function (?overFrame:String, ?outFrame:String, ?downFrame:String, ?upFrame:Float):Void {})
	@:overload(function (?overFrame:Float, ?outFrame:String, ?downFrame:String, ?upFrame:Float):Void {})
	@:overload(function (?overFrame:String, ?outFrame:Float, ?downFrame:String, ?upFrame:Float):Void {})
	@:overload(function (?overFrame:Float, ?outFrame:Float, ?downFrame:String, ?upFrame:Float):Void {})
	@:overload(function (?overFrame:String, ?outFrame:String, ?downFrame:Float, ?upFrame:Float):Void {})
	@:overload(function (?overFrame:Float, ?outFrame:String, ?downFrame:Float, ?upFrame:Float):Void {})
	@:overload(function (?overFrame:String, ?outFrame:Float, ?downFrame:Float, ?upFrame:Float):Void {})
	function setFrames (?overFrame:Float, ?outFrame:Float, ?downFrame:Float, ?upFrame:Float):Void;
	
	/**
	 * Sets the sounds to be played whenever this Button is interacted with. Sounds can be either full Sound objects, or markers pointing to a section of a Sound object.
	 * The most common forms of sounds are 'hover' effects and 'click' effects, which is why the order of the parameters is overSound then downSound.
	 * Call this function with no parameters at all to reset all sounds on this Button.
	 */
	function setSounds (?overSound:phaser.sound.Sound, ?overMarker:String, ?downSound:phaser.sound.Sound, ?downMarker:String, ?outSound:phaser.sound.Sound, ?outMarker:String, ?upSound:phaser.sound.Sound, ?upMarker:String):Void;
	
	/**
	 * The Sound to be played when a Pointer moves over this Button.
	 */
	function setOverSound (sound:phaser.sound.Sound, ?marker:String):Void;
	
	/**
	 * The Sound to be played when a Pointer moves out of this Button.
	 */
	function setOutSound (sound:phaser.sound.Sound, ?marker:String):Void;
	
	/**
	 * The Sound to be played when a Pointer presses down on this Button.
	 */
	function setDownSound (sound:phaser.sound.Sound, ?marker:String):Void;
	
	/**
	 * The Sound to be played when a Pointer has pressed down and is released from this Button.
	 */
	function setUpSound (sound:phaser.sound.Sound, ?marker:String):Void;
	
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
	
	/**
	 * Internal function that handles Button state changes.
	 */
	function setState (newState:Float):Void;
	
}
