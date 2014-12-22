package phaser.physics.p2;

@:native("Phaser.Physics.P2.CollisionGroup")
extern class CollisionGroup {
	
	/**
	 * Collision Group
	 */
	function new (bitmask:Float);
	
	/**
	 * The CollisionGroup bitmask.
	 */
	var mask:Float;
	
}
