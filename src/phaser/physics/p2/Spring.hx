package phaser.physics.p2;

/**
* Creates a linear spring, connecting two bodies. A spring can have a resting length, a stiffness and damping.
*/
@:native("Phaser.Physics.P2.Spring")
extern class Spring {

	/**
	* Creates a linear spring, connecting two bodies. A spring can have a resting length, a stiffness and damping.
	* 
	* @param world A reference to the P2 World.
	* @param bodyA First connected body.
	* @param bodyB Second connected body.
	* @param restLength Rest length of the spring. A number > 0. - Default: 1
	* @param stiffness Stiffness of the spring. A number >= 0. - Default: 100
	* @param damping Damping of the spring. A number >= 0. - Default: 1
	* @param worldA Where to hook the spring to body A in world coordinates. This value is an array with 2 elements matching x and y, i.e: [32, 32].
	* @param worldB Where to hook the spring to body B in world coordinates. This value is an array with 2 elements matching x and y, i.e: [32, 32].
	* @param localA Where to hook the spring to body A in local body coordinates. This value is an array with 2 elements matching x and y, i.e: [32, 32].
	* @param localB Where to hook the spring to body B in local body coordinates. This value is an array with 2 elements matching x and y, i.e: [32, 32].
	*/
	function new(world:phaser.physics.P2, bodyA:phaser.physics.p2.Body, bodyB:phaser.physics.p2.Body, ?restLength:Float, ?stiffness:Float, ?damping:Float, ?worldA:Array<Float>, ?worldB:Array<Float>, ?localA:Array<Float>, ?localB:Array<Float>);
	
	/**
	* The actual p2 spring object.
	*/
	var data:Dynamic;
	
	/**
	* Local reference to game.
	*/
	var game:phaser.Game;
	
	/**
	* Local reference to P2 World.
	*/
	var world:phaser.physics.P2;
	
}

