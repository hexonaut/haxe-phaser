package phaser.physics.p2;

@:native("Phaser.Physics.P2.Spring")
extern class Spring {
	
	/**
	 * Creates a linear spring, connecting two bodies. A spring can have a resting length, a stiffness and damping.
	 */
	function new (world:phaser.physics.p2.World, bodyA:Dynamic, bodyB:Dynamic, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?worldA:Array<Dynamic>, ?worldB:Array<Dynamic>, ?localA:Array<Dynamic>, ?localB:Array<Dynamic>);
	
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
