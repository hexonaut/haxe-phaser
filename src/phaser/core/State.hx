package phaser.core;

@:native("Phaser.State")
extern class State {
	function new ();
	var game:phaser.core.Game;
	var add:phaser.gameobjects.GameObjectFactory;
	var make:phaser.gameobjects.GameObjectCreator;
	var camera:phaser.core.Camera;
	var cache:phaser.loader.Cache;
	var input:phaser.input.Input;
	var load:phaser.loader.Loader;
	var math:phaser.math.Math;
	var sound:phaser.sound.SoundManager;
	var scale:phaser.core.ScaleManager;
	var stage:phaser.core.Stage;
	var time:Dynamic;
	var tweens:phaser.tween.TweenManager;
	var world:phaser.core.World;
	var particles:phaser.particles.Particles;
	var physics:Dynamic;
	var rnd:phaser.math.RandomDataGenerator;
	function preload ():Void;
	function loadUpdate ():Void;
	function loadRender ():Void;
	function create ():Void;
	function update ():Void;
	function render ():Void;
	function paused ():Void;
	function shutdown ():Void;
}
