package phaser;

/**
* The Events component is a collection of events fired by the parent Game Object.
* 
* Phaser uses what are known as 'Signals' for all event handling. All of the events in
* this class are signals you can subscribe to, much in the same way you'd "listen" for
* an event.
* 
* For example to tell when a Sprite has been added to a new group, you can bind a function
* to the `onAddedToGroup` signal:
* 
* `sprite.events.onAddedToGroup.add(yourFunction, this);`
* 
* Where `yourFunction` is the function you want called when this event occurs.
* 
* For more details about how signals work please see the Phaser.Signal class.
* 
* The Input-related events will only be dispatched if the Sprite has had `inputEnabled` set to `true`
* and the Animation-related events only apply to game objects with animations like {@link Phaser.Sprite}.
*/
@:native("Phaser.Events")
extern class Events {

	/**
	* The Events component is a collection of events fired by the parent Game Object.
	* 
	* Phaser uses what are known as 'Signals' for all event handling. All of the events in
	* this class are signals you can subscribe to, much in the same way you'd "listen" for
	* an event.
	* 
	* For example to tell when a Sprite has been added to a new group, you can bind a function
	* to the `onAddedToGroup` signal:
	* 
	* `sprite.events.onAddedToGroup.add(yourFunction, this);`
	* 
	* Where `yourFunction` is the function you want called when this event occurs.
	* 
	* For more details about how signals work please see the Phaser.Signal class.
	* 
	* The Input-related events will only be dispatched if the Sprite has had `inputEnabled` set to `true`
	* and the Animation-related events only apply to game objects with animations like {@link Phaser.Sprite}.
	* 
	* @param sprite A reference to the game object / Sprite that owns this Events object.
	*/
	function new(sprite:phaser.Sprite);
	
	/**
	* The Sprite that owns these events.
	*/
	var parent:phaser.Sprite;
	
	/**
	* This signal is dispatched when this Game Object is added to a new Group.
	* It is sent two arguments:
	* {any} The Game Object that was added to the Group.
	* {Phaser.Group} The Group it was added to.
	*/
	var onAddedToGroup:phaser.Signal;
	
	/**
	* This signal is dispatched when the Game Object is removed from a Group.
	* It is sent two arguments:
	* {any} The Game Object that was removed from the Group.
	* {Phaser.Group} The Group it was removed from.
	*/
	var onRemovedFromGroup:phaser.Signal;
	
	/**
	* This Signal is never used internally by Phaser and is now deprecated.
	*/
	var onRemovedFromWorld:phaser.Signal;
	
	/**
	* This signal is dispatched when the Game Object is killed.
	* This happens when `Sprite.kill()` is called.
	* Please understand the difference between `kill` and `destroy` by looking at their respective methods.
	* It is sent one argument:
	* {any} The Game Object that was killed.
	*/
	var onKilled:phaser.Signal;
	
	/**
	* This signal is dispatched when the Game Object is revived from a previously killed state.
	* This happens when `Sprite.revive()` is called.
	* It is sent one argument:
	* {any} The Game Object that was revived.
	*/
	var onRevived:phaser.Signal;
	
	/**
	* This signal is dispatched when the Game Object leaves the Phaser.World bounds.
	* This signal is only if `Sprite.checkWorldBounds` is set to `true`.
	* It is sent one argument:
	* {any} The Game Object that left the World bounds.
	*/
	var onOutOfBounds:phaser.Signal;
	
	/**
	* This signal is dispatched when the Game Object returns within the Phaser.World bounds, having previously been outside of them.
	* This signal is only if `Sprite.checkWorldBounds` is set to `true`.
	* It is sent one argument:
	* {any} The Game Object that entered the World bounds.
	*/
	var onEnterBounds:phaser.Signal;
	
	/**
	* This signal is dispatched if the Game Object has `inputEnabled` set to `true`,
	* and receives an over event from a Phaser.Pointer.
	* It is sent two arguments:
	* {any} The Game Object that received the event.
	* {Phaser.Pointer} The Phaser.Pointer object that caused the event.
	*/
	var onInputOver:phaser.Signal;
	
	/**
	* This signal is dispatched if the Game Object has `inputEnabled` set to `true`,
	* and receives an out event from a Phaser.Pointer, which was previously over it.
	* It is sent two arguments:
	* {any} The Game Object that received the event.
	* {Phaser.Pointer} The Phaser.Pointer object that caused the event.
	*/
	var onInputOut:phaser.Signal;
	
	/**
	* This signal is dispatched if the Game Object has `inputEnabled` set to `true`,
	* and receives a down event from a Phaser.Pointer. This effectively means the Pointer has been
	* pressed down (but not yet released) on the Game Object.
	* It is sent two arguments:
	* {any} The Game Object that received the event.
	* {Phaser.Pointer} The Phaser.Pointer object that caused the event.
	*/
	var onInputDown:phaser.Signal;
	
	/**
	* This signal is dispatched if the Game Object has `inputEnabled` set to `true`,
	* and receives an up event from a Phaser.Pointer. This effectively means the Pointer had been
	* pressed down, and was then released on the Game Object.
	* It is sent three arguments:
	* {any} The Game Object that received the event.
	* {Phaser.Pointer} The Phaser.Pointer object that caused the event.
	* {boolean} isOver - Is the Pointer still over the Game Object?
	*/
	var onInputUp:phaser.Signal;
	
	/**
	* This signal is dispatched when the Game Object is destroyed.
	* This happens when `Sprite.destroy()` is called, or `Group.destroy()` with `destroyChildren` set to true.
	* It is sent one argument:
	* {any} The Game Object that was destroyed.
	*/
	var onDestroy:phaser.Signal;
	
	/**
	* This signal is dispatched if the Game Object has been `inputEnabled` and `enableDrag` has been set.
	* It is sent when a Phaser.Pointer starts to drag the Game Object, taking into consideration the various
	* drag limitations that may be set.
	* It is sent four arguments:
	* {any} The Game Object that received the event.
	* {Phaser.Pointer} The Phaser.Pointer object that caused the event.
	* {number} The x coordinate that the drag started from.
	* {number} The y coordinate that the drag started from.
	*/
	var onDragStart:phaser.Signal;
	
	/**
	* This signal is dispatched if the Game Object has been `inputEnabled` and `enableDrag` has been set.
	* It is sent when a Phaser.Pointer stops dragging the Game Object.
	* It is sent two arguments:
	* {any} The Game Object that received the event.
	* {Phaser.Pointer} The Phaser.Pointer object that caused the event.
	*/
	var onDragStop:phaser.Signal;
	
	/**
	* This signal is dispatched if the Game Object has been `inputEnabled` and `enableDrag` has been set.
	* It is sent when a Phaser.Pointer is actively dragging the Game Object.
	* Be warned: This is a high volume Signal. Be careful what you bind to it.
	* It is sent six arguments:
	* {any} The Game Object that received the event.
	* {Phaser.Pointer} The Phaser.Pointer object that caused the event.
	* {number} The new x coordinate of the Game Object.
	* {number} The new y coordinate of the Game Object.
	* {Phaser.Point} A Point object that contains the point the Game Object was snapped to, if `snapOnDrag` has been enabled.
	* {boolean} The `fromStart` boolean, indicates if this is the first update immediately after the drag has started.
	*/
	var onDragUpdate:phaser.Signal;
	
	/**
	* This signal is dispatched if the Game Object has the AnimationManager component,
	* and an Animation has been played.
	* You can also listen to `Animation.onStart` rather than via the Game Objects events.
	* It is sent two arguments:
	* {any} The Game Object that received the event.
	* {Phaser.Animation} The Phaser.Animation that was started.
	*/
	var onAnimationStart:phaser.Signal;
	
	/**
	* This signal is dispatched if the Game Object has the AnimationManager component,
	* and an Animation has been stopped (via `animation.stop()` and the `dispatchComplete` argument has been set.
	* You can also listen to `Animation.onComplete` rather than via the Game Objects events.
	* It is sent two arguments:
	* {any} The Game Object that received the event.
	* {Phaser.Animation} The Phaser.Animation that was stopped.
	*/
	var onAnimationComplete:phaser.Signal;
	
	/**
	* This signal is dispatched if the Game Object has the AnimationManager component,
	* and an Animation has looped playback.
	* You can also listen to `Animation.onLoop` rather than via the Game Objects events.
	* It is sent two arguments:
	* {any} The Game Object that received the event.
	* {Phaser.Animation} The Phaser.Animation that looped.
	*/
	var onAnimationLoop:phaser.Signal;
	
	/**
	* Removes all events.
	*/
	function destroy():Void;
	
}

