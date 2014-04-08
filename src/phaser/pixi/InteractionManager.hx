package phaser.pixi;

@:native("PIXI.InteractionManager")
extern class InteractionManager {
	function new (Stage:Dynamic);
	var stage:Dynamic;
	var mouse:Dynamic;
	var touchs:Dynamic;
	var mouseoverEnabled:Dynamic;
	var pool:Array<Dynamic>;
	var interactiveItems:Array<Dynamic>;
	var interactionDOMElement:Dynamic;
	var currentCursorStyle:String;
	var mouseOut:Dynamic;
}
