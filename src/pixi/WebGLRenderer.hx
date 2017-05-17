package pixi;

import js.html.CanvasElement as HTMLCanvasElement;
import js.html.webgl.RenderingContext as WebGLRenderingContext;
import js.html.webgl.Buffer as WebGLBuffer;

/**
* The WebGLRenderer draws the stage and all its content onto a webGL enabled canvas. This renderer
* should be used for browsers that support webGL. This Render works by automatically managing webGLBatchs.
* So no need for Sprite Batches or Sprite Clouds.
* Don't forget to add the view to your DOM or you will not see anything :)
*/
@:native("PIXI.WebGLRenderer")
extern class WebGLRenderer implements PixiRenderer {

	static function createWebGLTexture(texture:Texture, gl:WebGLRenderingContext):Void;
	
	/**
	* The WebGLRenderer draws the stage and all its content onto a webGL enabled canvas. This renderer
	* should be used for browsers that support webGL. This Render works by automatically managing webGLBatchs.
	* So no need for Sprite Batches or Sprite Clouds.
	* Don't forget to add the view to your DOM or you will not see anything :)
	* 
	* @param game A reference to the Phaser Game instance
	*/
	function new(game:phaser.Game);
	
	var game:phaser.Game;
	
	var type:Float;
	
	/**
	* The resolution of the renderer
	* Default: 1
	*/
	var resolution:Float;
	
	/**
	* Whether the render view is transparent
	*/
	var transparent:Bool;
	
	/**
	* Whether the render view should be resized automatically
	*/
	var autoResize:Bool;
	
	/**
	* The value of the preserveDrawingBuffer flag affects whether or not the contents of the stencil buffer is retained after rendering.
	*/
	var preserveDrawingBuffer:Bool;
	
	/**
	* This sets if the WebGLRenderer will clear the context texture or not before the new render pass. If true:
	* If the Stage is NOT transparent, Pixi will clear to alpha (0, 0, 0, 0).
	* If the Stage is transparent, Pixi will clear to the target Stage's background color.
	* Disable this by setting this to false. For example: if your game has a canvas filling background image, you often don't need this set.
	*/
	var clearBeforeRender:Bool;
	
	/**
	* The width of the canvas view
	*/
	var width:Float;
	
	/**
	* The height of the canvas view
	*/
	var height:Float;
	
	var currentBatchedTextures:Array<String>;
	
	/**
	* The canvas element that everything is drawn to
	*/
	var view:HTMLCanvasElement;
	
	var projection:Point;
	
	var offset:Point;
	
	/**
	* Deals with managing the shader programs and their attribs
	*/
	var shaderManager:WebGLShaderManager;
	
	/**
	* Manages the rendering of sprites
	*/
	var spriteBatch:WebGLSpriteBatch;
	
	/**
	* Manages the masks using the stencil buffer
	*/
	var maskManager:WebGLMaskManager;
	
	/**
	* Manages the filters
	*/
	var filterManager:WebGLFilterManager;
	
	/**
	* Manages the stencil buffer
	*/
	var stencilManager:WebGLStencilManager;
	
	/**
	* Manages the blendModes
	*/
	var blendModeManager:WebGLBlendModeManager;
	
	var renderSession:RenderSession;
	
	function initContext():Void;
	
	/**
	* Renders the stage to its webGL view
	* 
	* @param stage the Stage element to be rendered
	*/
	function render(stage:DisplayObjectContainer):Void;
	
	/**
	* Renders a Display Object.
	* 
	* @param displayObject The DisplayObject to render
	* @param projection The projection
	* @param buffer a standard WebGL buffer
	*/
	function renderDisplayObject(displayObject:DisplayObject, projection:Point, buffer:WebGLBuffer):Void;
	
	/**
	* Resizes the webGL view to the specified width and height.
	* 
	* @param width the new width of the webGL view
	* @param height the new height of the webGL view
	*/
	function resize(width:Float, height:Float):Void;
	
	/**
	* Updates and Creates a WebGL texture for the renderers context.
	* 
	* @param texture the texture to update
	* @return True if the texture was successfully bound, otherwise false.
	*/
	function updateTexture(texture:Texture):Void;
	
	/**
	* Removes everything from the renderer (event listeners, spritebatch, etc...)
	*/
	function destroy():Void;
	
	/**
	* Maps Pixi blend modes to WebGL blend modes.
	*/
	function mapBlendModes():Void;
	
	/**
	* If Multi Texture support has been enabled, then calling this method will enable batching on the given
	* textures. The texture collection is an array of keys, that map to Phaser.Cache image entries.
	* 
	* The number of textures that can be batched is dependent on hardware. If you provide more textures
	* than can be batched by the GPU, then only those at the start of the array will be used. Generally
	* you shouldn't provide more than 16 textures to this method. You can check the hardware limit via the
	* `maxTextures` property.
	* 
	* You can also check the property `currentBatchedTextures` at any time, to see which textures are currently
	* being batched.
	* 
	* To stop all textures from being batched, call this method again with an empty array.
	* 
	* To change the textures being batched, call this method with a new array of image keys. The old ones
	* will all be purged out and no-longer batched, and the new ones enabled.
	* 
	* Note: Throws a warning if you haven't enabled Multiple Texture batching support in the Phaser Game config.
	* 
	* @param textureNameCollection An Array of Texture Cache keys to use for multi-texture batching.
	* @return An array containing the texture keys that were enabled for batching.
	*/
	function setTexturePriority(textureNameCollection:Array<String>):Array<String>;
	
}

