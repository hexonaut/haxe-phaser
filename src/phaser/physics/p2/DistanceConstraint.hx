package phaser.physics.p2;

@:native("Phaser.Physics.P2.DistanceConstraint")
extern class DistanceConstraint {
	function new (world:phaser.physics.p2.World, bodyA:Dynamic, bodyB:Dynamic, distance:Float, ?maxForce:Float);
	var game:phaser.core.Game;
	var world:phaser.physics.p2.World;
}
