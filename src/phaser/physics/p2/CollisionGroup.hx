package phaser.physics.p2;

/**
* Collision Group
*/
@:native("Phaser.Physics.P2.CollisionGroup")
extern class CollisionGroup {

	/**
	* Collision Group
	* 
	* @param bitmask The CollisionGroup bitmask.
	*/
	function new(bitmask:Float);
	
	/**
	* The CollisionGroup bitmask.
	*/
	var mask:Float;
	
}

