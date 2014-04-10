package phaser.physics.p2;

@:native("Phaser.Physics.P2.GearConstraint")
extern class GearConstraint {
	
	/**
	 * Connects two bodies at given offset points, letting them rotate relative to each other around this point.
	 */
	function new (world:phaser.physics.p2.World, bodyA:Dynamic, bodyB:Dynamic, ?angle:Float = 0, ?ratio:Float = 1);
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * Local reference to P2 World.
	 */
	var world:phaser.physics.p2.World;
	
}
