package phaser.gameobjects;

@:native("Phaser.TileSprite")
extern class TileSprite extends phaser.pixi.extras.TilingSprite
	implements phaser.gameobjects.components.Core
	implements phaser.gameobjects.components.Angle
	implements phaser.gameobjects.components.Animation
	implements phaser.gameobjects.components.AutoCull
	implements phaser.gameobjects.components.Bounds
	implements phaser.gameobjects.components.Destroy
	implements phaser.gameobjects.components.FixedToCamera
	implements phaser.gameobjects.components.InputEnabled
	implements phaser.gameobjects.components.InWorld
	implements phaser.gameobjects.components.LoadTexture
	implements phaser.gameobjects.components.Overlap
	implements phaser.gameobjects.components.PhysicsBody
	implements phaser.gameobjects.components.Reset
	implements phaser.gameobjects.components.Smoothed {
	
	/**
	 * A TileSprite is a Sprite that has a repeating texture. The texture can be scrolled and scaled independently of the TileSprite itself.
	 * Textures will automatically wrap and are designed so that you can create game backdrops using seamless textures as a source.
	 * 
	 * TileSprites have no input handler or physics bodies by default, both need enabling in the same way as for normal Sprites.
	 * 
	 * You shouldn't ever create a TileSprite any larger than your actual screen size. If you want to create a large repeating background
	 * that scrolls across the whole map of your game, then you create a TileSprite that fits the screen size and then use the tilePosition
	 * property to scroll the texture as the player moves. If you create a TileSprite that is thousands of pixels in size then it will 
	 * consume huge amounts of memory and cause performance issues. Remember: use tilePosition to scroll your texture and tileScale to
	 * adjust the scale of the texture - don't resize the sprite itself or make it larger than it needs.
	 * 
	 * An important note about texture dimensions:
	 * 
	 * When running under Canvas a TileSprite can use any texture size without issue. When running under WebGL the texture should ideally be
	 * a power of two in size (i.e. 4, 8, 16, 32, 64, 128, 256, 512, etch pixels width by height). If the texture isn't a power of two
	 * it will be rendered to a blank canvas that is the correct size, which means you may have 'blank' areas appearing to the right and
	 * bottom of your frame. To avoid this ensure your textures are perfect powers of two.
	 * 
	 * TileSprites support animations in the same way that Sprites do. You add and play animations using the AnimationManager. However
	 * if your game is running under WebGL please note that each frame of the animation must be a power of two in size, or it will receive
	 * additional padding to enforce it to be so.
	 */
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, width:Float, height:Float, key:String, frame:String):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, width:Float, height:Float, key:phaser.gameobjects.RenderTexture, frame:String):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, width:Float, height:Float, key:phaser.gameobjects.BitmapData, frame:String):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, width:Float, height:Float, key:phaser.pixi.textures.Texture, frame:String):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, width:Float, height:Float, key:String, frame:Float):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, width:Float, height:Float, key:phaser.gameobjects.RenderTexture, frame:Float):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, width:Float, height:Float, key:phaser.gameobjects.BitmapData, frame:Float):Void {})
	function new (game:phaser.core.Game, x:Float, y:Float, width:Float, height:Float, key:phaser.pixi.textures.Texture, frame:Float);
	
	/**
	 * The const type of this object.
	 */
	var type(default, null):Float;
	
	/**
	 * The const physics body type of this object.
	 */
	var physicsType(default, null):Float;
	
	/**
	 * Internal cache var.
	 */
	var _scroll:phaser.geom.Point;
	
	/**
	 * Automatically called by World.preUpdate.
	 */
	function preUpdate ():Void;
	
	/**
	 * Sets this TileSprite to automatically scroll in the given direction until stopped via TileSprite.stopScroll().
	 * The scroll speed is specified in pixels per second.
	 * A negative x value will scroll to the left. A positive x value will scroll to the right.
	 * A negative y value will scroll up. A positive y value will scroll down.
	 */
	function autoScroll (x:Float, y:Float):Void;
	
	/**
	 * Stops an automatically scrolling TileSprite.
	 */
	function stopScroll ():Void;
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * A user defined name given to this Game Object.
	 * This value isn't ever used internally by Phaser, it is meant as a game level property.
	 */
	var name:String;
	
	/**
	 * The components this Game Object has installed.
	 */
	var components:Dynamic;
	
	/**
	 * The z depth of this Game Object within its parent Group.
	 * No two objects in a Group can have the same z value.
	 * This value is adjusted automatically whenever the Group hierarchy changes.
	 */
	var z:Float;
	
	/**
	 * All Phaser Game Objects have an Events class which contains all of the events that are dispatched when certain things happen to this
	 * Game Object, or any of its components.
	 */
	var events:phaser.gameobjects.components.Events;
	
	/**
	 * If the Game Object is enabled for animation (such as a Phaser.Sprite) this is a reference to its AnimationManager instance.
	 * Through it you can create, play, pause and stop animations.
	 */
	var animations:phaser.animation.AnimationManager;
	
	/**
	 * The world coordinates of this Game Object in pixels.
	 * Depending on where in the display list this Game Object is placed this value can differ from position, 
	 * which contains the x/y coordinates relative to the Game Objects parent.
	 */
	var world:phaser.geom.Point;
	
	/**
	 * A debug flag designed for use with Game.enableStep.
	 */
	var debug:Bool;
	
	/**
	 * The position the Game Object was located in the previous frame.
	 */
	var previousPosition:phaser.geom.Point;
	
	/**
	 * The rotation the Game Object was in set to in the previous frame. Value is in radians.
	 */
	var previousRotation:Float;
	
	/**
	 * The render order ID is used internally by the renderer and Input Manager and should not be modified.
	 * This property is mostly used internally by the renderers, but is exposed for the use of plugins.
	 */
	var renderOrderID:Float;
	
	/**
	 * A Game Object is considered fresh if it has just been created or reset and is yet to receive a renderer transform update.
	 * This property is mostly used internally by the physics systems, but is exposed for the use of plugins.
	 */
	var fresh:Bool;
	
	/**
	 * Controls if this Game Object is processed by the core game loop.
	 * If this Game Object has a physics body it also controls if its physics body is updated or not.
	 * When exists is set to false it will remove its physics body from the physics world if it has one.
	 * It also toggles the visible property to false as well.
	 * 
	 * Setting exists to true will add its physics body back in to the physics world, if it has one.
	 * It will also set the visible property to true.
	 */
	var exists:Bool;
	
	/**
	 * The angle property is the rotation of the Game Object in <em>degrees</em> from its original orientation.
	 * 
	 * Values from 0 to 180 represent clockwise rotation; values from 0 to -180 represent counterclockwise rotation.
	 * 
	 * Values outside this range are added to or subtracted from 360 to obtain a value within the range. 
	 * For example, the statement player.angle = 450 is the same as player.angle = 90.
	 * 
	 * If you wish to work in radians instead of degrees you can use the property rotation instead. 
	 * Working in radians is slightly faster as it doesn't have to perform any calculations.
	 */
	var angle:Float;
	
	/**
    * Plays an Animation.
    * 
    * The animation should have previously been created via `animations.add`.
    * 
    * If the animation is already playing calling this again won't do anything.
    * If you need to reset an already running animation do so directly on the Animation object itself or via `AnimationManager.stop`.
    */
	function play (name:String, ?frameRate:Float, ?loop:Bool = false, ?killOnComplete:Bool = false):phaser.animation.Animation;
	
	/**
	 * A Game Object with autoCull set to true will check its bounds against the World Camera every frame.
	 * If it is not intersecting the Camera bounds at any point then it has its renderable property set to false.
	 * This keeps the Game Object alive and still processing updates, but forces it to skip the render step entirely.
	 * 
	 * This is a relatively expensive operation, especially if enabled on hundreds of Game Objects. So enable it only if you know it's required,
	 * or you have tested performance and find it acceptable.
	 */
	var autoCull:Bool;
	
	/**
	 * Checks if the Game Objects bounds intersect with the Game Camera bounds.
	 * Returns true if they do, otherwise false if fully outside of the Cameras bounds.
	 */
	var inCamera(default, null):Bool;
	
	/**
	 * The amount the Game Object is visually offset from its x coordinate.
	 * This is the same as width * anchor.x.
	 * It will only be > 0 if anchor.x is not equal to zero.
	 */
	var offsetX:Float;
	
	/**
	 * The amount the Game Object is visually offset from its y coordinate.
	 * This is the same as height * anchor.y.
	 * It will only be > 0 if anchor.y is not equal to zero.
	 */
	var offsetY:Float;
	
	/**
	 * The left coordinate of the Game Object.
	 * This is the same as x - offsetX.
	 */
	var left:Float;
	
	/**
	 * The right coordinate of the Game Object.
	 * This is the same as x + width - offsetX.
	 */
	var right:Float;
	
	/**
	 * The y coordinate of the Game Object.
	 * This is the same as y - offsetY.
	 */
	var top:Float;
	
	/**
	 * The sum of the y and height properties.
	 * This is the same as y + height - offsetY.
	 */
	var bottom:Float;
	
	/**
	 * As a Game Object runs through its destroy method this flag is set to true, 
	 * and can be checked in any sub-systems or plugins it is being destroyed from.
	 */
	var destroyPhase:Bool;
	
	/**
    * Destroys the Game Object. This removes it from its parent group, destroys the input, event and animation handlers if present
    * and nulls its reference to `game`, freeing it up for garbage collection.
    * 
    * If this Game Object has the Events component it will also dispatch the `onDestroy` event.
    */
	function destroy (?destroyChildren:Bool = true):Void;
	
	/**
	 * A Game Object that is "fixed" to the camera uses its x/y coordinates as offsets from the top left of the camera during rendering.
	 * 
	 * The values are adjusted at the rendering stage, overriding the Game Objects actual world position.
	 * 
	 * The end result is that the Game Object will appear to be 'fixed' to the camera, regardless of where in the game world
	 * the camera is viewing. This is useful if for example this Game Object is a UI item that you wish to be visible at all times 
	 * regardless where in the world the camera is.
	 * 
	 * The offsets are stored in the cameraOffset property.
	 * 
	 * Note that the cameraOffset values are in addition to any parent of this Game Object on the display list.
	 * 
	 * Be careful not to set fixedToCamera on Game Objects which are in Groups that already have fixedToCamera enabled on them.
	 */
	var fixedToCamera:Bool;
	
	/**
	 * The x/y coordinate offset applied to the top-left of the camera that this Game Object will be drawn at if fixedToCamera is true.
	 * 
	 * The values are relative to the top-left of the camera view and in addition to any parent of the Game Object on the display list.
	 */
	var cameraOffset:phaser.geom.Point;
	
	/**
	 * The Input Handler for this Game Object.
	 * 
	 * By default it is disabled. If you wish this Game Object to process input events you should enable it with: inputEnabled = true.
	 * 
	 * After you have done this, this property will be a reference to the Phaser InputHandler.
	 */
	var input:Dynamic;
	
	/**
	 * By default a Game Object won't process any input events. By setting inputEnabled to true a Phaser.InputHandler is created
	 * for this Game Object and it will then start to process click / touch events and more.
	 * 
	 * You can then access the Input Handler via this.input.
	 * 
	 * Note that Input related events are dispatched from this.events, i.e.: events.onInputDown.
	 * 
	 * If you set this property to false it will stop the Input Handler from processing any more input events.
	 */
	var inputEnabled:Bool;
	
	/**
	 * If this is set to true the Game Object checks if it is within the World bounds each frame. 
	 * 
	 * When it is no longer intersecting the world bounds it dispatches the onOutOfBounds event.
	 * 
	 * If it was <em>previously</em> out of bounds but is now intersecting the world bounds again it dispatches the onEnterBounds event.
	 * 
	 * It also optionally kills the Game Object if outOfBoundsKill is true.
	 * 
	 * When checkWorldBounds is enabled it forces the Game Object to calculate its full bounds every frame.
	 * 
	 * This is a relatively expensive operation, especially if enabled on hundreds of Game Objects. So enable it only if you know it's required,
	 * or you have tested performance and find it acceptable.
	 */
	var checkWorldBounds:Bool;
	
	/**
	 * If this and the checkWorldBounds property are both set to true then the kill method is called as soon as inWorld returns false.
	 */
	var outOfBoundsKill:Bool;
	
	/**
	 * Checks if the Game Objects bounds are within, or intersect at any point with the Game World bounds.
	 */
	var inWorld(default, null):Bool;
	
	/**
	 * Gets or sets the current frame index of the texture being used to render this Game Object.
	 * 
	 * To change the frame set frame to the index of the new frame in the sprite sheet you wish this Game Object to use,
	 * for example: player.frame = 4.
	 * 
	 * If the frame index given doesn't exist it will revert to the first frame found in the texture.
	 * 
	 * If you are using a texture atlas then you should use the frameName property instead.
	 * 
	 * If you wish to fully replace the texture being used see loadTexture.
	 */
	var frame:Int;
	
	/**
	 * Gets or sets the current frame name of the texture being used to render this Game Object.
	 * 
	 * To change the frame set frameName to the name of the new frame in the texture atlas you wish this Game Object to use, 
	 * for example: player.frameName = "idle".
	 * 
	 * If the frame name given doesn't exist it will revert to the first frame found in the texture and throw a console warning.
	 * 
	 * If you are using a sprite sheet then you should use the frame property instead.
	 * 
	 * If you wish to fully replace the texture being used see loadTexture.
	 */
	var frameName:String;
	
	/**
    * Checks to see if the bounds of this Game Object overlaps with the bounds of the given Display Object, 
    * which can be a Sprite, Image, TileSprite or anything that extends those such as Button or provides a `getBounds` method and result.
    * 
    * This check ignores the `hitArea` property if set and runs a `getBounds` comparison on both objects to determine the result.
    * 
    * Therefore it's relatively expensive to use in large quantities, i.e. with lots of Sprites at a high frequency.
    * It should be fine for low-volume testing where physics isn't required.
    *
    * @method
    * @param {Phaser.Sprite|Phaser.Image|Phaser.TileSprite|Phaser.Button|PIXI.DisplayObject} displayObject - The display object to check against.
    * @return {boolean} True if the bounds of this Game Object intersects at any point with the bounds of the given display object.
    */
	@:overload(function (displayObject:phaser.gameobjects.Sprite):Bool {})
	@:overload(function (displayObject:phaser.gameobjects.Image):Bool {})
	@:overload(function (displayObject:phaser.gameobjects.TileSprite):Bool {})
	@:overload(function (displayObject:phaser.gameobjects.Button):Bool {})
	function overlap (displayObject:phaser.pixi.display.DisplayObject):Bool;
	
	/**
	 * body is the Game Objects physics body. Once a Game Object is enabled for physics you access all associated 
	 * properties and methods via it.
	 * 
	 * By default Game Objects won't add themselves to any physics system and their body property will be null.
	 * 
	 * To enable this Game Object for physics you need to call game.physics.enable(object, system) where object is this object
	 * and system is the Physics system you are using. If none is given it defaults to Phaser.Physics.Arcade.
	 * 
	 * You can alternatively call game.physics.arcade.enable(object), or add this Game Object to a physics enabled Group.
	 * 
	 * Important: Enabling a Game Object for P2 or Ninja physics will automatically set its anchor property to 0.5, 
	 * so the physics body is centered on the Game Object.
	 * 
	 * If you need a different result then adjust or re-create the Body shape offsets manually or reset the anchor after enabling physics.
	 */
	var body:Dynamic;
	
	/**
	* Resets the Game Object.
	* 
	* This moves the Game Object to the given x/y world coordinates and sets `fresh`, `exists`, 
	* `visible` and `renderable` to true.
	*
	* If this Game Object has the LifeSpan component it will also set `alive` to true and `health` to the given value.
	*
	* If this Game Object has a Physics Body it will reset the Body.
	*/
	function reset (x:Float, y:Float, ?health:Float = 1):Dynamic;
	
	/**
	 * Enable or disable texture smoothing for this Game Object.
	 * 
	 * It only takes effect if the Game Object is using an image based texture.
	 * 
	 * Smoothing is enabled by default.
	 */
	var smoothed:Bool;
	
	/**
	 * The key of the image or texture used by this Game Object during rendering.
	 * If it is a string it's the string used to retrieve the texture from the Phaser Image Cache.
	 * It can also be an instance of a RenderTexture, BitmapData, Video or PIXI.Texture.
	 * If a Game Object is created without a key it is automatically assigned the key __default which is a 32x32 transparent PNG stored within the Cache.
	 * If a Game Object is given a key which doesn't exist in the Image Cache it is re-assigned the key __missing which is a 32x32 PNG of a green box with a line through it.
	 */
	var key:Dynamic;
	
	/**
	 * A Game Object is that is pendingDestroy is flagged to have its destroy method called on the next logic update.
	 * You can set it directly to allow you to flag an object to be destroyed on its next update.
	 * 
	 * This is extremely useful if you wish to destroy an object from within one of its own callbacks 
	 * such as with Buttons or other Input events.
	 */
	var pendingDestroy:Bool;
	
}
