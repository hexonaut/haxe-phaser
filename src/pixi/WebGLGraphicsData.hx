package pixi;

import js.html.webgl.RenderingContext as WebGLRenderingContext;
import js.html.webgl.Buffer as WebGLBuffer;

@:native("PIXI.WebGLGraphicsData")
extern class WebGLGraphicsData {

	function new(gl:WebGLRenderingContext);
	
	var gl:WebGLRenderingContext;
	
	var glPoints:Array<Dynamic>;
	
	var color:Array<Float>;
	
	var points:Array<Dynamic>;
	
	var indices:Array<Dynamic>;
	
	var buffer:WebGLBuffer;
	
	var indexBuffer:WebGLBuffer;
	
	var mode:Float;
	
	var alpha:Float;
	
	var dirty:Bool;
	
	function reset():Void;
	
	function upload():Void;
	
}

