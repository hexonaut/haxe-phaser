package phaser.physics.p2;

@:native("Phaser.Physics.P2.RotationalSpring")
extern class RotationalSpring {
	
	/**
	 * Creates a rotational spring, connecting two bodies. A spring can have a resting length, a stiffness and damping.
	 */
	function new (world:phaser.physics.p2.World, bodyA:Dynamic, bodyB:Dynamic, ?restAngle:Float, ?stiffness:Float = 100, ?damping:Float = 1);
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * Local reference to P2 World.
	 */
	var world:phaser.physics.p2.World;
	
	/**
	 * The actual p2 spring object.
	 */
	var data:Dynamic;
	
}
