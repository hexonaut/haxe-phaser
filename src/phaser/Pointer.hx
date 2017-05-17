package phaser;

import haxe.extern.EitherType;
import haxe.extern.Rest;
import js.html.MouseEvent;
import js.html.Event;

/**
* A Pointer object is used by the Mouse, Touch and MSPoint managers and represents a single finger on the touch screen.
*/
@:native("Phaser.Pointer")
extern class Pointer {

	/**
	* A Pointer object is used by the Mouse, Touch and MSPoint managers and represents a single finger on the touch screen.
	* 
	* @param game A reference to the currently running game.
	* @param id The ID of the Pointer object within the game. Each game can have up to 10 active pointers.
	* @param pointerMode The operational mode of this pointer, eg. CURSOR or TOUCH. - Default: (CURSOR|CONTACT)
	*/
	function new(game:phaser.Game, id:Float, ?pointerMode:Float);
	
	/**
	* No buttons at all.
	*/
	static var NO_BUTTON:Float;
	
	/**
	* The Left Mouse button, or in PointerEvent devices a Touch contact or Pen contact.
	*/
	static var LEFT_BUTTON:Float;
	
	/**
	* The Right Mouse button, or in PointerEvent devices a Pen contact with a barrel button.
	*/
	static var RIGHT_BUTTON:Float;
	
	/**
	* The Middle Mouse button.
	*/
	static var MIDDLE_BUTTON:Float;
	
	/**
	* The X1 button. This is typically the mouse Back button, but is often reconfigured.
	* On Linux (GTK) this is unsupported. On Windows if advanced pointer software (such as IntelliPoint) is installed this doesn't register.
	*/
	static var BACK_BUTTON:Float;
	
	/**
	* The X2 button. This is typically the mouse Forward button, but is often reconfigured.
	* On Linux (GTK) this is unsupported. On Windows if advanced pointer software (such as IntelliPoint) is installed this doesn't register.
	*/
	static var FORWARD_BUTTON:Float;
	
	/**
	* The Eraser pen button on PointerEvent supported devices only.
	*/
	static var ERASER_BUTTON:Float;
	
	/**
	* An active pointer is one that is currently pressed down on the display. A Mouse is always active.
	*/
	var active:Bool;
	
	/**
	* If this Pointer is a Mouse or Pen / Stylus then you can access its X1 (back) button directly through this property.
	* 
	* The DeviceButton has its own properties such as `isDown`, `duration` and methods like `justReleased` for more fine-grained
	* button control.
	* 
	* Please see the DeviceButton docs for details on browser button limitations.
	*/
	var backButton:phaser.DeviceButton;
	
	/**
	* The button property of the most recent DOM event when this Pointer is started.
	* You should not rely on this value for accurate button detection, instead use the Pointer properties
	* `leftButton`, `rightButton`, `middleButton` and so on.
	*/
	var button:Dynamic;
	
	/**
	* A Phaser.Circle that is centered on the x/y coordinates of this pointer, useful for hit detection.
	* The Circle size is 44px (Apples recommended "finger tip" size).
	*/
	var circle:phaser.Circle;
	
	/**
	* The horizontal coordinate of the Pointer within the application's client area at which the event occurred (as opposed to the coordinates within the page).
	*/
	var clientX:Float;
	
	/**
	* The vertical coordinate of the Pointer within the application's client area at which the event occurred (as opposed to the coordinates within the page).
	*/
	var clientY:Float;
	
	/**
	* A dirty pointer needs to re-poll any interactive objects it may have been over, regardless if it has moved or not.
	*/
	var dirty:Bool;
	
	/**
	* How long the Pointer has been depressed on the touchscreen or *any* of the mouse buttons have been held down.
	* If not currently down it returns -1.
	* If you need to test a specific mouse or pen button then access the buttons directly, i.e. `Pointer.rightButton.duration`.
	*/
	var duration:Float;
	
	/**
	* If this Pointer is a Pen / Stylus then you can access its eraser button directly through this property.
	* 
	* The DeviceButton has its own properties such as `isDown`, `duration` and methods like `justReleased` for more fine-grained
	* button control.
	* 
	* Please see the DeviceButton docs for details on browser button limitations.
	*/
	var eraserButton:phaser.DeviceButton;
	
	/**
	* A Pointer object that exists is allowed to be checked for physics collisions and overlaps.
	* Default: true
	*/
	var exists:Bool;
	
	var forceOut:Bool;
	
	/**
	* If this Pointer is a Mouse or Pen / Stylus then you can access its X2 (forward) button directly through this property.
	* 
	* The DeviceButton has its own properties such as `isDown`, `duration` and methods like `justReleased` for more fine-grained
	* button control.
	* 
	* Please see the DeviceButton docs for details on browser button limitations.
	*/
	var forwardButton:phaser.DeviceButton;
	
	/**
	* A reference to the currently running game.
	*/
	var game:phaser.Game;
	
	var justReleasePreventsOver:EitherType<Bool, Float>;
	
	/**
	* The ID of the Pointer object within the game. Each game can have up to 10 active pointers.
	*/
	var id:Float;
	
	/**
	* The identifier property of the Pointer as set by the DOM event when this Pointer is started.
	*/
	var identifier:Float;
	
	/**
	* This array is erased and re-populated every time this Pointer is updated. It contains references to all
	* of the Game Objects that were considered as being valid for processing by this Pointer, this frame. To be
	* valid they must have suitable a `priorityID`, be Input enabled, visible and actually have the Pointer over
	* them. You can check the contents of this array in events such as `onInputDown`, but beware it is reset
	* every frame.
	* Default: []
	*/
	var interactiveCandidates:Array<phaser.InputHandler>;
	
	/**
	* If the Pointer is touching the touchscreen, or *any* mouse or pen button is held down, isDown is set to true.
	* If you need to check a specific mouse or pen button then use the button properties, i.e. Pointer.rightButton.isDown.
	*/
	var isDown:Bool;
	
	/**
	* If the Pointer is a mouse or pen / stylus this is true, otherwise false.
	*/
	var isMouse:Bool;
	
	/**
	* If the Pointer is not touching the touchscreen, or *all* mouse or pen buttons are up, isUp is set to true.
	* If you need to check a specific mouse or pen button then use the button properties, i.e. Pointer.rightButton.isUp.
	* Default: true
	*/
	var isUp:Bool;
	
	/**
	* If this Pointer is a Mouse or Pen / Stylus then you can access its left button directly through this property.
	* 
	* The DeviceButton has its own properties such as `isDown`, `duration` and methods like `justReleased` for more fine-grained
	* button control.
	*/
	var leftButton:phaser.DeviceButton;
	
	/**
	* If this Pointer is a Mouse or Pen / Stylus then you can access its middle button directly through this property.
	* 
	* The DeviceButton has its own properties such as `isDown`, `duration` and methods like `justReleased` for more fine-grained
	* button control.
	* 
	* Please see the DeviceButton docs for details on browser button limitations.
	*/
	var middleButton:phaser.DeviceButton;
	
	/**
	* The horizontal processed relative movement of the Pointer in pixels since last event.
	*/
	var movementX:Float;
	
	/**
	* The vertical processed relative movement of the Pointer in pixels since last event.
	*/
	var movementY:Float;
	
	/**
	* The number of milliseconds since the last click or touch event.
	*/
	var msSinceLastClick:Float;
	
	/**
	* The horizontal coordinate of the Pointer relative to whole document.
	*/
	var pageX:Float;
	
	/**
	* The vertical coordinate of the Pointer relative to whole document.
	*/
	var pageY:Float;
	
	/**
	* The pointerId property of the Pointer as set by the DOM event when this Pointer is started. The browser can and will recycle this value.
	*/
	var pointerId:Float;
	
	/**
	* The operational mode of this pointer.
	*/
	var pointerMode:Float;
	
	/**
	* A Phaser.Point object containing the current x/y values of the pointer on the display.
	*/
	var position:phaser.Point;
	
	/**
	* A Phaser.Point object containing the x/y values of the pointer when it was last in a down state on the display.
	*/
	var positionDown:phaser.Point;
	
	/**
	* A Phaser.Point object containing the x/y values of the pointer when it was last released.
	*/
	var positionUp:phaser.Point;
	
	/**
	* A timestamp representing when the Pointer was last tapped or clicked.
	*/
	var previousTapTime:Float;
	
	/**
	* The horizontal raw relative movement of the Pointer in pixels since last event.
	*/
	var rawMovementX:Float;
	
	/**
	* The vertical raw relative movement of the Pointer in pixels since last event.
	*/
	var rawMovementY:Float;
	
	/**
	* If this Pointer is a Mouse or Pen / Stylus then you can access its right button directly through this property.
	* 
	* The DeviceButton has its own properties such as `isDown`, `duration` and methods like `justReleased` for more fine-grained
	* button control.
	* 
	* Please see the DeviceButton docs for details on browser button limitations.
	*/
	var rightButton:phaser.DeviceButton;
	
	/**
	* The horizontal coordinate of the Pointer relative to the screen.
	*/
	var screenX:Float;
	
	/**
	* The vertical coordinate of the Pointer relative to the screen.
	*/
	var screenY:Float;
	
	/**
	* The target property of the Pointer as set by the DOM event when this Pointer is started.
	*/
	var target:Dynamic;
	
	/**
	* The Game Object this Pointer is currently over / touching / dragging.
	*/
	var targetObject:Dynamic;
	
	/**
	* A timestamp representing when the Pointer first touched the touchscreen.
	*/
	var timeDown:Float;
	
	/**
	* A timestamp representing when the Pointer left the touchscreen.
	*/
	var timeUp:Float;
	
	/**
	* The total number of times this Pointer has been touched to the touchscreen.
	*/
	var totalTouches:Float;
	
	/**
	* The const type of this object.
	*/
	var type:Float;
	
	/**
	* true if the Pointer is over the game canvas, otherwise false.
	*/
	var withinGame:Bool;
	
	/**
	* Gets the X value of this Pointer in world coordinates based on the world camera.
	*/
	var worldX:Float;
	
	/**
	* Gets the Y value of this Pointer in world coordinates based on the world camera.
	*/
	var worldY:Float;
	
	/**
	* The horizontal coordinate of the Pointer. This value is automatically scaled based on the game scale.
	*/
	var x:Float;
	
	/**
	* The vertical coordinate of the Pointer. This value is automatically scaled based on the game scale.
	*/
	var y:Float;
	
	/**
	* Add a click trampoline to this pointer.
	* 
	* A click trampoline is a callback that is run on the DOM 'click' event; this is primarily
	* needed with certain browsers (ie. IE11) which restrict some actions like requestFullscreen
	* to the DOM 'click' event and rejects it for 'pointer*' and 'mouse*' events.
	* 
	* This is used internally by the ScaleManager; click trampoline usage is uncommon.
	* Click trampolines can only be added to pointers that are currently down.
	* 
	* @param name The name of the trampoline; must be unique among active trampolines in this pointer.
	* @param callback Callback to run/trampoline.
	* @param callbackContext Context of the callback.
	* @param callbackArgs Additional callback args, if any. Supplied as an array.
	*/
	function addClickTrampoline(name:String, callback:Dynamic, callbackContext:Dynamic, callbackArgs:Rest<Dynamic>):Void;
	
	/**
	* The Pointer is considered justPressed if the time it was pressed onto the touchscreen or clicked is less than justPressedRate.
	* Note that calling justPressed doesn't reset the pressed status of the Pointer, it will return `true` for as long as the duration is valid.
	* If you wish to check if the Pointer was pressed down just once then see the Sprite.events.onInputDown event.
	* 
	* @param duration The time to check against. If none given it will use InputManager.justPressedRate.
	* @return true if the Pointer was pressed down within the duration given.
	*/
	function justPressed(?duration:Float):Bool;
	
	/**
	* The Pointer is considered justReleased if the time it left the touchscreen is less than justReleasedRate.
	* Note that calling justReleased doesn't reset the pressed status of the Pointer, it will return `true` for as long as the duration is valid.
	* If you wish to check if the Pointer was released just once then see the Sprite.events.onInputUp event.
	* 
	* @param duration The time to check against. If none given it will use InputManager.justReleasedRate.
	* @return true if the Pointer was released within the duration given.
	*/
	function justReleased(?duration:Float):Bool;
	
	/**
	* Called when the Pointer leaves the target area.
	* 
	* @param event The event passed up from the input handler.
	*/
	function leave(event:Dynamic):Void;
	
	/**
	* Called when the Pointer is moved.
	* 
	* @param event The event passed up from the input handler.
	* @param fromClick Was this called from the click event?
	*/
	function move(event:Dynamic, ?fromClick:Bool):Void;
	
	/**
	* Resets the Pointer properties. Called by InputManager.reset when you perform a State change.
	*/
	function reset():Void;
	
	/**
	* Resets the states of all the button booleans.
	*/
	function resetButtons():Void;
	
	/**
	* Resets the movementX and movementY properties. Use in your update handler after retrieving the values.
	*/
	function resetMovement():Void;
	
	/**
	* Called when the Pointer is pressed onto the touchscreen.
	* 
	* @param event The DOM event from the browser.
	*/
	function start(event:Dynamic):Void;
	
	/**
	* Called when the Pointer leaves the touchscreen.
	* 
	* @param event The event passed up from the input handler.
	*/
	function stop(event:Dynamic):Void;
	
	/**
	* This will change the `Pointer.targetObject` object to be the one provided.
	* 
	* This allows you to have fine-grained control over which object the Pointer is targeting.
	* 
	* Note that even if you set a new Target here, it is still able to be replaced by any other valid
	* target during the next Pointer update.
	* 
	* @param newTarget The new target for this Pointer. Note this is an `InputHandler`, so don't pass a Sprite, instead pass `sprite.input` to it.
	* @param silent If true the new target AND the old one will NOT dispatch their `onInputOver` or `onInputOut` events.
	*/
	function swapTarget(newTarget:phaser.InputHandler, ?silent:Bool):Void;
	
	/**
	* Called by the Input Manager.
	*/
	function update():Void;
	
	/**
	* Called when the event.buttons property changes from zero.
	* Contains a button bitmask.
	* 
	* @param event The DOM event.
	*/
	function updateButtons(event:MouseEvent):Void;
	
}

