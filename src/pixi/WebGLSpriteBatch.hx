package pixi;

import js.html.webgl.RenderingContext as WebGLRenderingContext;

@:native("PIXI.WebGLSpriteBatch")
extern class WebGLSpriteBatch {

	var blendModes:Array<Float>;
	
	/**
	* View on the vertices as a Uint32Array
	*/
	var colors:Array<Float>;
	
	var currentBatchSize:Float;
	
	var currentBaseTexture:Texture;
	
	var defaultShader:AbstractFilter;
	
	var dirty:Bool;
	
	var drawing:Bool;
	
	/**
	* Holds the indices
	*/
	var indices:Array<Float>;
	
	var lastIndexCount:Float;
	
	/**
	* View on the vertices as a Float32Array
	*/
	var positions:Array<Float>;
	
	var textures:Array<Texture>;
	
	var shaders:Array<IPixiShader>;
	
	/**
	* The number of images in the SpriteBatch before it flushes
	*/
	var size:Float;
	
	var sprites:Array<Dynamic>;
	
	/**
	* Holds the vertices
	*/
	var vertices:Array<Float>;
	
	var vertSize:Float;
	
	/**
	* undefined
	* 
	* @param renderSession The RenderSession object
	*/
	function begin(renderSession:RenderSession):Void;
	
	/**
	* Destroys the SpriteBatch.
	*/
	function destroy():Void;
	
	function end():Void;
	
	/**
	* Renders the content and empties the current batch.
	*/
	function flush(?shader:IPixiShader):Void;
	
	/**
	* undefined
	* 
	* @param sprite the sprite to render when using this spritebatch
	* @param matrix - Optional matrix. If provided the Display Object will be rendered using this matrix, otherwise it will use its worldTransform.
	*/
	function render(sprite:Sprite):Void;
	
	/**
	* undefined
	* 
	* @param texture -
	* @param size -
	* @param startIndex -
	*/
	function renderBatch(texture:Texture, size:Float, startIndex:Float):Void;
	
	/**
	* Renders a TilingSprite using the spriteBatch.
	* 
	* @param sprite the sprite to render
	*/
	function renderTilingSprite(sprite:TilingSprite):Void;
	
	function setBlendMode(blendMode:BlendModes):Void;
	
	/**
	* undefined
	* 
	* @param gl the current WebGL drawing context
	*/
	function setContext(gl:WebGLRenderingContext):Void;
	
	function start():Void;
	
	function stop():Void;
	
}

