package phaser.physics.p2;

@:native("Phaser.Physics.P2.PrismaticConstraint")
extern class PrismaticConstraint {
	
	/**
	 * Connects two bodies at given offset points, letting them rotate relative to each other around this point.
	 */
	function new (world:phaser.physics.p2.World, bodyA:Dynamic, bodyB:Dynamic, ?lockRotation:Bool = true, ?anchorA:Array<Dynamic>, ?anchorB:Array<Dynamic>, ?axis:Array<Dynamic>, ?maxForce:Float);
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * Local reference to P2 World.
	 */
	var world:phaser.physics.p2.World;
	
}
