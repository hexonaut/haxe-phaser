package pixi;

import js.html.webgl.RenderingContext as WebGLRenderingContext;

@:native("PIXI.WebGLShaderManager")
extern class WebGLShaderManager {

	var maxAttibs:Float;
	
	var attribState:Array<Dynamic>;
	
	var stack:Array<Dynamic>;
	
	var tempAttribState:Array<Dynamic>;
	
	/**
	* Destroys this object.
	*/
	function destroy():Void;
	
	/**
	* Takes the attributes given in parameters.
	* 
	* @param attribs attribs
	*/
	function setAttribs(attribs:Array<ShaderAttribute>):Void;
	
	/**
	* Initialises the context and the properties.
	* 
	* @param gl the current WebGL drawing context
	*/
	function setContext(gl:WebGLRenderingContext):Void;
	
	/**
	* Sets the current shader.
	* 
	* @param shader -
	*/
	function setShader(shader:IPixiShader):Bool;
	
}

