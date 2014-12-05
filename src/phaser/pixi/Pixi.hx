package phaser.pixi;

@:native("PIXI")
extern class Pixi {
	
	/**
	 * @property {Number} WEBGL_RENDERER
	 */
	static var WEBGL_RENDERER:Float;
	
	/**
	 * @property {Number} CANVAS_RENDERER
	 */
	static var CANVAS_RENDERER:Float;
	
	/**
	 * Version of pixi that is loaded.
	 */
	static var VERSION:String;
	
	/**
	 * Various blend modes supported by pixi.
	 */
	static var blendModes:Float;
	
	/**
	 * The scale modes that are supported by pixi.
	 * 
	 * The DEFAULT scale mode affects the default scaling mode of future operations.
	 * It can be re-assigned to either LINEAR or NEAREST, depending upon suitability.
	 */
	static var scaleModes:Float;
	
	/**
	 * @property {Number} PI_2
	 */
	static var PI_2:Float;
	
	/**
	 * @property {Number} RAD_TO_DEG
	 */
	static var RAD_TO_DEG:Float;
	
	/**
	 * @property {Number} DEG_TO_RAD
	 */
	static var DEG_TO_RAD:Float;
	
	/**
	 * @property {String} RETINA_PREFIX
	 */
	static var RETINA_PREFIX:String;
	
	/**
	 * If true the default pixi startup (console) banner message will be suppressed.
	 */
	static var dontSayHello:Bool;
	
	/**
	 * The default render options if none are supplied to
	 * {{#crossLink "WebGLRenderer"}}{{/crossLink}} or {{#crossLink "CanvasRenderer"}}{{/crossLink}}.
	 */
	static var defaultRenderOptions:Bool;
	
}
