package phaser.physics.p2;

@:native("Phaser.Physics.P2.RevoluteConstraint")
extern class RevoluteConstraint {
	
	/**
	 * Connects two bodies at given offset points, letting them rotate relative to each other around this point.
	 * The pivot points are given in world (pixel) coordinates.
	 */
	function new (world:phaser.physics.p2.World, bodyA:Dynamic, pivotA:Dynamic, bodyB:Dynamic, pivotB:Dynamic, ?maxForce:Float = 0, ?worldPivot:Dynamic);
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * Local reference to P2 World.
	 */
	var world:phaser.physics.p2.World;
	
}
