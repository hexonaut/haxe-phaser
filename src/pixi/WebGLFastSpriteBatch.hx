package pixi;

import js.html.CanvasRenderingContext2D;
import js.html.webgl.RenderingContext as WebGLRenderingContext;

@:native("PIXI.WebGLFastSpriteBatch")
extern class WebGLFastSpriteBatch {

	function new(gl:CanvasRenderingContext2D);
	
	var currentBatchSize:Float;
	
	var currentBaseTexture:BaseTexture;
	
	var currentBlendMode:Float;
	
	var renderSession:RenderSession;
	
	var drawing:Bool;
	
	var indexBuffer:Dynamic;
	
	/**
	* Index data
	*/
	var indices:Array<Float>;
	
	var lastIndexCount:Float;
	
	var matrix:Matrix;
	
	var maxSize:Float;
	
	var shader:IPixiShader;
	
	var size:Float;
	
	var vertexBuffer:Dynamic;
	
	/**
	* Vertex data
	*/
	var vertices:Array<Float>;
	
	var vertSize:Float;
	
	function end():Void;
	
	/**
	* undefined
	* 
	* @param spriteBatch -
	* @param renderSession -
	*/
	function begin(spriteBatch:SpriteBatch, renderSession:RenderSession):Void;
	
	function destroy(?removeView:Bool):Void;
	
	function flush():Void;
	
	/**
	* undefined
	* 
	* @param spriteBatch -
	*/
	function render(spriteBatch:SpriteBatch):Void;
	
	/**
	* undefined
	* 
	* @param sprite -
	*/
	function renderSprite(sprite:Sprite):Void;
	
	/**
	* Sets the WebGL Context.
	* 
	* @param gl the current WebGL drawing context
	*/
	function setContext(gl:WebGLRenderingContext):Void;
	
	function start():Void;
	
	function stop():Void;
	
}

