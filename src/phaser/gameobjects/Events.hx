package phaser.gameobjects;

@:native("Phaser.Events")
extern class Events {
	
	/**
	 * @class Phaser.Events
	 */
	function new (sprite:phaser.gameobjects.Sprite);
	
	var onAddedToGroup:phaser.core.Signal;
	var onRemovedFromGroup:phaser.core.Signal;
	var onKilled:phaser.core.Signal;
	var onRevived:phaser.core.Signal;
	var onOutOfBounds:phaser.core.Signal;
	var onEnterBounds:phaser.core.Signal;
	
	var onInputOver:phaser.core.Signal;
	var onInputOut:phaser.core.Signal;
	var onInputDown:phaser.core.Signal;
	var onInputUp:phaser.core.Signal;
	var onDragStart:phaser.core.Signal;
	var onDragStop:phaser.core.Signal;
	
	var onAnimationStart:phaser.core.Signal;
	var onAnimationComplete:phaser.core.Signal;
	var onAnimationLoop:phaser.core.Signal;
	
}
