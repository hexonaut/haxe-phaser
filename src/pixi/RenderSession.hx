package pixi;

import js.html.CanvasRenderingContext2D;

@:native("PIXI.RenderSession")
extern interface RenderSession {

	var context:CanvasRenderingContext2D;
	
	var maskManager:CanvasMaskManager;
	
	var scaleMode:ScaleModes;
	
	var smoothProperty:String;
	
	var roundPixels:Bool;
	
}

