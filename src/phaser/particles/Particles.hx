package phaser.particles;

@:native("Phaser.Particles")
extern class Particles {
	function new (game:phaser.core.Game);
	var game:phaser.core.Game;
	var emitters:Dynamic;
	var ID:Float;
	function add (emitter:Dynamic):Dynamic;
	function remove (emitter:Dynamic):Void;
	function update ():Void;
}
