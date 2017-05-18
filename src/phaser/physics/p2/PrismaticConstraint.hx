package phaser.physics.p2;

/**
* Connects two bodies at given offset points, letting them rotate relative to each other around this point.
*/
@:native("Phaser.Physics.P2.PrismaticConstraint")
extern class PrismaticConstraint {

	/**
	* Connects two bodies at given offset points, letting them rotate relative to each other around this point.
	* 
	* @param world A reference to the P2 World.
	* @param bodyA First connected body.
	* @param bodyB Second connected body.
	* @param lockRotation If set to false, bodyB will be free to rotate around its anchor point. - Default: true
	* @param anchorA Body A's anchor point, defined in its own local frame. The value is an array with 2 elements matching x and y, i.e: [32, 32].
	* @param anchorB Body A's anchor point, defined in its own local frame. The value is an array with 2 elements matching x and y, i.e: [32, 32].
	* @param axis An axis, defined in body A frame, that body B's anchor point may slide along. The value is an array with 2 elements matching x and y, i.e: [32, 32].
	* @param maxForce The maximum force that should be applied to constrain the bodies.
	*/
	function new(world:phaser.physics.P2, ?bodyA:phaser.physics.p2.Body, ?bodyB:phaser.physics.p2.Body, ?lockRotation:Bool, ?anchorA:Array<Float>, ?anchorB:Array<Float>, ?axis:Array<Float>, ?maxForce:Float);
	
	/**
	* Local reference to game.
	*/
	var game:phaser.Game;
	
	/**
	* Local reference to P2 World.
	*/
	var world:phaser.physics.P2;
	
}

