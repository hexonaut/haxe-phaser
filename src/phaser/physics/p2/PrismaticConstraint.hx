package phaser.physics.p2;

@:native("Phaser.Physics.P2.PrismaticConstraint")
extern class PrismaticConstraint {
	function new (world:phaser.physics.p2.World, bodyA:Dynamic, bodyB:Dynamic, ?lockRotation:Bool = true, ?anchorA:Array<Dynamic>, ?anchorB:Array<Dynamic>, ?axis:Array<Dynamic>, ?maxForce:Float);
	var game:phaser.core.Game;
	var world:phaser.physics.p2.World;
}
