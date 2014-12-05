package phaser.gameobjects;

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
	 * Removes all events.
	 */
	function destroy ():Void;
	
}
