package phaser.gameobjects;

@:native("Phaser.Image")
extern class Image extends phaser.pixi.display.Sprite {
	
	/**
	 * @class Phaser.Image
	 */
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:String, frame:String):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:phaser.gameobjects.RenderTexture, frame:String):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:phaser.gameobjects.BitmapData, frame:String):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:phaser.pixi.textures.Texture, frame:String):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:String, frame:Float):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:phaser.gameobjects.RenderTexture, frame:Float):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:phaser.gameobjects.BitmapData, frame:Float):Void {})
	function new (game:phaser.core.Game, x:Float, y:Float, key:phaser.pixi.textures.Texture, frame:Float);
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * If exists = false then the Image isn't updated by the core game loop.
	 */
	var exists:Bool;
	
	/**
	 * The user defined name given to this Image.
	 */
	var name:String;
	
	/**
	 * The const type of this object.
	 */
	var type(default, null):Float;
	
	/**
	 * The z-depth value of this object within its Group (remember the World is a Group as well). No two objects in a Group can have the same z value.
	 */
	var z:Float;
	
	/**
	 * The Events you can subscribe to that are dispatched when certain things happen on this Image or its components.
	 */
	var events:phaser.gameobjects.Events;
	
	/**
	 * This manages animations of the sprite. You can modify animations through it (see Phaser.AnimationManager)
	 */
	var animations:phaser.animation.AnimationManager;
	
	/**
	 * This is the image or texture used by the Image during rendering. It can be a string which is a reference to the Cache entry, or an instance of a RenderTexture, BitmapData or PIXI.Texture.
	 */
	var key:Dynamic;
	
	/**
	 * The world coordinates of this Image. This differs from the x/y coordinates which are relative to the Images container.
	 */
	var world:phaser.geom.Point;
	
	/**
	 * A useful boolean to control if the Image is alive or dead (in terms of your gameplay, it doesn't effect rendering).
	 */
	var alive:Bool;
	
	/**
	 * Should this Image be automatically culled if out of range of the camera?
	 * A culled sprite has its renderable property set to 'false'.
	 * Be advised this is quite an expensive operation, as it has to calculate the bounds of the object every frame, so only enable it if you really need it.
	 */
	var autoCull:Bool;
	
	/**
	 * The Input Handler for this object. Needs to be enabled with image.inputEnabled = true before you can use it.
	 */
	var input:Dynamic;
	
	/**
	 * Handy flag to use with Game.enableStep
	 */
	var debug:Bool;
	
	/**
	 * If this object is fixedToCamera then this stores the x/y offset that its drawn at, from the top-left of the camera view.
	 */
	var cameraOffset:phaser.geom.Point;
	
	/**
	 * The Rectangle used to crop the texture. Set this via Sprite.crop. Any time you modify this property directly you must call Sprite.updateCrop.
	 */
	var cropRect:phaser.geom.Rectangle;
	
	/**
	 * A small internal cache:
	 * 
	 * 0 = previous position.x
	 * 1 = previous position.y
	 * 2 = previous rotation
	 * 3 = renderID
	 * 4 = fresh? (0 = no, 1 = yes)
	 * 5 = outOfBoundsFired (0 = no, 1 = yes)
	 * 6 = exists (0 = no, 1 = yes)
	 * 7 = fixed to camera (0 = no, 1 = yes)
	 * 8 = destroy phase? (0 = no, 1 = yes)
	 */
	var cache:Array<Dynamic>;
	
	/**
	 * Internal cache var.
	 */
	var _crop:phaser.geom.Rectangle;
	
	/**
	 * Internal cache var.
	 */
	var _frame:phaser.geom.Rectangle;
	
	/**
	 * Internal cache var.
	 */
	var _bounds:phaser.geom.Rectangle;
	
	/**
	 * Automatically called by World.preUpdate.
	 */
	function preUpdate ():Void;
	
	/**
	 * Override and use this function in your own custom objects to handle any update requirements you may have.
	 */
	function update ():Void;
	
	/**
	 * Internal function called by the World postUpdate cycle.
	 */
	function postUpdate ():Void;
	
	/**
	 * Changes the Texture the Image is using entirely. The old texture is removed and the new one is referenced or fetched from the Cache.
	 * This causes a WebGL texture update, so use sparingly or in low-intensity portions of your game.
	 */
	@:overload(function (key:String, frame:String):Void {})
	@:overload(function (key:phaser.gameobjects.RenderTexture, frame:String):Void {})
	@:overload(function (key:phaser.gameobjects.BitmapData, frame:String):Void {})
	@:overload(function (key:phaser.pixi.textures.Texture, frame:String):Void {})
	@:overload(function (key:String, frame:Float):Void {})
	@:overload(function (key:phaser.gameobjects.RenderTexture, frame:Float):Void {})
	@:overload(function (key:phaser.gameobjects.BitmapData, frame:Float):Void {})
	function loadTexture (key:phaser.pixi.textures.Texture, frame:Float):Void;
	
	/**
	 * Sets the Texture frame the Image uses for rendering.
	 * This is primarily an internal method used by Image.loadTexture, although you may call it directly.
	 */
	function setFrame (frame:phaser.animation.Frame):Void;
	
	/**
	 * Resets the Texture frame dimensions that the Image uses for rendering.
	 */
	function resetFrame ():Void;
	
	/**
	 * Crop allows you to crop the texture used to display this Image.
	 * Cropping takes place from the top-left of the Image and can be modified in real-time by providing an updated rectangle object.
	 * The rectangle object given to this method can be either a Phaser.Rectangle or any object so long as it has public x, y, width and height properties.
	 * Please note that the rectangle object given is not duplicated by this method, but rather the Image uses a reference to the rectangle.
	 * Keep this in mind if assigning a rectangle in a for-loop, or when cleaning up for garbage collection.
	 */
	function crop (rect:phaser.geom.Rectangle, ?copy:Bool = false):Void;
	
	/**
	 * If you have set a crop rectangle on this Image via Image.crop and since modified the Image.cropRect property (or the rectangle it references)
	 * then you need to update the crop frame by calling this method.
	 */
	function updateCrop ():Void;
	
	/**
	 * Brings a 'dead' Image back to life, optionally giving it the health value specified.
	 * A resurrected Image has its alive, exists and visible properties all set to true.
	 * It will dispatch the onRevived event, you can listen to Image.events.onRevived for the signal.
	 */
	function revive ():phaser.gameobjects.Image;
	
	/**
	 * Kills a Image. A killed Image has its alive, exists and visible properties all set to false.
	 * It will dispatch the onKilled event, you can listen to Image.events.onKilled for the signal.
	 * Note that killing a Image is a way for you to quickly recycle it in a Image pool, it doesn't free it up from memory.
	 * If you don't need this Image any more you should call Image.destroy instead.
	 */
	function kill ():phaser.gameobjects.Image;
	
	/**
	 * Destroys the Image. This removes it from its parent group, destroys the input, event and animation handlers if present
	 * and nulls its reference to game, freeing it up for garbage collection.
	 */
	function destroy (?destroyChildren:Bool = true):Void;
	
	/**
	 * Resets the Image. This places the Image at the given x/y world coordinates and then sets alive, exists, visible and renderable all to true.
	 */
	function reset (x:Float, y:Float):phaser.gameobjects.Image;
	
	/**
	 * Brings the Image to the top of the display list it is a child of. Images that are members of a Phaser.Group are only
	 * bought to the top of that Group, not the entire display list.
	 */
	function bringToTop ():phaser.gameobjects.Image;
	
	/**
	 * Adjust scaling limits, if set, to this Image.
	 */
	function checkTransform (wt:phaser.pixi.geom.Matrix):Void;
	
	/**
	 * Sets the scaleMin and scaleMax values in one call.
	 * These values are used to limit how far this Image will scale (either up or down) based on its parent.
	 * For example if this Image has a minScale value of 1 and its parent has a scale value of 0.5, the 0.5 will be ignored and the scale value of 1 will be used.
	 * By using these values you can carefully control how Images deal with responsive scaling.
	 * 
	 * If only one parameter is given then that value will be used for both scaleMin and scaleMax:
	 * setScaleMinMax(1) = scaleMin.x, scaleMin.y, scaleMax.x and scaleMax.y all = 1
	 * 
	 * If only two parameters are given the first is set as scaleMin.x and y and the second as scaleMax.x and y:
	 * setScaleMinMax(0.5, 2) = scaleMin.x and y = 0.5 and scaleMax.x and y = 2
	 * 
	 * If you wish to set scaleMin with different values for x and y then either modify Image.scaleMin directly, or pass null for the maxX and maxY parameters.
	 * 
	 * Call setScaleMinMax(null) to clear both the scaleMin and scaleMax values.
	 */
	@:overload(function (minX:Float, minY:Float, maxX:Float, maxY:Float):Void {})
	@:overload(function (minX:Dynamic, minY:Float, maxX:Float, maxY:Float):Void {})
	@:overload(function (minX:Float, minY:Dynamic, maxX:Float, maxY:Float):Void {})
	@:overload(function (minX:Dynamic, minY:Dynamic, maxX:Float, maxY:Float):Void {})
	@:overload(function (minX:Float, minY:Float, maxX:Dynamic, maxY:Float):Void {})
	@:overload(function (minX:Dynamic, minY:Float, maxX:Dynamic, maxY:Float):Void {})
	@:overload(function (minX:Float, minY:Dynamic, maxX:Dynamic, maxY:Float):Void {})
	@:overload(function (minX:Dynamic, minY:Dynamic, maxX:Dynamic, maxY:Float):Void {})
	@:overload(function (minX:Float, minY:Float, maxX:Float, maxY:Dynamic):Void {})
	@:overload(function (minX:Dynamic, minY:Float, maxX:Float, maxY:Dynamic):Void {})
	@:overload(function (minX:Float, minY:Dynamic, maxX:Float, maxY:Dynamic):Void {})
	@:overload(function (minX:Dynamic, minY:Dynamic, maxX:Float, maxY:Dynamic):Void {})
	@:overload(function (minX:Float, minY:Float, maxX:Dynamic, maxY:Dynamic):Void {})
	@:overload(function (minX:Dynamic, minY:Float, maxX:Dynamic, maxY:Dynamic):Void {})
	@:overload(function (minX:Float, minY:Dynamic, maxX:Dynamic, maxY:Dynamic):Void {})
	function setScaleMinMax (minX:Dynamic, minY:Dynamic, maxX:Dynamic, maxY:Dynamic):Void;
	
	/**
	 * Indicates the rotation of the Image, in degrees, from its original orientation. Values from 0 to 180 represent clockwise rotation; values from 0 to -180 represent counterclockwise rotation.
	 * Values outside this range are added to or subtracted from 360 to obtain a value within the range. For example, the statement player.angle = 450 is the same as player.angle = 90.
	 * If you wish to work in radians instead of degrees use the property Image.rotation instead. Working in radians is also a little faster as it doesn't have to convert the angle.
	 */
	var angle:Float;
	
	/**
	 * Returns the delta x value. The difference between world.x now and in the previous step.
	 */
	var deltaX(default, null):Float;
	
	/**
	 * Returns the delta y value. The difference between world.y now and in the previous step.
	 */
	var deltaY(default, null):Float;
	
	/**
	 * Returns the delta z value. The difference between rotation now and in the previous step.
	 */
	var deltaZ(default, null):Float;
	
	/**
	 * Checks if the Image bounds are within the game world, otherwise false if fully outside of it.
	 */
	var inWorld(default, null):Bool;
	
	/**
	 * Checks if the Image bounds are within the game camera, otherwise false if fully outside of it.
	 */
	var inCamera(default, null):Bool;
	
	/**
	 * @name Phaser.Image#frame
	 */
	var frame:Float;
	
	/**
	 * @name Phaser.Image#frameName
	 */
	var frameName:String;
	
	/**
	 * @name Phaser.Image#renderOrderID
	 */
	var renderOrderID(default, null):Float;
	
	/**
	 * By default an Image won't process any input events at all. By setting inputEnabled to true the Phaser.InputHandler is
	 * activated for this object and it will then start to process click/touch events and more.
	 */
	var inputEnabled:Bool;
	
	/**
	 * An Image that is fixed to the camera uses its x/y coordinates as offsets from the top left of the camera. These are stored in Image.cameraOffset.
	 * Note that the cameraOffset values are in addition to any parent in the display list.
	 * So if this Image was in a Group that has x: 200, then this will be added to the cameraOffset.x
	 */
	var fixedToCamera:Bool;
	
	/**
	 * Enable or disable texture smoothing for this Image. Only works for bitmap/image textures. Smoothing is enabled by default.
	 */
	var smoothed:Bool;
	
	/**
	 * @name Phaser.Image#destroyPhase
	 */
	var destroyPhase:Bool;
	
}
