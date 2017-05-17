package phaser;

import haxe.extern.EitherType;

/**
* Create a new `Button` object. A Button is a special type of Sprite that is set-up to handle Pointer events automatically.
* 
* The four states a Button responds to are:
* 
* * 'Over' - when the Pointer moves over the Button. This is also commonly known as 'hover'.
* * 'Out' - when the Pointer that was previously over the Button moves out of it.
* * 'Down' - when the Pointer is pressed down on the Button. I.e. touched on a touch enabled device or clicked with the mouse.
* * 'Up' - when the Pointer that was pressed down on the Button is released again.
* 
* A different texture/frame and activation sound can be specified for any of the states.
* 
* Frames can be specified as either an integer (the frame ID) or a string (the frame name); the same values that can be used with a Sprite constructor.
*/
@:native("Phaser.Button")
extern class Button extends phaser.Image {

	/**
	* Create a new `Button` object. A Button is a special type of Sprite that is set-up to handle Pointer events automatically.
	* 
	* The four states a Button responds to are:
	* 
	* * 'Over' - when the Pointer moves over the Button. This is also commonly known as 'hover'.
	* * 'Out' - when the Pointer that was previously over the Button moves out of it.
	* * 'Down' - when the Pointer is pressed down on the Button. I.e. touched on a touch enabled device or clicked with the mouse.
	* * 'Up' - when the Pointer that was pressed down on the Button is released again.
	* 
	* A different texture/frame and activation sound can be specified for any of the states.
	* 
	* Frames can be specified as either an integer (the frame ID) or a string (the frame name); the same values that can be used with a Sprite constructor.
	* 
	* @param game Current game instance.
	* @param x X position of the Button.
	* @param y Y position of the Button.
	* @param key The image key (in the Game.Cache) to use as the texture for this Button.
	* @param callback The function to call when this Button is pressed.
	* @param callbackContext The context in which the callback will be called (usually 'this').
	* @param overFrame The frame / frameName when the button is in the Over state.
	* @param outFrame The frame / frameName when the button is in the Out state.
	* @param downFrame The frame / frameName when the button is in the Down state.
	* @param upFrame The frame / frameName when the button is in the Up state.
	*/
	function new(game:phaser.Game, ?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:EitherType<String, Float>, ?outFrame:EitherType<String, Float>, ?downFrame:EitherType<String, Float>, ?upFrame:EitherType<String, Float>);
	
	/**
	* When the Button is touched / clicked and then released you can force it to enter a state of "out" instead of "up".
	* 
	* This can also accept a {@link Phaser.PointerModer pointer mode bitmask} for more refined control.
	*/
	var forceOut:Bool;
	
	/**
	* When true the the texture frame will not be automatically switched on up/down/over/out events.
	*/
	var freezeFrames:Bool;
	
	/**
	* The Sound to be played when this Buttons Down state is activated.
	*/
	var onDownSound:EitherType<phaser.Sound, phaser.AudioSprite>;
	
	/**
	* The Sound Marker used in conjunction with the onDownSound.
	*/
	var onDownSoundMarker:String;
	
	/**
	* The Signal (or event) dispatched when this Button is in an Down state.
	*/
	var onInputDown:phaser.Signal;
	
	/**
	* The Signal (or event) dispatched when this Button is in an Out state.
	*/
	var onInputOut:phaser.Signal;
	
	/**
	* The Signal (or event) dispatched when this Button is in an Over state.
	*/
	var onInputOver:phaser.Signal;
	
	/**
	* The Signal (or event) dispatched when this Button is in an Up state.
	*/
	var onInputUp:phaser.Signal;
	
	/**
	* The Sound to be played when this Buttons Out state is activated.
	*/
	var onOutSound:EitherType<phaser.Sound, phaser.AudioSprite>;
	
	/**
	* The Sound Marker used in conjunction with the onOutSound.
	*/
	var onOutSoundMarker:String;
	
	/**
	* The Sound to be played when this Buttons Over state is activated.
	*/
	var onOverSound:EitherType<phaser.Sound, phaser.AudioSprite>;
	
	/**
	* The Sound Marker used in conjunction with the onOverSound.
	*/
	var onOverSoundMarker:String;
	
	/**
	* If true then onOver events (such as onOverSound) will only be triggered if the Pointer object causing them was the Mouse Pointer.
	* The frame will still be changed as applicable.
	* Default: true
	*/
	var onOverMouseOnly:Bool;
	
	/**
	* The Sound to be played when this Buttons Up state is activated.
	*/
	var onUpSound:EitherType<phaser.Sound, phaser.AudioSprite>;
	
	var onUpSoundMaker:String;
	
	/**
	* The const physics body type of this object.
	*/
	var physicsType:Float;
	
	/**
	* The Phaser Object Type.
	*/
	@:native("type")
	var Button_type:Float;
	
	/**
	* Clears all of the frames set on this Button.
	*/
	function clearFrames():Void;
	
	/**
	* The Sound to be played when a Pointer presses down on this Button.
	* 
	* @param sound The Sound that will be played.
	* @param marker A Sound Marker that will be used in the playback.
	*/
	function setDownSound(sound:EitherType<phaser.Sound, phaser.AudioSprite>, ?marker:String):Void;
	
	/**
	* Used to manually set the frames that will be used for the different states of the Button.
	* 
	* Frames can be specified as either an integer (the frame ID) or a string (the frame name); these are the same values that can be used with a Sprite constructor.
	* 
	* @param overFrame The frame / frameName when the button is in the Over state.
	* @param outFrame The frame / frameName when the button is in the Out state.
	* @param downFrame The frame / frameName when the button is in the Down state.
	* @param upFrame The frame / frameName when the button is in the Up state.
	*/
	function setFrames(?overFrame:EitherType<String, Float>, ?outFrame:EitherType<String, Float>, ?downFrame:EitherType<String, Float>, ?upFrame:EitherType<String, Float>):Void;
	
	/**
	* Internal function that handles input events.
	* 
	* @param sprite The Button that the event occurred on.
	* @param pointer The Pointer that activated the Button.
	*/
	function onInputOverHandler(sprite:phaser.Button, pointer:phaser.Pointer):Void;
	
	/**
	* Internal function that handles input events.
	* 
	* @param sprite The Button that the event occurred on.
	* @param pointer The Pointer that activated the Button.
	*/
	function onInputOutHandler(sprite:phaser.Button, pointer:phaser.Pointer):Void;
	
	/**
	* Internal function that handles input events.
	* 
	* @param sprite The Button that the event occurred on.
	* @param pointer The Pointer that activated the Button.
	*/
	function onInputDownHandler(sprite:phaser.Button, pointer:phaser.Pointer):Void;
	
	/**
	* Internal function that handles input events.
	* 
	* @param sprite The Button that the event occurred on.
	* @param pointer The Pointer that activated the Button.
	*/
	function onInputUpHandler(sprite:phaser.Button, pointer:phaser.Pointer, isOver:Bool):Void;
	
	/**
	* Called when this Button is removed from the World.
	*/
	function removedFromWorld():Void;
	
	/**
	* The Sound to be played when a Pointer moves out of this Button.
	* 
	* @param sound The Sound that will be played.
	* @param marker A Sound Marker that will be used in the playback.
	*/
	function setOutSound(sound:EitherType<phaser.Sound, phaser.AudioSprite>, ?marker:String):Void;
	
	/**
	* The Sound to be played when a Pointer moves over this Button.
	* 
	* @param sound The Sound that will be played.
	* @param marker A Sound Marker that will be used in the playback.
	*/
	function setOverSound(sound:EitherType<phaser.Sound, phaser.AudioSprite>, ?marker:String):Void;
	
	/**
	* Sets the sounds to be played whenever this Button is interacted with. Sounds can be either full Sound objects, or markers pointing to a section of a Sound object.
	* The most common forms of sounds are 'hover' effects and 'click' effects, which is why the order of the parameters is overSound then downSound.
	* 
	* Call this function with no parameters to reset all sounds on this Button.
	* 
	* @param overSound Over Button Sound.
	* @param overMarker Over Button Sound Marker.
	* @param downSound Down Button Sound.
	* @param downMarker Down Button Sound Marker.
	* @param outSound Out Button Sound.
	* @param outMarker Out Button Sound Marker.
	* @param upSound Up Button Sound.
	* @param upMarker Up Button Sound Marker.
	*/
	function setSounds(?overSound:EitherType<phaser.Sound, phaser.AudioSprite>, ?overMarker:String, ?downSound:EitherType<phaser.Sound, phaser.AudioSprite>, ?downMarker:String, ?outSound:EitherType<phaser.Sound, phaser.AudioSprite>, ?outMarker:String, ?upSound:EitherType<phaser.Sound, phaser.AudioSprite>, ?upMarker:String):Void;
	
	function setState(newState:Float):Void;
	
	/**
	* The Sound to be played when a Pointer has pressed down and is released from this Button.
	* 
	* @param sound The Sound that will be played.
	* @param marker A Sound Marker that will be used in the playback.
	*/
	function setUpSound(sound:EitherType<phaser.Sound, phaser.AudioSprite>, ?marker:String):Void;
	
}

