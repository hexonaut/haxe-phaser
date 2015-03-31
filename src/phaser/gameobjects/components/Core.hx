package phaser.gameobjects.components;

@:native("Phaser.Component.Core")
extern class Core {
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * A user defined name given to this Game Object.
	 * This value isn't ever used internally by Phaser, it is meant as a game level property.
	 */
	var name:String;
	
	/**
	 * The components this Game Object has installed.
	 */
	var components:Dynamic;
	
	/**
	 * The z depth of this Game Object within its parent Group.
	 * No two objects in a Group can have the same z value.
	 * This value is adjusted automatically whenever the Group hierarchy changes.
	 */
	var z:Float;
	
	/**
	 * All Phaser Game Objects have an Events class which contains all of the events that are dispatched when certain things happen to this
	 * Game Object, or any of its components.
	 */
	var events:phaser.gameobjects.components.Events;
	
	/**
	 * If the Game Object is enabled for animation (such as a Phaser.Sprite) this is a reference to its AnimationManager instance.
	 * Through it you can create, play, pause and stop animations.
	 */
	var animations:phaser.animation.AnimationManager;
	
	/**
	 * The world coordinates of this Game Object in pixels.
	 * Depending on where in the display list this Game Object is placed this value can differ from position, 
	 * which contains the x/y coordinates relative to the Game Objects parent.
	 */
	var world:phaser.geom.Point;
	
	/**
	 * A debug flag designed for use with Game.enableStep.
	 */
	var debug:Bool;
	
	/**
	 * The position the Game Object was located in the previous frame.
	 */
	var previousPosition:phaser.geom.Point;
	
	/**
	 * The rotation the Game Object was in set to in the previous frame. Value is in radians.
	 */
	var previousRotation:Float;
	
	/**
	 * The render order ID is used internally by the renderer and Input Manager and should not be modified.
	 * This property is mostly used internally by the renderers, but is exposed for the use of plugins.
	 */
	var renderOrderID:Float;
	
	/**
	 * A Game Object is considered fresh if it has just been created or reset and is yet to receive a renderer transform update.
	 * This property is mostly used internally by the physics systems, but is exposed for the use of plugins.
	 */
	var fresh:Bool;
	
	/**
	 * Controls if this Game Object is processed by the core game loop.
	 * If this Game Object has a physics body it also controls if its physics body is updated or not.
	 * When exists is set to false it will remove its physics body from the physics world if it has one.
	 * It also toggles the visible property to false as well.
	 * 
	 * Setting exists to true will add its physics body back in to the physics world, if it has one.
	 * It will also set the visible property to true.
	 */
	var exists:Bool;
	
}
