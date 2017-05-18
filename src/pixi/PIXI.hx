package pixi;

import js.html.webgl.RenderingContext as WebGLRenderingContext;

@:native("PIXI")
extern class PIXI {

	var game:phaser.Game;
	
	var WEBGL_RENDERER:Float;
	
	var CANVAS_RENDERER:Float;
	
	var VERSION:String;
	
	var defaultRenderOptions:PixiRendererOptions;
	
	var INTERACTION_REQUENCY:Float;
	
	var AUTO_PREVENT_DEFAULT:Bool;
	
	var PI_2:Float;
	
	var RAD_TO_DEG:Float;
	
	var DEG_TO_RAD:Float;
	
	var RETINA_PREFIX:String;
	
	var identityMatrix:Matrix;
	
	var glContexts:Array<WebGLRenderingContext>;
	
	var instances:Array<Dynamic>;
	
	var TextureSilentFail:Bool;
	
	var BitmapText:{fonts:{}};
	
}

