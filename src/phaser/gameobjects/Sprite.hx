package phaser.gameobjects;

@:native("Phaser.Sprite")
extern class Sprite extends phaser.pixi.display.Sprite {

	/**
	* Sprites are the lifeblood of your game, used for nearly everything visual.
	*
	* At its most basic a Sprite consists of a set of coordinates and a texture that is rendered to the canvas.
	* They also contain additional properties allowing for physics motion (via Sprite.body), input handling (via Sprite.input),
	* events (via Sprite.events), animation (via Sprite.animations), camera culling and more. Please see the Examples for use cases.
	*
	*/
	function new (game:phaser.core.Game, ?x:Float=0, ?y:Float=0, ?key:Dynamic, ?frame:Float);
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The user defined name given to this Sprite.
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
	 * The Events you can subscribe to that are dispatched when certain things happen on this Sprite or its components.
	 */
	var events:phaser.gameobjects.Events;
	
	/**
	 * This manages animations of the sprite. You can modify animations through it (see Phaser.AnimationManager)
	 */
	var animations:phaser.animation.AnimationManager;
	
	/**
	 * This is the image or texture used by the Sprite during rendering. It can be a string which is a reference to the Cache entry, or an instance of a RenderTexture, BitmapData or PIXI.Texture.
	 */
	var key:Dynamic;
	
	/**
	 * The world coordinates of this Sprite. This differs from the x/y coordinates which are relative to the Sprites container.
	 */
	var world:phaser.geom.Point;
	
	/**
	 * Should this Sprite be automatically culled if out of range of the camera?
	 * A culled sprite has its renderable property set to 'false'.
	 * Be advised this is quite an expensive operation, as it has to calculate the bounds of the object every frame, so only enable it if you really need it.
	 */
	var autoCull:Bool;
	
	/**
	 * The Input Handler for this object. Needs to be enabled with image.inputEnabled = true before you can use it.
	 */
	var input:Dynamic;
	
	/**
	 * By default Sprites won't add themselves to any physics system and their physics body will be null.
	 * To enable them for physics you need to call game.physics.enable(sprite, system) where sprite is this object
	 * and system is the Physics system you want to use to manage this body. Once enabled you can access all physics related properties via Sprite.body.
	 * 
	 * Important: Enabling a Sprite for P2 or Ninja physics will automatically set Sprite.anchor to 0.5 so the physics body is centered on the Sprite.
	 * If you need a different result then adjust or re-create the Body shape offsets manually, and/or reset the anchor after enabling physics.
	 */
	var body:Dynamic;
	
	/**
	 * A useful boolean to control if the Sprite is alive or dead (in terms of your gameplay, it doesn't effect rendering). Also linked to Sprite.health and Sprite.damage.
	 */
	var alive:Bool;
	
	/**
	 * Health value. Used in combination with damage() to allow for quick killing of Sprites.
	 */
	var health:Float;
	
	/**
	 * To given a Sprite a lifespan, in milliseconds, once 'born' you can set this to a positive value. Handy for particles, bullets, etc.
	 * 
	 * The lifespan is decremented by game.time.physicsElapsed (converted to milliseconds) each logic update,
	 * and {@link Phaser.Sprite.kill kill} is called once the lifespan reaches 0.
	 */
	var lifespan:Float;
	
	/**
	 * If true the Sprite checks if it is still within the world each frame, when it leaves the world it dispatches Sprite.events.onOutOfBounds
	 * and optionally kills the sprite (if Sprite.outOfBoundsKill is true). By default this is disabled because the Sprite has to calculate its
	 * bounds every frame to support it, and not all games need it. Enable it by setting the value to true.
	 */
	var checkWorldBounds:Bool;
	
	/**
	 * If true Sprite.kill is called as soon as Sprite.inWorld returns false, as long as Sprite.checkWorldBounds is true.
	 */
	var outOfBoundsKill:Bool;
	
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
	 * Set the minimum scale this Sprite will scale down to. Prevents a parent from scaling this Sprite lower than the given value. Set to null to remove.
	 */
	var scaleMin:phaser.geom.Point;
	
	/**
	 * Set the maximum scale this Sprite will scale up to. Prevents a parent from scaling this Sprite higher than the given value. Set to null to remove.
	 */
	var scaleMax:phaser.geom.Point;
	
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
	function preUpdate ():Bool;
	
	/**
	 * Override and use this function in your own custom objects to handle any update requirements you may have.
	 * Remember if this Sprite has any children you should call update on them too.
	 */
	function update ():Void;
	
	/**
	 * Internal function called by the World postUpdate cycle.
	 */
	function postUpdate ():Void;
	
	/**
	 * Changes the Texture the Sprite is using entirely. The old texture is removed and the new one is referenced or fetched from the Cache.
	 * This causes a WebGL texture update, so use sparingly or in low-intensity portions of your game.
	 */
	@:overload(function (key:String, ?frame:String, ?stopAnimation:Bool = true):Void {})
	@:overload(function (key:phaser.gameobjects.RenderTexture, ?frame:String, ?stopAnimation:Bool = true):Void {})
	@:overload(function (key:phaser.gameobjects.BitmapData, ?frame:String, ?stopAnimation:Bool = true):Void {})
	@:overload(function (key:phaser.pixi.textures.Texture, ?frame:String, ?stopAnimation:Bool = true):Void {})
	@:overload(function (key:String, ?frame:Float, ?stopAnimation:Bool = true):Void {})
	@:overload(function (key:phaser.gameobjects.RenderTexture, ?frame:Float, ?stopAnimation:Bool = true):Void {})
	@:overload(function (key:phaser.gameobjects.BitmapData, ?frame:Float, ?stopAnimation:Bool = true):Void {})
	function loadTexture (key:phaser.pixi.textures.Texture, ?frame:Float, ?stopAnimation:Bool = true):Void;
	
	/**
	 * Sets the Texture frame the Sprite uses for rendering.
	 * This is primarily an internal method used by Sprite.loadTexture, although you may call it directly.
	 */
	function setFrame (frame:phaser.animation.Frame):Void;
	
	/**
	 * Resets the Texture frame dimensions that the Sprite uses for rendering.
	 */
	function resetFrame ():Void;
	
	/**
	 * Crop allows you to crop the texture used to display this Sprite.
	 * This modifies the core Sprite texture frame, so the Sprite width/height properties will adjust accordingly.
	 * 
	 * Cropping takes place from the top-left of the Sprite and can be modified in real-time by either providing an updated rectangle object to Sprite.crop,
	 * or by modifying Sprite.cropRect (or a reference to it) and then calling Sprite.updateCrop.
	 * 
	 * The rectangle object given to this method can be either a Phaser.Rectangle or any object so long as it has public x, y, width and height properties.
	 * A reference to the rectangle is stored in Sprite.cropRect unless the copy parameter is true in which case the values are duplicated to a local object.
	 */
	function crop (rect:phaser.geom.Rectangle, ?copy:Bool = false):Void;
	
	/**
	 * If you have set a crop rectangle on this Sprite via Sprite.crop and since modified the Sprite.cropRect property (or the rectangle it references)
	 * then you need to update the crop frame by calling this method.
	 */
	function updateCrop ():Void;
	
	/**
	 * Brings a 'dead' Sprite back to life, optionally giving it the health value specified.
	 * A resurrected Sprite has its alive, exists and visible properties all set to true.
	 * It will dispatch the onRevived event, you can listen to Sprite.events.onRevived for the signal.
	 */
	function revive (?health:Float = 1):Dynamic;
	
	/**
	 * Kills a Sprite. A killed Sprite has its alive, exists and visible properties all set to false.
	 * It will dispatch the onKilled event, you can listen to Sprite.events.onKilled for the signal.
	 * Note that killing a Sprite is a way for you to quickly recycle it in a Sprite pool, it doesn't free it up from memory.
	 * If you don't need this Sprite any more you should call Sprite.destroy instead.
	 */
	function kill ():Dynamic;
	
	/**
	 * Destroys the Sprite. This removes it from its parent group, destroys the input, event and animation handlers if present
	 * and nulls its reference to game, freeing it up for garbage collection.
	 */
	function destroy (?destroyChildren:Bool = true):Void;
	
	/**
	 * Damages the Sprite, this removes the given amount from the Sprites health property.
	 * If health is then taken below or is equal to zero Sprite.kill is called.
	 */
	function damage (amount:Float):Dynamic;
	
	/**
	 * Resets the Sprite. This places the Sprite at the given x/y world coordinates and then
	 * sets alive, exists, visible and renderable all to true. Also resets the outOfBounds state and health values.
	 * If the Sprite has a physics body that too is reset.
	 */
	function reset (x:Float, y:Float, ?health:Float = 1):Dynamic;
	
	/**
	 * Brings the Sprite to the top of the display list it is a child of. Sprites that are members of a Phaser.Group are only
	 * bought to the top of that Group, not the entire display list.
	 */
	function bringToTop ():Dynamic;
	
	/**
	 * Play an animation based on the given key. The animation should previously have been added via sprite.animations.add()
	 * If the requested animation is already playing this request will be ignored. If you need to reset an already running animation do so directly on the Animation object itself.
	 */
	function play (name:String, ?frameRate:Float, ?loop:Bool = false, ?killOnComplete:Bool = false):phaser.animation.Animation;
	
	/**
	 * Checks to see if the bounds of this Sprite overlaps with the bounds of the given Display Object, which can be a Sprite, Image, TileSprite or anything that extends those such as a Button.
	 * This check ignores the Sprites hitArea property and runs a Sprite.getBounds comparison on both objects to determine the result.
	 * Therefore it's relatively expensive to use in large quantities (i.e. with lots of Sprites at a high frequency), but should be fine for low-volume testing where physics isn't required.
	 */
	@:overload(function (displayObject:phaser.gameobjects.Sprite):Bool {})
	@:overload(function (displayObject:phaser.gameobjects.Image):Bool {})
	@:overload(function (displayObject:phaser.gameobjects.TileSprite):Bool {})
	@:overload(function (displayObject:phaser.gameobjects.Button):Bool {})
	function overlap (displayObject:phaser.pixi.display.DisplayObject):Bool;
	
	/**
	 * Adjust scaling limits, if set, to this Sprite.
	 */
	function checkTransform (wt:phaser.pixi.geom.Matrix):Void;
	
	/**
	 * Sets the scaleMin and scaleMax values. These values are used to limit how far this Sprite will scale based on its parent.
	 * For example if this Sprite has a minScale value of 1 and its parent has a scale value of 0.5, the 0.5 will be ignored and the scale value of 1 will be used.
	 * By using these values you can carefully control how Sprites deal with responsive scaling.
	 * 
	 * If only one parameter is given then that value will be used for both scaleMin and scaleMax:
	 * setScaleMinMax(1) = scaleMin.x, scaleMin.y, scaleMax.x and scaleMax.y all = 1
	 * 
	 * If only two parameters are given the first is set as scaleMin.x and y and the second as scaleMax.x and y:
	 * setScaleMinMax(0.5, 2) = scaleMin.x and y = 0.5 and scaleMax.x and y = 2
	 * 
	 * If you wish to set scaleMin with different values for x and y then either modify Sprite.scaleMin directly, or pass null for the maxX and maxY parameters.
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
	 * Indicates the rotation of the Sprite, in degrees, from its original orientation. Values from 0 to 180 represent clockwise rotation; values from 0 to -180 represent counterclockwise rotation.
	 * Values outside this range are added to or subtracted from 360 to obtain a value within the range. For example, the statement player.angle = 450 is the same as player.angle = 90.
	 * If you wish to work in radians instead of degrees use the property Sprite.rotation instead. Working in radians is also a little faster as it doesn't have to convert the angle.
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
	 * Checks if the Sprite bounds are within the game world, otherwise false if fully outside of it.
	 */
	var inWorld(default, null):Bool;
	
	/**
	 * Checks if the Sprite bounds are within the game camera, otherwise false if fully outside of it.
	 */
	var inCamera(default, null):Bool;
	
	/**
	 * @name Phaser.Sprite#frame
	 */
	var frame:Float;
	
	/**
	 * @name Phaser.Sprite#frameName
	 */
	var frameName:String;
	
	/**
	 * @name Phaser.Sprite#renderOrderID
	 */
	var renderOrderID(default, null):Float;
	
	/**
	 * By default a Sprite won't process any input events at all. By setting inputEnabled to true the Phaser.InputHandler is
	 * activated for this object and it will then start to process click/touch events and more.
	 */
	var inputEnabled:Bool;
	
	/**
	 * Sprite.exists controls if the core game loop and physics update this Sprite or not.
	 * When you set Sprite.exists to false it will remove its Body from the physics world (if it has one) and also set Sprite.visible to false.
	 * Setting Sprite.exists to true will re-add the Body to the physics world (if it has a body) and set Sprite.visible to true.
	 */
	var exists:Bool;
	
	/**
	 * An Sprite that is fixed to the camera uses its x/y coordinates as offsets from the top left of the camera. These are stored in Sprite.cameraOffset.
	 * Note that the cameraOffset values are in addition to any parent in the display list.
	 * So if this Sprite was in a Group that has x: 200, then this will be added to the cameraOffset.x
	 */
	var fixedToCamera:Bool;
	
	/**
	 * Enable or disable texture smoothing for this Sprite. Only works for bitmap/image textures. Smoothing is enabled by default.
	 */
	var smoothed:Bool;
	
	/**
	 * @name Phaser.Sprite#destroyPhase
	 */
	var destroyPhase:Bool;
	
}
