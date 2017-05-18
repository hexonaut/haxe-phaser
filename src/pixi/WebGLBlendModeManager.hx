package pixi;

import js.html.webgl.RenderingContext as WebGLRenderingContext;

@:native("PIXI.WebGLBlendModeManager")
extern class WebGLBlendModeManager {

	var currentBlendMode:Float;
	
	/**
	* Destroys this object.
	*/
	function destroy():Void;
	
	/**
	* Sets-up the given blendMode from WebGL's point of view.
	* 
	* @param blendMode the blendMode, should be a Pixi const, such as PIXI.BlendModes.ADD
	*/
	function setBlendMode(blendMode:Float):Bool;
	
	/**
	* Sets the WebGL Context.
	* 
	* @param gl the current WebGL drawing context
	*/
	function setContext(gl:WebGLRenderingContext):Void;
	
}

