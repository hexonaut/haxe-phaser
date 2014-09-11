package phaser.physics.p2;

@:native("Phaser.Physics.P2.InversePointProxy")
extern class InversePointProxy {
	
	/**
	 * A InversePointProxy is an internal class that allows for direct getter/setter style property access to Arrays and TypedArrays but inverses the values on set.
	 */
	function new (world:phaser.physics.p2.World, destination:Dynamic);
	
	/**
	 * @name Phaser.Physics.P2.InversePointProxy#x
	 */
	var x:Float;
	
	/**
	 * @name Phaser.Physics.P2.InversePointProxy#y
	 */
	var y:Float;
	
	/**
	 * @name Phaser.Physics.P2.InversePointProxy#mx
	 */
	var mx:Float;
	
	/**
	 * @name Phaser.Physics.P2.InversePointProxy#my
	 */
	var my:Float;
	
}
