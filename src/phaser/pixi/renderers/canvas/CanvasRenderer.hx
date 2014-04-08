package phaser.pixi.renderers.canvas;

@:native("PIXI.CanvasRenderer")
extern class CanvasRenderer {
	function new (Number:Dynamic, Number:Dynamic, HTMLCanvasElement:Dynamic, Boolean:Dynamic);
	var clearBeforeRender:Dynamic;
	var roundPixels:Dynamic;
	var transparent:Dynamic;
	var width:Dynamic;
	var height:Dynamic;
	var view:Dynamic;
	var context:Dynamic;
	var CanvasMaskManager:Dynamic;
	var renderSession:Dynamic;
}
