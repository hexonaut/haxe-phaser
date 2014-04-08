package phaser.physics.p2;

@:native("Phaser.Physics.P2.GearConstraint")
extern class GearConstraint {
	function new (world:phaser.physics.p2.World, bodyA:Dynamic, bodyB:Dynamic, ?angle:Float = 0, ?ratio:Float = 1);
	var game:phaser.core.Game;
	var world:phaser.physics.p2.World;
}
