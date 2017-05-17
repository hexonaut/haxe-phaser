package pixi;

import haxe.extern.EitherType;
import js.html.webgl.Framebuffer as WebGLFramebuffer;

@:native("PIXI.AbstractFilter")
extern class AbstractFilter {

	function new(fragmentSrc:EitherType<String, Array<String>>, uniforms:Dynamic);
	
	var dirty:Bool;
	
	var padding:Float;
	
	var uniforms:Dynamic;
	
	var fragmentSrc:EitherType<String, Array<String>>;
	
	function apply(frameBuffer:WebGLFramebuffer):Void;
	
	function syncUniforms():Void;
	
}

