package phaser.gameobjects;

@:native("Phaser.Events")
extern class Events {
	
	/**
	 * @class Phaser.Events
	 */
	function new (sprite:phaser.gameobjects.Sprite);
	
	/**
	 * The Sprite that owns these events.
	 */
	var parent:phaser.gameobjects.Sprite;
	
	/**
	 * This signal is dispatched when the parent is added to a new Group.
	 */
	var onAddedToGroup:phaser.core.Signal;
	
	/**
	 * This signal is dispatched when the parent is removed from a Group.
	 */
	var onRemovedFromGroup:phaser.core.Signal;
	
	/**
	 * This signal is dispatched when the parent is destoyed.
	 */
	var onDestroy:phaser.core.Signal;
	
	/**
	 * This signal is dispatched when the parent is killed.
	 */
	var onKilled:phaser.core.Signal;
	
	/**
	 * This signal is dispatched when the parent is revived.
	 */
	var onRevived:phaser.core.Signal;
	
	/**
	 * This signal is dispatched when the parent leaves the world bounds (only if Sprite.checkWorldBounds is true).
	 */
	var onOutOfBounds:phaser.core.Signal;
	
	/**
	 * This signal is dispatched when the parent returns within the world bounds (only if Sprite.checkWorldBounds is true).
	 */
	var onEnterBounds:phaser.core.Signal;
	
	/**
	 * This signal is dispatched if the parent is inputEnabled and receives an over event from a Pointer.
	 */
	var onInputOver:phaser.core.Signal;
	
	/**
	 * This signal is dispatched if the parent is inputEnabled and receives an out event from a Pointer.
	 */
	var onInputOut:phaser.core.Signal;
	
	/**
	 * This signal is dispatched if the parent is inputEnabled and receives a down event from a Pointer.
	 */
	var onInputDown:phaser.core.Signal;
	
	/**
	 * This signal is dispatched if the parent is inputEnabled and receives an up event from a Pointer.
	 */
	var onInputUp:phaser.core.Signal;
	
	/**
	 * This signal is dispatched if the parent is inputEnabled and receives a drag start event from a Pointer.
	 */
	var onDragStart:phaser.core.Signal;
	
	/**
	 * This signal is dispatched if the parent is inputEnabled and receives a drag stop event from a Pointer.
	 */
	var onDragStop:phaser.core.Signal;
	
	/**
	 * This signal is dispatched when the parent has an animation that is played.
	 */
	var onAnimationStart:phaser.core.Signal;
	
	/**
	 * This signal is dispatched when the parent has an animation that finishes playing.
	 */
	var onAnimationComplete:phaser.core.Signal;
	
	/**
	 * This signal is dispatched when the parent has an animation that loops playback.
	 */
	var onAnimationLoop:phaser.core.Signal;
	
}
