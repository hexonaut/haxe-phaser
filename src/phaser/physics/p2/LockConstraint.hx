package phaser.physics.p2;

@:native("Phaser.Physics.P2.LockConstraint")
extern class LockConstraint {
	
	/**
	 * Locks the relative position between two bodies.
	 */
	function new (world:phaser.physics.p2.World, bodyA:Dynamic, bodyB:Dynamic, ?offset:Array<Dynamic>, ?angle:Float = 0, ?maxForce:Float);
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * Local reference to P2 World.
	 */
	var world:phaser.physics.p2.World;
	
}
