package phaser.physics.p2;

/**
* Connects two bodies at given offset points, letting them rotate relative to each other around this point.
*/
@:native("Phaser.Physics.P2.GearConstraint")
extern class GearConstraint {

	/**
	* Connects two bodies at given offset points, letting them rotate relative to each other around this point.
	* 
	* @param world A reference to the P2 World.
	* @param bodyA First connected body.
	* @param bodyB Second connected body.
	* @param angle The relative angle
	* @param ratio The gear ratio. - Default: 1
	*/
	function new(world:phaser.physics.P2, bodyA:phaser.physics.p2.Body, bodyB:phaser.physics.p2.Body, ?angle:Float, ?ratio:Float);
	
	/**
	* Local reference to game.
	*/
	var game:phaser.Game;
	
	/**
	* Local reference to P2 World.
	*/
	var world:phaser.physics.P2;
	
}

