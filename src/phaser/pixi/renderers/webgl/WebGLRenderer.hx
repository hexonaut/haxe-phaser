package phaser.pixi.renderers.webgl;

@:native("PIXI.WebGLRenderer")
extern class WebGLRenderer {
	var glContexts:Dynamic;
	function new (Number:Dynamic, Number:Dynamic, HTMLCanvasElement:Dynamic, Boolean:Dynamic, Boolean:Dynamic);
	var transparent:Dynamic;
	var width:Dynamic;
	var height:Dynamic;
	var view:Dynamic;
	var contextLost:Dynamic;
}
