package phaser.physics.p2;

@:native("Phaser.Physics.P2.PointProxy")
extern class PointProxy {
	function new (world:phaser.physics.p2.World, destination:Dynamic);
	var x:Float;
	var y:Float;
}
