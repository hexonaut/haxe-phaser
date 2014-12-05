package phaser.gameobjects;

@:native("Phaser.Rope")
extern class Rope extends phaser.pixi.extras.Rope {
	
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
	 * Internal cache var.
	 */
	var _frame:Float;
	
	/**
	 * Internal cache var.
	 */
	var _frameName:String;
	
	/**
	 * Internal cache var.
	 */
	var _scroll:phaser.geom.Point;
	
	/**
	 * The Input Handler for this object. Needs to be enabled with image.inputEnabled = true before you can use it.
	 */
	var input:Dynamic;
	
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
	 * If true the Sprite checks if it is still within the world each frame, when it leaves the world it dispatches Sprite.events.onOutOfBounds
	 * and optionally kills the sprite (if Sprite.outOfBoundsKill is true). By default this is disabled because the Sprite has to calculate its
	 * bounds every frame to support it, and not all games need it. Enable it by setting the value to true.
	 */
	var checkWorldBounds:Bool;
	
	/**
	 * If this object is fixedToCamera then this stores the x/y offset that its drawn at, from the top-left of the camera view.
	 */
	var cameraOffset:phaser.geom.Point;
	
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
	 * A small internal cache:
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
	 * Changes the Texture the Rope is using entirely. The old texture is removed and the new one is referenced or fetched from the Cache.
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
	 * Sets the Texture frame the Rope uses for rendering.
	 * This is primarily an internal method used by Rope.loadTexture, although you may call it directly.
	 */
	function setFrame (frame:phaser.animation.Frame):Void;
	
	/**
	 * Destroys the Rope. This removes it from its parent group, destroys the event and animation handlers if present
	 * and nulls its reference to game, freeing it up for garbage collection.
	 */
	function destroy (?destroyChildren:Bool = true):Void;
	
	/**
	 * Play an animation based on the given key. The animation should previously have been added via sprite.animations.add()
	 * If the requested animation is already playing this request will be ignored. If you need to reset an already running animation do so directly on the Animation object itself.
	 */
	function play (name:String, ?frameRate:Float, ?loop:Bool = false, ?killOnComplete:Bool = false):phaser.animation.Animation;
	
	/**
	 * Resets the Rope. This places the Rope at the given x/y world coordinates, resets the tilePosition and then
	 * sets alive, exists, visible and renderable all to true. Also resets the outOfBounds state.
	 * If the Rope has a physics body that too is reset.
	 */
	function reset (x:Float, y:Float):Dynamic;
	
	/**
	 * Indicates the rotation of the Sprite, in degrees, from its original orientation. Values from 0 to 180 represent clockwise rotation; values from 0 to -180 represent counterclockwise rotation.
	 * Values outside this range are added to or subtracted from 360 to obtain a value within the range. For example, the statement player.angle = 450 is the same as player.angle = 90.
	 * If you wish to work in radians instead of degrees use the property Sprite.rotation instead. Working in radians is also a little faster as it doesn't have to convert the angle.
	 */
	var angle:Float;
	
	/**
	 * @name Phaser.Rope#frame
	 */
	var frame:Float;
	
	/**
	 * @name Phaser.Rope#frameName
	 */
	var frameName:String;
	
	/**
	 * A Rope that is fixed to the camera uses its x/y coordinates as offsets from the top left of the camera. These are stored in Rope.cameraOffset.
	 * Note that the cameraOffset values are in addition to any parent in the display list.
	 * So if this Rope was in a Group that has x: 200, then this will be added to the cameraOffset.x
	 */
	var fixedToCamera:Bool;
	
	/**
	 * Rope.exists controls if the core game loop and physics update this Rope or not.
	 * When you set Rope.exists to false it will remove its Body from the physics world (if it has one) and also set Rope.visible to false.
	 * Setting Rope.exists to true will re-add the Body to the physics world (if it has a body) and set Rope.visible to true.
	 */
	var exists:Bool;
	
	/**
	 * By default a Rope won't process any input events at all. By setting inputEnabled to true the Phaser.InputHandler is
	 * activated for this object and it will then start to process click/touch events and more.
	 */
	var inputEnabled:Bool;
	
	/**
	 * A Rope will call it's updateAnimation function on each update loop if it has one
	 */
	var updateAnimation:Dynamic;
	
	/**
	 * @name Phaser.Rope#destroyPhase
	 */
	var destroyPhase:Bool;
	
}
