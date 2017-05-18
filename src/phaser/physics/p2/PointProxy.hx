package phaser.physics.p2;

/**
* A PointProxy is an internal class that allows for direct getter/setter style property access to Arrays and TypedArrays.
*/
@:native("Phaser.Physics.P2.PointProxy")
extern class PointProxy {

	/**
	* A PointProxy is an internal class that allows for direct getter/setter style property access to Arrays and TypedArrays.
	* 
	* @param world A reference to the P2 World.
	* @param destination The object to bind to.
	*/
	function new(world:phaser.physics.P2, destination:Dynamic);
	
	/**
	* The x property of this PointProxy get and set in pixels.
	*/
	var x:Float;
	
	/**
	* The y property of this PointProxy get and set in pixels.
	*/
	var y:Float;
	
	/**
	* The x property of this PointProxy get and set in meters.
	*/
	var mx:Float;
	
	/**
	* The x property of this PointProxy get and set in meters.
	*/
	var my:Float;
	
}

