package phaser.physics.p2;

@:native("Phaser.Physics.P2.DistanceConstraint")
extern class DistanceConstraint {
	
	/**
	 * A constraint that tries to keep the distance between two bodies constant.
	 */
	function new (world:phaser.physics.p2.World, bodyA:Dynamic, bodyB:Dynamic, distance:Float, ?localAnchorA:Array<Dynamic>, ?localAnchorB:Array<Dynamic>, ?maxForce:Dynamic);
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * Local reference to P2 World.
	 */
	var world:phaser.physics.p2.World;
	
}
