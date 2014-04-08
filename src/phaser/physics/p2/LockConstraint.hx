package phaser.physics.p2;

@:native("Phaser.Physics.P2.LockConstraint")
extern class LockConstraint {
	function new (world:phaser.physics.p2.World, bodyA:Dynamic, bodyB:Dynamic, ?offset:Array<Dynamic>, ?angle:Float = 0, ?maxForce:Float);
	var game:phaser.core.Game;
	var world:phaser.physics.p2.World;
}
