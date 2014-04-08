package phaser.core;

@:native("Phaser.Plugin")
extern class Plugin {
	function new (game:phaser.core.Game, parent:Dynamic);
	var game:phaser.core.Game;
	var parent:Dynamic;
	var active:Bool;
	var visible:Bool;
	var hasPreUpdate:Bool;
	var hasUpdate:Bool;
	var hasPostUpdate:Bool;
	var hasRender:Bool;
	var hasPostRender:Bool;
	function preUpdate ():Void;
	function update ():Void;
	function render ():Void;
	function postRender ():Void;
	function destroy ():Void;
}
