package phaser.physics.p2;

@:native("Phaser.Physics.P2.PointProxy")
extern class PointProxy {
	
	/**
	 * A PointProxy is an internal class that allows for direct getter/setter style property access to Arrays and TypedArrays.
	 */
	function new (world:phaser.physics.p2.World, destination:Dynamic);
	
	/**
	 * @name Phaser.Physics.P2.PointProxy#x
	 */
	var x:Float;
	
	/**
	 * @name Phaser.Physics.P2.PointProxy#y
	 */
	var y:Float;
	
	/**
	 * @name Phaser.Physics.P2.PointProxy#mx
	 */
	var mx:Float;
	
	/**
	 * @name Phaser.Physics.P2.PointProxy#my
	 */
	var my:Float;
	
}
