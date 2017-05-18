package phaser.physics.p2;

/**
* Connects two bodies at given offset points, letting them rotate relative to each other around this point.
* The pivot points are given in world (pixel) coordinates.
*/
@:native("Phaser.Physics.P2.RevoluteConstraint")
extern class RevoluteConstraint {

	/**
	* Connects two bodies at given offset points, letting them rotate relative to each other around this point.
	* The pivot points are given in world (pixel) coordinates.
	* 
	* @param world A reference to the P2 World.
	* @param bodyA First connected body.
	* @param pivotA The point relative to the center of mass of bodyA which bodyA is constrained to. The value is an array with 2 elements matching x and y, i.e: [32, 32].
	* @param bodyB Second connected body.
	* @param pivotB The point relative to the center of mass of bodyB which bodyB is constrained to. The value is an array with 2 elements matching x and y, i.e: [32, 32].
	* @param maxForce The maximum force that should be applied to constrain the bodies.
	* @param worldPivot A pivot point given in world coordinates. If specified, localPivotA and localPivotB are automatically computed from this value.
	*/
	function new(world:phaser.physics.P2, bodyA:phaser.physics.p2.Body, pivotA:Array<Float>, bodyB:phaser.physics.p2.Body, pivotB:Array<Float>, ?maxForce:Float);
	
	/**
	* Local reference to game.
	*/
	var game:phaser.Game;
	
	/**
	* Local reference to P2 World.
	*/
	var world:phaser.physics.P2;
	
}

