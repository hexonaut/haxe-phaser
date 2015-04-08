package phaser.gameobjects.components;

@:native("Phaser.Events")
extern class Events {
	
	/**
	 * The Events component is a collection of events fired by the parent game object.
	 * 
	 * For example to tell when a Sprite has been added to a new group:
	 * 
	 * sprite.events.onAddedToGroup.add(yourFunction, this);
	 * 
	 * Where yourFunction is the function you want called when this event occurs.
	 * 
	 * The Input-related events will only be dispatched if the Sprite has had inputEnabled set to true
	 * and the Animation-related events only apply to game objects with animations like {@link Phaser.Sprite}.
	 */
	function new (sprite:phaser.gameobjects.Sprite);
	
	/**
	 * The Sprite that owns these events.
	 */
	var parent:phaser.gameobjects.Sprite;

	/**
	 * This signal is dispatched if the parent is inputEnabled and receives a down event from a Pointer.
	 */
	var onInputDown:phaser.core.Signal;

	/**
	 * This signal is dispatched if the parent is inputEnabled and receives an over event from a Pointer.
	 */
	var onInputOver:phaser.core.Signal;

	/**
	 * This signal is dispatched if the parent is inputEnabled and receives an out event from a Pointer.
	 */
	var onInputOut:phaser.core.Signal;

	/**
	 * This signal is dispatched if the parent is inputEnabled and receives an up event from a Pointer.
	 */
	var onInputUp:phaser.core.Signal;
	
	/**
	 * Removes all events.
	 */
	function destroy ():Void;
	
}
