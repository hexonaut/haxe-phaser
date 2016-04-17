package phaser.pixi;

@:native("PIXI")
extern class Pixi {
	
	/**
	 * A reference to the Phaser Game instance that owns this Pixi renderer.
	 */
	static var game:phaser.core.Game;
	
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
	 * The default render options if none are supplied to
	 * {{#crossLink "WebGLRenderer"}}{{/crossLink}} or {{#crossLink "CanvasRenderer"}}{{/crossLink}}.
	 */
	static var defaultRenderOptions:Bool;
	
}
