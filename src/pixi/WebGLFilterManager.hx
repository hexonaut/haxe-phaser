package pixi;

import js.html.ArrayBuffer;
import js.html.webgl.RenderingContext as WebGLRenderingContext;

@:native("PIXI.WebGLFilterManager")
extern class WebGLFilterManager {

	var filterStack:Array<AbstractFilter>;
	
	var transparent:Bool;
	
	var offsetX:Float;
	
	var offsetY:Float;
	
	/**
	* Applies the filter to the specified area.
	* 
	* @param filter the filter that needs to be applied
	* @param filterArea TODO - might need an update
	* @param width the horizontal range of the filter
	* @param height the vertical range of the filter
	*/
	function applyFilterPass(filter:AbstractFilter, filterArea:Texture, width:Float, height:Float):Void;
	
	/**
	* undefined
	* 
	* @param renderSession -
	* @param buffer -
	*/
	function begin(renderSession:RenderSession, buffer:ArrayBuffer):Void;
	
	/**
	* Destroys the filter and removes it from the filter stack.
	*/
	function destroy():Void;
	
	/**
	* Initialises the shader buffers.
	*/
	function initShaderBuffers():Void;
	
	/**
	* Removes the last filter from the filter stack and doesn't return it.
	*/
	function popFilter():Void;
	
	/**
	* Applies the filter and adds it to the current filter stack.
	* 
	* @param filterBlock the filter that will be pushed to the current filter stack
	*/
	function pushFilter(filterBlock:FilterBlock):Void;
	
	/**
	* Initialises the context and the properties.
	* 
	* @param gl the current WebGL drawing context
	*/
	function setContext(gl:WebGLRenderingContext):Void;
	
}

