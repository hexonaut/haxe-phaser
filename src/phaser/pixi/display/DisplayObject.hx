package phaser.pixi.display;

@:native("PIXI.DisplayObject")
extern class DisplayObject {
	
	/**
	 * The base class for all objects that are rendered on the screen.
	 * This is an abstract class and should not be used on its own rather it should be extended.
	 */
	function new ();
	
	/**
	 * The coordinate of the object relative to the local coordinates of the parent.
	 */
	var position:Dynamic;
	
	/**
	 * The scale factor of the object.
	 */
	var scale:Dynamic;
	
	/**
	 * The transform callback is an optional callback that if set will be called at the end of the updateTransform method and sent two parameters:
	 * This Display Objects worldTransform matrix and its parents transform matrix. Both are PIXI.Matrix object types.
	 * The matrix are passed by reference and can be modified directly without needing to return them.
	 * This ability allows you to check any of the matrix values and perform actions such as clamping scale or limiting rotation, regardless of the parent transforms.
	 */
	var transformCallback:Dynamic;
	
	/**
	 * The context under which the transformCallback is invoked.
	 */
	var transformCallbackContext:Dynamic;
	
	/**
	 * The pivot point of the displayObject that it rotates around
	 */
	var pivot:Dynamic;
	
	/**
	 * The rotation of the object in radians.
	 */
	var rotation:Float;
	
	/**
	 * The opacity of the object.
	 */
	var alpha:Float;
	
	/**
	 * The visibility of the object.
	 */
	var visible:Bool;
	
	/**
	 * This is the defined area that will pick up mouse / touch events. It is null by default.
	 * Setting it is a neat way of optimising the hitTest function that the interactionManager will use (as it will not need to hit test all the children)
	 */
	var hitArea:Dynamic;
	
	/**
	 * This is used to indicate if the displayObject should display a mouse hand cursor on rollover
	 */
	var buttonMode:Bool;
	
	/**
	 * Can this object be rendered
	 */
	var renderable:Bool;
	
	/**
	 * [read-only] The display object container that contains this display object.
	 */
	var parent:Dynamic;
	
	/**
	 * [read-only] The stage the display object is connected to, or undefined if it is not connected to the stage.
	 */
	var stage:Dynamic;
	
	/**
	 * [read-only] The multiplied alpha of the displayObject
	 */
	var worldAlpha:Float;
	
	/**
	 * [read-only] Whether or not the object is interactive, do not toggle directly! use the interactive property
	 */
	var interactive:Bool;
	
	/**
	 * This is the cursor that will be used when the mouse is over this object. To enable this the element must have interaction = true and buttonMode = true
	 */
	var defaultCursor:String;
	
	/**
	 * [read-only] Current transform of the object based on world (parent) factors
	 */
	var worldTransform:Dynamic;
	
	/**
	 * cached sin rotation and cos rotation
	 */
	var sr:Float;
	
	/**
	 * cached sin rotation and cos rotation
	 */
	var cr:Float;
	
	/**
	 * The area the filter is applied to like the hitArea this is used as more of an optimisation
	 * rather than figuring out the dimensions of the displayObject each frame you can set this rectangle
	 */
	var filterArea:Dynamic;
	
	/**
	 * The original, cached bounds of the object
	 */
	var bounds:Dynamic;
	
	/**
	 * The most up-to-date bounds of the object
	 */
	var currentBounds:Dynamic;
	
	/**
	 * Cached internal flag.
	 */
	var cacheAsBitmap:Bool;
	
	/**
	 * Cached internal flag.
	 */
	var cacheIsDirty:Bool;
	
	/**
	 * [read-only] Indicates if the sprite is globally visible.
	 */
	var worldVisible:Bool;
	
	/**
	 * Sets a mask for the displayObject. A mask is an object that limits the visibility of an object to the shape of the mask applied to it.
	 * In PIXI a regular mask must be a PIXI.Graphics object. This allows for much faster masking in canvas as it utilises shape clipping.
	 * To remove a mask, set this property to null.
	 */
	var mask:Dynamic;
	
	/**
	 * Sets the filters for the displayObject.
	 * * IMPORTANT: This is a webGL only feature and will be ignored by the canvas renderer.
	 * To remove filters simply set this property to 'null'
	 */
	var filters:Dynamic;
	
	/**
	 * The position of the displayObject on the x axis relative to the local coordinates of the parent.
	 */
	var x:Float;
	
	/**
	 * The position of the displayObject on the y axis relative to the local coordinates of the parent.
	 */
	var y:Float;
	
}
