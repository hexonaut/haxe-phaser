package phaser.physics.p2;

/**
* A constraint that tries to keep the distance between two bodies constant.
*/
@:native("Phaser.Physics.P2.DistanceConstraint")
extern class DistanceConstraint {

	/**
	* A constraint that tries to keep the distance between two bodies constant.
	* 
	* @param world A reference to the P2 World.
	* @param bodyA First connected body.
	* @param bodyB Second connected body.
	* @param distance The distance to keep between the bodies.
	* @param localAnchorA The anchor point for bodyA, defined locally in bodyA frame. Defaults to [0,0].
	* @param localAnchorB The anchor point for bodyB, defined locally in bodyB frame. Defaults to [0,0].
	* @param maxForce Maximum force to apply. - Default: Number.MAX_VALUE
	*/
	function new(world:phaser.physics.P2, bodyA:phaser.physics.p2.Body, bodyB:phaser.physics.p2.Body, distance:Float, maxForce:Float);
	
	/**
	* Local reference to game.
	*/
	var game:phaser.Game;
	
	/**
	* Local reference to P2 World.
	*/
	var world:phaser.physics.P2;
	
}

