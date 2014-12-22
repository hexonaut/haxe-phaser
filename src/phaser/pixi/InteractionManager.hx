package phaser.pixi;

@:native("PIXI.InteractionManager")
extern class InteractionManager {
	
	/**
	 * The interaction manager deals with mouse and touch events. Any DisplayObject can be interactive
	 * if its interactive parameter is set to true
	 * This manager also supports multitouch.
	 */
	function new (Stage:Dynamic);
	
	/**
	 * A reference to the stage
	 */
	var stage:Dynamic;
	
	/**
	 * The mouse data
	 */
	var mouse:Dynamic;
	
	/**
	 * An object that stores current touches (InteractionData) by id reference
	 */
	var touches:Dynamic;
	
	/**
	 * @property tempPoint
	 */
	var tempPoint:Dynamic;
	
	/**
	 * @property mouseoverEnabled
	 */
	var mouseoverEnabled:Dynamic;
	
	/**
	 * Tiny little interactiveData pool !
	 */
	var pool:Array<Dynamic>;
	
	/**
	 * An array containing all the iterative items from the our interactive tree
	 */
	var interactiveItems:Array<Dynamic>;
	
	/**
	 * Our canvas
	 */
	var interactionDOMElement:Dynamic;
	
	/**
	 * @property onMouseMove
	 */
	var onMouseMove:Dynamic;
	
	/**
	 * @property onMouseDown
	 */
	var onMouseDown:Dynamic;
	
	/**
	 * @property onMouseOut
	 */
	var onMouseOut:Dynamic;
	
	/**
	 * @property onMouseUp
	 */
	var onMouseUp:Dynamic;
	
	/**
	 * @property onTouchStart
	 */
	var onTouchStart:Dynamic;
	
	/**
	 * @property onTouchEnd
	 */
	var onTouchEnd:Dynamic;
	
	/**
	 * @property onTouchMove
	 */
	var onTouchMove:Dynamic;
	
	/**
	 * @property last
	 */
	var last:Dynamic;
	
	/**
	 * The css style of the cursor that is being used
	 */
	var currentCursorStyle:String;
	
	/**
	 * Is set to true when the mouse is moved out of the canvas
	 */
	var mouseOut:Bool;
	
	/**
	 * @property resolution
	 */
	var resolution:Dynamic;
	
}
