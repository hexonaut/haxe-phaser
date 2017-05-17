package phaser.physics.p2;

/**
* Locks the relative position between two bodies.
*/
@:native("Phaser.Physics.P2.LockConstraint")
extern class LockConstraint {

	/**
	* Locks the relative position between two bodies.
	* 
	* @param world A reference to the P2 World.
	* @param bodyA First connected body.
	* @param bodyB Second connected body.
	* @param offset The offset of bodyB in bodyA's frame. The value is an array with 2 elements matching x and y, i.e: [32, 32].
	* @param angle The angle of bodyB in bodyA's frame.
	* @param maxForce The maximum force that should be applied to constrain the bodies.
	*/
	function new(world:phaser.physics.P2, bodyA:phaser.physics.p2.Body, bodyB:phaser.physics.p2.Body, ?offset:Array<Float>, ?angle:Float, ?maxForce:Float);
	
	/**
	* Local reference to game.
	*/
	var game:phaser.Game;
	
	/**
	* Local reference to P2 World.
	*/
	var world:phaser.physics.P2;
	
}

