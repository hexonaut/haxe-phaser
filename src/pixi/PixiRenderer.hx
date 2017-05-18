package pixi;

import js.html.CanvasElement as HTMLCanvasElement;

@:native("PIXI.PixiRenderer")
extern interface PixiRenderer {

	var autoResize:Bool;
	
	var clearBeforeRender:Bool;
	
	var height:Float;
	
	var resolution:Float;
	
	var transparent:Bool;
	
	var type:Float;
	
	var view:HTMLCanvasElement;
	
	var width:Float;
	
	function destroy():Void;
	
	function render(stage:DisplayObjectContainer):Void;
	
	function resize(width:Float, height:Float):Void;
	
}

