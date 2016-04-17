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
	 * [read-only] Current transform of the object based on world (parent) factors
	 */
	var worldTransform:Dynamic;
	
	/**
	 * The position of the Display Object based on the world transform.
	 * This value is updated at the end of updateTransform and takes all parent transforms into account.
	 */
	var worldPosition:Dynamic;
	
	/**
	 * The scale of the Display Object based on the world transform.
	 * This value is updated at the end of updateTransform and takes all parent transforms into account.
	 */
	var worldScale:Dynamic;
	
	/**
	 * The rotation of the Display Object, in radians, based on the world transform.
	 * This value is updated at the end of updateTransform and takes all parent transforms into account.
	 */
	var worldRotation:Float;
	
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
	 * The original, cached mask of the object
	 */
	var mask:Dynamic;
	
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
	 * Sets the filters for the displayObject.
	 * IMPORTANT: This is a webGL only feature and will be ignored by the Canvas renderer.
	 * 
	 * To remove filters simply set this property to 'null'.
	 * 
	 * You cannot have a filter and a multiply blend mode active at the same time. Setting a filter will reset
	 * this objects blend mode to NORMAL.
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
	
	/**
	 * Useful function that returns a texture of the displayObject object that can then be used to create sprites.
	 * This can be quite useful if your displayObject is static / complicated and needs to be reused multiple times.
	 */
	function generateTexture (resolution:Float, scaleMode:Float, renderer:Dynamic):phaser.pixi.textures.RenderTexture;
	
	/**
	 * Calculates the global position of the display object
	 */
	function toGlobal (position:phaser.pixi.geom.Point):phaser.pixi.geom.Point;
	
	/**
	 * Calculates the local position of the display object relative to another point
	 */
	function toLocal (position:phaser.pixi.geom.Point, from:phaser.pixi.display.DisplayObject):phaser.pixi.geom.Point;
	
}
