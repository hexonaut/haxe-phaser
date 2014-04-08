package phaser.physics.p2;

@:native("Phaser.Physics.P2.Spring")
extern class Spring {
	function new (world:phaser.physics.p2.World, bodyA:Dynamic, bodyB:Dynamic, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?worldA:Array<Dynamic>, ?worldB:Array<Dynamic>, ?localA:Array<Dynamic>, ?localB:Array<Dynamic>);
	var game:phaser.core.Game;
	var world:phaser.physics.p2.World;
}
