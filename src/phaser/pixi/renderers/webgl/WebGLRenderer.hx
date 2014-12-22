package phaser.pixi.renderers.webgl;

@:native("PIXI.WebGLRenderer")
extern class WebGLRenderer {
	
	/**
	 * @author Mat Groves <a href='http://matgroves.com/'>http://matgroves.com/</a> @Doormat23
	 */
	var glContexts:Dynamic;
	
	/**
	 * The WebGLRenderer draws the stage and all its content onto a webGL enabled canvas. This renderer
	 * should be used for browsers that support webGL. This Render works by automatically managing webGLBatchs.
	 * So no need for Sprite Batches or Sprite Clouds.
	 * Don't forget to add the view to your DOM or you will not see anything :)
	 */
	function new (Number:Dynamic, Number:Dynamic, Object:Dynamic, HTMLCanvasElement:Dynamic, Boolean:Dynamic, Boolean:Dynamic, Boolean:Dynamic, Boolean:Dynamic, Number:Dynamic);
	
	/**
	 * @property type
	 */
	var type:Dynamic;
	
	/**
	 * The resolution of the renderer
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
	
	/**
	 * The canvas element that everything is drawn to
	 */
	var view:Dynamic;
	
	/**
	 * @property contextLostBound
	 */
	var contextLostBound:Dynamic;
	
	/**
	 * @property contextRestoredBound
	 */
	var contextRestoredBound:Dynamic;
	
	/**
	 * @property _contextOptions
	 */
	var _contextOptions:Dynamic;
	
	/**
	 * @property projection
	 */
	var projection:Dynamic;
	
	/**
	 * @property offset
	 */
	var offset:Dynamic;
	
	/**
	 * Deals with managing the shader programs and their attribs
	 */
	var shaderManager:Dynamic;
	
	/**
	 * Manages the rendering of sprites
	 */
	var spriteBatch:Dynamic;
	
	/**
	 * Manages the masks using the stencil buffer
	 */
	var maskManager:Dynamic;
	
	/**
	 * Manages the filters
	 */
	var filterManager:Dynamic;
	
	/**
	 * Manages the stencil buffer
	 */
	var stencilManager:Dynamic;
	
	/**
	 * Manages the blendModes
	 */
	var blendModeManager:Dynamic;
	
	/**
	 * TODO remove
	 */
	var renderSession:Dynamic;
	
}
