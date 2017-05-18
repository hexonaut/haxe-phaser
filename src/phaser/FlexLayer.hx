package phaser;

/**
* WARNING: This is an EXPERIMENTAL class. The API will change significantly in the coming versions and is incomplete.
* Please try to avoid using in production games with a long time to build.
* This is also why the documentation is incomplete.
* 
* A responsive grid layer.
*/
@:native("Phaser.FlexLayer")
extern class FlexLayer extends phaser.Group {

	/**
	* WARNING: This is an EXPERIMENTAL class. The API will change significantly in the coming versions and is incomplete.
	* Please try to avoid using in production games with a long time to build.
	* This is also why the documentation is incomplete.
	* 
	* A responsive grid layer.
	* 
	* @param manager The FlexGrid that owns this FlexLayer.
	* @param position A reference to the Point object used for positioning.
	* @param bounds A reference to the Rectangle used for the layer bounds.
	* @param scale A reference to the Point object used for layer scaling.
	*/
	function new(manager:phaser.ScaleManager, position:phaser.Point, bounds:phaser.Rectangle, scale:phaser.Point);
	
	/**
	* A reference to the FlexGrid that owns this layer.
	*/
	var grid:phaser.FlexGrid;
	
	/**
	* A reference to the ScaleManager.
	*/
	var manager:phaser.ScaleManager;
	
	var bottomLeft:phaser.Point;
	
	var bottomMiddle:phaser.Point;
	
	var bottomRight:phaser.Point;
	
	var bounds:phaser.Rectangle;
	
	/**
	* Should the FlexLayer remain through a State swap?
	*/
	var persist:Bool;
	
	@:native("position")
	var FlexLayer_position:phaser.Point;
	
	@:native("scale")
	var FlexLayer_scale:phaser.Point;
	
	var topLeft:phaser.Point;
	
	var topMiddle:phaser.Point;
	
	var topRight:phaser.Point;
	
	/**
	* Debug.
	*/
	function debug():Void;
	
	/**
	* Resize.
	*/
	function resize():Void;
	
}

