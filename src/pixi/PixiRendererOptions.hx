package pixi;

import js.html.CanvasElement as HTMLCanvasElement;

@:native("PIXI.PixiRendererOptions")
extern interface PixiRendererOptions {

	@:optional
	var autoResize:Bool;
	
	@:optional
	var antialias:Bool;
	
	@:optional
	var clearBeforeRender:Bool;
	
	@:optional
	var preserveDrawingBuffer:Bool;
	
	@:optional
	var resolution:Float;
	
	@:optional
	var transparent:Bool;
	
	@:optional
	var view:HTMLCanvasElement;
	
}

