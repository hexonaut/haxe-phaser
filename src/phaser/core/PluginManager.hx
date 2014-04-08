package phaser.core;

@:native("Phaser.PluginManager")
extern class PluginManager {
	function new (game:phaser.core.Game, parent:Dynamic);
	var game:phaser.core.Game;
	var _parent:Dynamic;
	var plugins:Dynamic;
	var _pluginsLength:Dynamic;
	function add (plugin:phaser.core.Plugin):phaser.core.Plugin;
	function remove (plugin:phaser.core.Plugin):Void;
	function removeAll ():Void;
	function preUpdate ():Void;
	function update ():Void;
	function postUpdate ():Void;
	function render ():Void;
	function postRender ():Void;
	function destroy ():Void;
}
