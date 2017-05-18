package phaser;

/**
* WARNING: This is an EXPERIMENTAL class. The API will change significantly in the coming versions and is incomplete.
* Please try to avoid using in production games with a long time to build.
* This is also why the documentation is incomplete.
* 
* FlexGrid is a a responsive grid manager that works in conjunction with the ScaleManager RESIZE scaling mode and FlexLayers
* to provide for game object positioning in a responsive manner.
*/
@:native("Phaser.FlexGrid")
extern class FlexGrid {

	/**
	* WARNING: This is an EXPERIMENTAL class. The API will change significantly in the coming versions and is incomplete.
	* Please try to avoid using in production games with a long time to build.
	* This is also why the documentation is incomplete.
	* 
	* FlexGrid is a a responsive grid manager that works in conjunction with the ScaleManager RESIZE scaling mode and FlexLayers
	* to provide for game object positioning in a responsive manner.
	* 
	* @param manager The ScaleManager.
	* @param width The width of the game.
	* @param height The height of the game.
	*/
	function new(manager:phaser.ScaleManager, width:Float, height:Float);
	
	/**
	* A reference to the currently running Game.
	*/
	var game:phaser.Game;
	
	/**
	* A reference to the ScaleManager.
	*/
	var manager:phaser.ScaleManager;
	
	var width:Float;
	
	var height:Float;
	
	var boundsCustom:phaser.Rectangle;
	
	var boundsFluid:phaser.Rectangle;
	
	var boundsFull:phaser.Rectangle;
	
	var boundsNone:phaser.Rectangle;
	
	var customWidth:Float;
	
	var customHeight:Float;
	
	var customOffsetX:Float;
	
	var customOffsetY:Float;
	
	/**
	* -
	*/
	var positionCustom:phaser.Point;
	
	var positionFluid:phaser.Point;
	
	var positionFull:phaser.Point;
	
	var positionNone:phaser.Point;
	
	/**
	* The scale factor based on the game dimensions vs. the scaled dimensions.
	*/
	var scaleCustom:phaser.Point;
	
	var scaleFluid:phaser.Point;
	
	var scaleFluidInversed:phaser.Point;
	
	var scaleFull:phaser.Point;
	
	var scaleNone:phaser.Point;
	
	var ratioH:Float;
	
	var ratioV:Float;
	
	var multiplier:Float;
	
	/**
	* A custom layer is centered on the game and maintains its aspect ratio as it scales up and down.
	* 
	* @param width Width of this layer in pixels.
	* @param height Height of this layer in pixels.
	* @param children An array of children that are used to populate the FlexLayer.
	* @return The Layer object.
	*/
	function createCustomLayer(width:Float, height:Float, ?children:Array<pixi.DisplayObject>, ?addToWorld:Bool):phaser.FlexLayer;
	
	/**
	* A fluid layer is centered on the game and maintains its aspect ratio as it scales up and down.
	* 
	* @param children An array of children that are used to populate the FlexLayer.
	* @return The Layer object.
	*/
	function createFluidLayer(children:Array<pixi.DisplayObject>):phaser.FlexLayer;
	
	/**
	* A full layer is placed at 0,0 and extends to the full size of the game. Children are scaled according to the fluid ratios.
	* 
	* @param children An array of children that are used to populate the FlexLayer.
	* @return The Layer object.
	*/
	function createFullLayer(children:Array<pixi.DisplayObject>):phaser.FlexLayer;
	
	/**
	* A fixed layer is centered on the game and is the size of the required dimensions and is never scaled.
	* 
	* @param children An array of children that are used to populate the FlexLayer.
	* @return The Layer object.
	*/
	function createFixedLayer(children:Array<pixi.DisplayObject>):phaser.FlexLayer;
	
	/**
	* Call in the render function to output the bounds rects.
	*/
	function debug():Void;
	
	/**
	* Fits a sprites width to the bounds.
	* 
	* @param sprite The Sprite to fit.
	*/
	function fitSprite(sprite:phaser.Sprite):Void;
	
	/**
	* Called when the game container changes dimensions.
	* 
	* @param width The new width of the game container.
	* @param height The new height of the game container.
	*/
	function onResize(width:Float, height:Float):Void;
	
	/**
	* Updates all internal vars such as the bounds and scale values.
	*/
	function refresh():Void;
	
	/**
	* Resets the layer children references
	*/
	function reset():Void;
	
	/**
	* Sets the core game size. This resets the w/h parameters and bounds.
	* 
	* @param width The new dimensions.
	* @param height The new dimensions.
	*/
	function setSize(width:Float, height:Float):Void;
	
}

