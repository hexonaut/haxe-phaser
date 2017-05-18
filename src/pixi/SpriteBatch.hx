package pixi;

import js.html.webgl.RenderingContext as WebGLRenderingContext;

@:native("PIXI.SpriteBatch")
extern class SpriteBatch extends DisplayObjectContainer {

	function new(?texture:Texture);
	
	var ready:Bool;
	
	var textureThing:Texture;
	
	function initWebGL(gl:WebGLRenderingContext):Void;
	
}

