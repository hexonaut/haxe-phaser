package phaser.physics.p2;

/**
* A InversePointProxy is an internal class that allows for direct getter/setter style property access to Arrays and TypedArrays but inverses the values on set.
*/
@:native("Phaser.Physics.P2.InversePointProxy")
extern class InversePointProxy {

	/**
	* A InversePointProxy is an internal class that allows for direct getter/setter style property access to Arrays and TypedArrays but inverses the values on set.
	* 
	* @param world A reference to the P2 World.
	* @param destination The object to bind to.
	*/
	function new(world:phaser.physics.P2, destination:Dynamic);
	
	/**
	* The x property of this InversePointProxy get and set in pixels.
	*/
	var x:Float;
	
	/**
	* The y property of this InversePointProxy get and set in pixels.
	*/
	var y:Float;
	
	/**
	* The x property of this InversePointProxy get and set in meters.
	*/
	var mx:Float;
	
	/**
	* The y property of this InversePointProxy get and set in meters.
	*/
	var my:Float;
	
}

