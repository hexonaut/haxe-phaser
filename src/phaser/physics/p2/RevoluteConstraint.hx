package phaser.physics.p2;

@:native("Phaser.Physics.P2.RevoluteConstraint")
extern class RevoluteConstraint {
	function new (world:phaser.physics.p2.World, bodyA:Dynamic, pivotA:Dynamic, bodyB:Dynamic, pivotB:Dynamic, ?maxForce:Float = 0);
	var game:phaser.core.Game;
	var world:phaser.physics.p2.World;
}
