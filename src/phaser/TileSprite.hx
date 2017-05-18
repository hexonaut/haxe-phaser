package phaser;

import haxe.extern.EitherType;
import js.html.Event;

/**
* A TileSprite is a Sprite that has a repeating texture. The texture can be scrolled and scaled independently of the TileSprite itself.
* Textures will automatically wrap and are designed so that you can create game backdrops using seamless textures as a source.
* 
* TileSprites have no input handler or physics bodies by default, both need enabling in the same way as for normal Sprites.
* 
* You shouldn't ever create a TileSprite any larger than your actual screen size. If you want to create a large repeating background
* that scrolls across the whole map of your game, then you create a TileSprite that fits the screen size and then use the `tilePosition`
* property to scroll the texture as the player moves. If you create a TileSprite that is thousands of pixels in size then it will
* consume huge amounts of memory and cause performance issues. Remember: use `tilePosition` to scroll your texture and `tileScale` to
* adjust the scale of the texture - don't resize the sprite itself or make it larger than it needs.
* 
* An important note about texture dimensions:
* 
* When running under Canvas a TileSprite can use any texture size without issue. When running under WebGL the texture should ideally be
* a power of two in size (i.e. 4, 8, 16, 32, 64, 128, 256, 512, etc pixels width by height). If the texture isn't a power of two
* it will be rendered to a blank canvas that is the correct size, which means you may have 'blank' areas appearing to the right and
* bottom of your frame. To avoid this ensure your textures are perfect powers of two.
* 
* TileSprites support animations in the same way that Sprites do. You add and play animations using the AnimationManager. However
* if your game is running under WebGL please note that each frame of the animation must be a power of two in size, or it will receive
* additional padding to enforce it to be so.
*/
@:native("Phaser.TileSprite")
extern class TileSprite extends pixi.TilingSprite {

	/**
	* A TileSprite is a Sprite that has a repeating texture. The texture can be scrolled and scaled independently of the TileSprite itself.
	* Textures will automatically wrap and are designed so that you can create game backdrops using seamless textures as a source.
	* 
	* TileSprites have no input handler or physics bodies by default, both need enabling in the same way as for normal Sprites.
	* 
	* You shouldn't ever create a TileSprite any larger than your actual screen size. If you want to create a large repeating background
	* that scrolls across the whole map of your game, then you create a TileSprite that fits the screen size and then use the `tilePosition`
	* property to scroll the texture as the player moves. If you create a TileSprite that is thousands of pixels in size then it will
	* consume huge amounts of memory and cause performance issues. Remember: use `tilePosition` to scroll your texture and `tileScale` to
	* adjust the scale of the texture - don't resize the sprite itself or make it larger than it needs.
	* 
	* An important note about texture dimensions:
	* 
	* When running under Canvas a TileSprite can use any texture size without issue. When running under WebGL the texture should ideally be
	* a power of two in size (i.e. 4, 8, 16, 32, 64, 128, 256, 512, etc pixels width by height). If the texture isn't a power of two
	* it will be rendered to a blank canvas that is the correct size, which means you may have 'blank' areas appearing to the right and
	* bottom of your frame. To avoid this ensure your textures are perfect powers of two.
	* 
	* TileSprites support animations in the same way that Sprites do. You add and play animations using the AnimationManager. However
	* if your game is running under WebGL please note that each frame of the animation must be a power of two in size, or it will receive
	* additional padding to enforce it to be so.
	* 
	* @param game A reference to the currently running game.
	* @param x The x coordinate (in world space) to position the TileSprite at.
	* @param y The y coordinate (in world space) to position the TileSprite at.
	* @param width The width of the TileSprite. - Default: 256
	* @param height The height of the TileSprite. - Default: 256
	* @param key This is the image or texture used by the TileSprite during rendering. It can be a string which is a reference to the Phaser Image Cache entry, or an instance of a PIXI.Texture or BitmapData.
	* @param frame If this TileSprite is using part of a sprite sheet or texture atlas you can specify the exact frame to use by giving a string or numeric index.
	*/
	function new(game:phaser.Game, x:Float, y:Float, width:Float, height:Float, ?key:EitherType<String, EitherType<phaser.RenderTexture, EitherType<phaser.BitmapData, pixi.Texture>>>, ?frame:EitherType<String, Float>);
	
	/**
	* A useful flag to control if the Game Object is alive or dead.
	* 
	* This is set automatically by the Health components `damage` method should the object run out of health.
	* Or you can toggle it via your game code.
	* 
	* This property is mostly just provided to be used by your game - it doesn't effect rendering or logic updates.
	* However you can use `Group.getFirstAlive` in conjunction with this property for fast object pooling and recycling.
	* Default: true
	*/
	var alive:Bool;
	
	/**
	* The angle property is the rotation of the Game Object in *degrees* from its original orientation.
	* 
	* Values from 0 to 180 represent clockwise rotation; values from 0 to -180 represent counterclockwise rotation.
	* 
	* Values outside this range are added to or subtracted from 360 to obtain a value within the range.
	* For example, the statement player.angle = 450 is the same as player.angle = 90.
	* 
	* If you wish to work in radians instead of degrees you can use the property `rotation` instead.
	* Working in radians is slightly faster as it doesn't have to perform any calculations.
	*/
	var angle:Float;
	
	/**
	* If the Game Object is enabled for animation (such as a Phaser.Sprite) this is a reference to its AnimationManager instance.
	* Through it you can create, play, pause and stop animations.
	*/
	var animations:phaser.AnimationManager;
	
	/**
	* A Game Object with `autoCull` set to true will check its bounds against the World Camera every frame.
	* If it is not intersecting the Camera bounds at any point then it has its `renderable` property set to `false`.
	* This keeps the Game Object alive and still processing updates, but forces it to skip the render step entirely.
	* 
	* This is a relatively expensive operation, especially if enabled on hundreds of Game Objects. So enable it only if you know it's required,
	* or you have tested performance and find it acceptable.
	*/
	var autoCull:Bool;
	
	/**
	* `body` is the Game Objects physics body. Once a Game Object is enabled for physics you access all associated
	* properties and methods via it.
	* 
	* By default Game Objects won't add themselves to any physics system and their `body` property will be `null`.
	* 
	* To enable this Game Object for physics you need to call `game.physics.enable(object, system)` where `object` is this object
	* and `system` is the Physics system you are using. If none is given it defaults to `Phaser.Physics.Arcade`.
	* 
	* You can alternatively call `game.physics.arcade.enable(object)`, or add this Game Object to a physics enabled Group.
	* 
	* Important: Enabling a Game Object for P2 or Ninja physics will automatically set its `anchor` property to 0.5,
	* so the physics body is centered on the Game Object.
	* 
	* If you need a different result then adjust or re-create the Body shape offsets manually or reset the anchor after enabling physics.
	*/
	var body:EitherType<phaser.physics.arcade.Body, EitherType<phaser.physics.p2.Body, EitherType<phaser.physics.ninja.Body, Dynamic>>>;
	
	/**
	* The sum of the y and height properties.
	* This is the same as `y + height - offsetY`.
	*/
	var bottom:Float;
	
	/**
	* The x/y coordinate offset applied to the top-left of the camera that this Game Object will be drawn at if `fixedToCamera` is true.
	* 
	* The values are relative to the top-left of the camera view and in addition to any parent of the Game Object on the display list.
	*/
	var cameraOffset:phaser.Point;
	
	/**
	* If this is set to `true` the Game Object checks if it is within the World bounds each frame.
	* 
	* When it is no longer intersecting the world bounds it dispatches the `onOutOfBounds` event.
	* 
	* If it was *previously* out of bounds but is now intersecting the world bounds again it dispatches the `onEnterBounds` event.
	* 
	* It also optionally kills the Game Object if `outOfBoundsKill` is `true`.
	* 
	* When `checkWorldBounds` is enabled it forces the Game Object to calculate its full bounds every frame.
	* 
	* This is a relatively expensive operation, especially if enabled on hundreds of Game Objects. So enable it only if you know it's required,
	* or you have tested performance and find it acceptable.
	*/
	var checkWorldBounds:Bool;
	
	/**
	* The components this Game Object has installed.
	*/
	var components:Dynamic;
	
	/**
	* Does this texture require a custom render call? (as set by BitmapData, Video, etc)
	*/
	var customRender:Bool;
	
	/**
	* An empty Object that belongs to this Game Object.
	* This value isn't ever used internally by Phaser, but may be used by your own code, or
	* by Phaser Plugins, to store data that needs to be associated with the Game Object,
	* without polluting the Game Object directly.
	* Default: {}
	*/
	var data:Dynamic;
	
	/**
	* A debug flag designed for use with `Game.enableStep`.
	*/
	var debug:Bool;
	
	/**
	* As a Game Object runs through its destroy method this flag is set to true,
	* and can be checked in any sub-systems or plugins it is being destroyed from.
	*/
	var destroyPhase:Bool;
	
	/**
	* All Phaser Game Objects have an Events class which contains all of the events that are dispatched when certain things happen to this
	* Game Object, or any of its components.
	*/
	var events:phaser.Events;
	
	/**
	* A Game Object that is "fixed" to the camera is rendered at a given x/y offsets from the top left of the camera. The offsets
	* are stored in the `cameraOffset` property, which is initialized with the current object coordinates.
	* 
	* The values are adjusted at the rendering stage, overriding the Game Objects actual world position.
	* 
	* The end result is that the Game Object will appear to be 'fixed' to the camera, regardless of where in the game world
	* the camera is viewing. This is useful if for example this Game Object is a UI item that you wish to be visible at all times
	* regardless where in the world the camera is.
	* 
	* Note that the `cameraOffset` values are in addition to any parent of this Game Object on the display list.
	* 
	* Be careful not to set `fixedToCamera` on Game Objects which are in Groups that already have `fixedToCamera` enabled on them.
	*/
	var fixedToCamera:Bool;
	
	/**
	* Gets or sets the current frame index of the texture being used to render this Game Object.
	* 
	* To change the frame set `frame` to the index of the new frame in the sprite sheet you wish this Game Object to use,
	* for example: `player.frame = 4`.
	* 
	* If the frame index given doesn't exist it will revert to the first frame found in the texture.
	* 
	* If you are using a texture atlas then you should use the `frameName` property instead.
	* 
	* If you wish to fully replace the texture being used see `loadTexture`.
	*/
	var frame:EitherType<String, Float>;
	
	/**
	* Gets or sets the current frame name of the texture being used to render this Game Object.
	* 
	* To change the frame set `frameName` to the name of the new frame in the texture atlas you wish this Game Object to use,
	* for example: `player.frameName = "idle"`.
	* 
	* If the frame name given doesn't exist it will revert to the first frame found in the texture and throw a console warning.
	* 
	* If you are using a sprite sheet then you should use the `frame` property instead.
	* 
	* If you wish to fully replace the texture being used see `loadTexture`.
	*/
	var frameName:String;
	
	/**
	* A Game Object is considered `fresh` if it has just been created or reset and is yet to receive a renderer transform update.
	* This property is mostly used internally by the physics systems, but is exposed for the use of plugins.
	*/
	var fresh:Bool;
	
	/**
	* A reference to the currently running Game.
	*/
	var game:phaser.Game;
	
	/**
	* Checks if the Game Objects bounds intersect with the Game Camera bounds.
	* Returns `true` if they do, otherwise `false` if fully outside of the Cameras bounds.
	*/
	var inCamera:Bool;
	
	/**
	* The Input Handler for this Game Object.
	* 
	* By default it is disabled. If you wish this Game Object to process input events you should enable it with: `inputEnabled = true`.
	* 
	* After you have done this, this property will be a reference to the Phaser InputHandler.
	*/
	var input:phaser.InputHandler;
	
	/**
	* By default a Game Object won't process any input events. By setting `inputEnabled` to true a Phaser.InputHandler is created
	* for this Game Object and it will then start to process click / touch events and more.
	* 
	* You can then access the Input Handler via `this.input`.
	* 
	* Note that Input related events are dispatched from `this.events`, i.e.: `events.onInputDown`.
	* 
	* If you set this property to false it will stop the Input Handler from processing any more input events.
	* 
	* If you want to _temporarily_ disable input for a Game Object, then it's better to set
	* `input.enabled = false`, as it won't reset any of the Input Handlers internal properties.
	* You can then toggle this back on as needed.
	*/
	var inputEnabled:Bool;
	
	/**
	* Checks if the Game Objects bounds are within, or intersect at any point with the Game World bounds.
	*/
	var inWorld:Bool;
	
	/**
	* The key of the image or texture used by this Game Object during rendering.
	* If it is a string it's the string used to retrieve the texture from the Phaser Image Cache.
	* It can also be an instance of a RenderTexture, BitmapData, Video or PIXI.Texture.
	* If a Game Object is created without a key it is automatically assigned the key `__default` which is a 32x32 transparent PNG stored within the Cache.
	* If a Game Object is given a key which doesn't exist in the Image Cache it is re-assigned the key `__missing` which is a 32x32 PNG of a green box with a line through it.
	*/
	var key:EitherType<String, EitherType<phaser.RenderTexture, EitherType<phaser.BitmapData, EitherType<phaser.Video, pixi.Texture>>>>;
	
	/**
	* The left coordinate of the Game Object.
	* This is the same as `x - offsetX`.
	*/
	var left:Float;
	
	/**
	* A user defined name given to this Game Object.
	* This value isn't ever used internally by Phaser, it is meant as a game level property.
	*/
	var name:String;
	
	/**
	* The amount the Game Object is visually offset from its x coordinate.
	* This is the same as `width * anchor.x`.
	* It will only be > 0 if anchor.x is not equal to zero.
	*/
	var offsetX:Float;
	
	/**
	* The amount the Game Object is visually offset from its y coordinate.
	* This is the same as `height * anchor.y`.
	* It will only be > 0 if anchor.y is not equal to zero.
	*/
	var offsetY:Float;
	
	/**
	* If this and the `checkWorldBounds` property are both set to `true` then the `kill` method is called as soon as `inWorld` returns false.
	*/
	var outOfBoundsKill:Bool;
	
	/**
	* A Game Object is that is pendingDestroy is flagged to have its destroy method called on the next logic update.
	* You can set it directly to allow you to flag an object to be destroyed on its next update.
	* 
	* This is extremely useful if you wish to destroy an object from within one of its own callbacks
	* such as with Buttons or other Input events.
	*/
	var pendingDestroy:Bool;
	
	/**
	* The const physics body type of this object.
	*/
	var physicsType:Float;
	
	/**
	* The coordinates, in pixels, of this DisplayObject, relative to its parent container.
	* 
	* The value of this property does not reflect any positioning happening further up the display list.
	* To obtain that value please see the `worldPosition` property.
	*/
	@:native("position")
	var TileSprite_position:phaser.Point;
	
	/**
	* Enable or disable texture smoothing for this Game Object.
	* 
	* It only takes effect if the Game Object is using an image based texture.
	* 
	* Smoothing is enabled by default.
	*/
	var smoothed:Bool;
	
	/**
	* The position the Game Object was located in the previous frame.
	*/
	var previousPosition:phaser.Point;
	
	var previousRoation:Float;
	
	/**
	* The right coordinate of the Game Object.
	* This is the same as `x + width - offsetX`.
	*/
	var right:Float;
	
	/**
	* The y coordinate of the Game Object.
	* This is the same as `y - offsetY`.
	*/
	var top:Float;
	
	/**
	* The render order ID is used internally by the renderer and Input Manager and should not be modified.
	* This property is mostly used internally by the renderers, but is exposed for the use of plugins.
	*/
	var renderOrderID:Float;
	
	/**
	* The const type of this object.
	*/
	var type:Float;
	
	/**
	* The world coordinates of this Game Object in pixels.
	* Depending on where in the display list this Game Object is placed this value can differ from `position`,
	* which contains the x/y coordinates relative to the Game Objects parent.
	*/
	var world:phaser.Point;
	
	/**
	* The z depth of this Game Object within its parent Group.
	* No two objects in a Group can have the same z value.
	* This value is adjusted automatically whenever the Group hierarchy changes.
	* If you wish to re-order the layering of a Game Object then see methods like Group.moveUp or Group.bringToTop.
	*/
	var z:Float;
	
	/**
	* Aligns this Game Object within another Game Object, or Rectangle, known as the
	* 'container', to one of 9 possible positions.
	* 
	* The container must be a Game Object, or Phaser.Rectangle object. This can include properties
	* such as `World.bounds` or `Camera.view`, for aligning Game Objects within the world
	* and camera bounds. Or it can include other Sprites, Images, Text objects, BitmapText,
	* TileSprites or Buttons.
	* 
	* Please note that aligning a Sprite to another Game Object does **not** make it a child of
	* the container. It simply modifies its position coordinates so it aligns with it.
	* 
	* The position constants you can use are:
	* 
	* `Phaser.TOP_LEFT`, `Phaser.TOP_CENTER`, `Phaser.TOP_RIGHT`, `Phaser.LEFT_CENTER`,
	* `Phaser.CENTER`, `Phaser.RIGHT_CENTER`, `Phaser.BOTTOM_LEFT`,
	* `Phaser.BOTTOM_CENTER` and `Phaser.BOTTOM_RIGHT`.
	* 
	* The Game Objects are placed in such a way that their _bounds_ align with the
	* container, taking into consideration rotation, scale and the anchor property.
	* This allows you to neatly align Game Objects, irrespective of their position value.
	* 
	* The optional `offsetX` and `offsetY` arguments allow you to apply extra spacing to the final
	* aligned position of the Game Object. For example:
	* 
	* `sprite.alignIn(background, Phaser.BOTTOM_RIGHT, -20, -20)`
	* 
	* Would align the `sprite` to the bottom-right, but moved 20 pixels in from the corner.
	* Think of the offsets as applying an adjustment to the containers bounds before the alignment takes place.
	* So providing a negative offset will 'shrink' the container bounds by that amount, and providing a positive
	* one expands it.
	* 
	* @param container The Game Object or Rectangle with which to align this Game Object to. Can also include properties such as `World.bounds` or `Camera.view`.
	* @param position The position constant. One of `Phaser.TOP_LEFT` (default), `Phaser.TOP_CENTER`, `Phaser.TOP_RIGHT`, `Phaser.LEFT_CENTER`, `Phaser.CENTER`, `Phaser.RIGHT_CENTER`, `Phaser.BOTTOM_LEFT`, `Phaser.BOTTOM_CENTER` or `Phaser.BOTTOM_RIGHT`.
	* @param offsetX A horizontal adjustment of the Containers bounds, applied to the aligned position of the Game Object. Use a negative value to shrink the bounds, positive to increase it.
	* @param offsetY A vertical adjustment of the Containers bounds, applied to the aligned position of the Game Object. Use a negative value to shrink the bounds, positive to increase it.
	* @return This Game Object.
	*/
	function alignIn(container:EitherType<phaser.Rectangle, EitherType<phaser.Sprite, EitherType<phaser.Image, EitherType<phaser.Text, EitherType<phaser.BitmapText, EitherType<phaser.Button, EitherType<phaser.Graphics, phaser.TileSprite>>>>>>>, ?position:Float, ?offsetX:Float, ?offsetY:Float):Dynamic;
	
	/**
	* Aligns this Game Object to the side of another Game Object, or Rectangle, known as the
	* 'parent', in one of 11 possible positions.
	* 
	* The parent must be a Game Object, or Phaser.Rectangle object. This can include properties
	* such as `World.bounds` or `Camera.view`, for aligning Game Objects within the world
	* and camera bounds. Or it can include other Sprites, Images, Text objects, BitmapText,
	* TileSprites or Buttons.
	* 
	* Please note that aligning a Sprite to another Game Object does **not** make it a child of
	* the parent. It simply modifies its position coordinates so it aligns with it.
	* 
	* The position constants you can use are:
	* 
	* `Phaser.TOP_LEFT` (default), `Phaser.TOP_CENTER`, `Phaser.TOP_RIGHT`, `Phaser.LEFT_TOP`,
	* `Phaser.LEFT_CENTER`, `Phaser.LEFT_BOTTOM`, `Phaser.RIGHT_TOP`, `Phaser.RIGHT_CENTER`,
	* `Phaser.RIGHT_BOTTOM`, `Phaser.BOTTOM_LEFT`, `Phaser.BOTTOM_CENTER`
	* and `Phaser.BOTTOM_RIGHT`.
	* 
	* The Game Objects are placed in such a way that their _bounds_ align with the
	* parent, taking into consideration rotation, scale and the anchor property.
	* This allows you to neatly align Game Objects, irrespective of their position value.
	* 
	* The optional `offsetX` and `offsetY` arguments allow you to apply extra spacing to the final
	* aligned position of the Game Object. For example:
	* 
	* `sprite.alignTo(background, Phaser.BOTTOM_RIGHT, -20, -20)`
	* 
	* Would align the `sprite` to the bottom-right, but moved 20 pixels in from the corner.
	* Think of the offsets as applying an adjustment to the parents bounds before the alignment takes place.
	* So providing a negative offset will 'shrink' the parent bounds by that amount, and providing a positive
	* one expands it.
	* 
	* @param parent The Game Object or Rectangle with which to align this Game Object to. Can also include properties such as `World.bounds` or `Camera.view`.
	* @param position The position constant. One of `Phaser.TOP_LEFT`, `Phaser.TOP_CENTER`, `Phaser.TOP_RIGHT`, `Phaser.LEFT_TOP`, `Phaser.LEFT_CENTER`, `Phaser.LEFT_BOTTOM`, `Phaser.RIGHT_TOP`, `Phaser.RIGHT_CENTER`, `Phaser.RIGHT_BOTTOM`, `Phaser.BOTTOM_LEFT`, `Phaser.BOTTOM_CENTER` or `Phaser.BOTTOM_RIGHT`.
	* @param offsetX A horizontal adjustment of the Containers bounds, applied to the aligned position of the Game Object. Use a negative value to shrink the bounds, positive to increase it.
	* @param offsetY A vertical adjustment of the Containers bounds, applied to the aligned position of the Game Object. Use a negative value to shrink the bounds, positive to increase it.
	* @return This Game Object.
	*/
	function alignTo(container:EitherType<phaser.Rectangle, EitherType<phaser.Sprite, EitherType<phaser.Image, EitherType<phaser.Text, EitherType<phaser.BitmapText, EitherType<phaser.Button, EitherType<phaser.Graphics, phaser.TileSprite>>>>>>>, ?position:Float, ?offsetX:Float, ?offsetY:Float):Dynamic;
	
	/**
	* Sets this TileSprite to automatically scroll in the given direction until stopped via TileSprite.stopScroll().
	* The scroll speed is specified in pixels per second.
	* A negative x value will scroll to the left. A positive x value will scroll to the right.
	* A negative y value will scroll up. A positive y value will scroll down.
	* 
	* @param x Horizontal scroll speed in pixels per second.
	* @param y Vertical scroll speed in pixels per second.
	* @return This instance.
	*/
	function autoScroll(x:Float, y:Float):Void;
	
	/**
	* Destroys the TileSprite. This removes it from its parent group, destroys the event and animation handlers if present
	* and nulls its reference to game, freeing it up for garbage collection.
	* 
	* @param destroyChildren Should every child of this object have its destroy method called? - Default: true
	*/
	@:native("destroy")
	function TileSprite_destroy(?destroyChildren:Bool):Void;
	
	/**
	* Changes the base texture the Game Object is using. The old texture is removed and the new one is referenced or fetched from the Cache.
	* 
	* If your Game Object is using a frame from a texture atlas and you just wish to change to another frame, then see the `frame` or `frameName` properties instead.
	* 
	* You should only use `loadTexture` if you want to replace the base texture entirely.
	* 
	* Calling this method causes a WebGL texture update, so use sparingly or in low-intensity portions of your game, or if you know the new texture is already on the GPU.
	* 
	* You can use the new const `Phaser.PENDING_ATLAS` as the texture key for any sprite.
	* Doing this then sets the key to be the `frame` argument (the frame is set to zero).
	* 
	* This allows you to create sprites using `load.image` during development, and then change them
	* to use a Texture Atlas later in development by simply searching your code for 'PENDING_ATLAS'
	* and swapping it to be the key of the atlas data.
	* 
	* Note: You cannot use a RenderTexture as a texture for a TileSprite.
	* 
	* @param key This is the image or texture used by the Sprite during rendering. It can be a string which is a reference to the Cache Image entry, or an instance of a RenderTexture, BitmapData, Video or PIXI.Texture.
	* @param frame If this Sprite is using part of a sprite sheet or texture atlas you can specify the exact frame to use by giving a string or numeric index.
	* @param stopAnimation If an animation is already playing on this Sprite you can choose to stop it or let it carry on playing. - Default: true
	*/
	function loadTexture(key:EitherType<String, EitherType<phaser.RenderTexture, EitherType<phaser.BitmapData, EitherType<phaser.Video, pixi.Texture>>>>, ?frame:EitherType<String, Float>, ?stopAnimation:Bool):Void;
	
	/**
	* Plays an Animation.
	* 
	* The animation should have previously been created via `animations.add`.
	* 
	* If the animation is already playing calling this again won't do anything.
	* If you need to reset an already running animation do so directly on the Animation object itself or via `AnimationManager.stop`.
	* 
	* @param name The name of the animation to be played, e.g. "fire", "walk", "jump". Must have been previously created via 'AnimationManager.add'.
	* @param frameRate The framerate to play the animation at. The speed is given in frames per second. If not provided the previously set frameRate of the Animation is used.
	* @param loop Should the animation be looped after playback. If not provided the previously set loop value of the Animation is used.
	* @param killOnComplete If set to true when the animation completes (only happens if loop=false) the parent Sprite will be killed.
	* @return A reference to playing Animation.
	*/
	function play(name:String, ?frameRate:Float, ?loop:Bool, ?killOnComplete:Bool):phaser.Animation;
	
	/**
	* Internal method called by the World postUpdate cycle.
	*/
	function postUpdate():Void;
	
	/**
	* Automatically called by World.preUpdate.
	*/
	function preUpdate():Void;
	
	/**
	* Checks to see if the bounds of this Game Object overlaps with the bounds of the given Display Object,
	* which can be a Sprite, Image, TileSprite or anything that extends those such as Button or provides a `getBounds` method and result.
	* 
	* This check ignores the `hitArea` property if set and runs a `getBounds` comparison on both objects to determine the result.
	* 
	* Therefore it's relatively expensive to use in large quantities, i.e. with lots of Sprites at a high frequency.
	* It should be fine for low-volume testing where physics isn't required.
	* 
	* @param displayObject The display object to check against.
	* @return True if the bounds of this Game Object intersects at any point with the bounds of the given display object.
	*/
	function overlap(displayObject:EitherType<phaser.Sprite, EitherType<phaser.Image, EitherType<phaser.TileSprite, EitherType<phaser.Button, pixi.DisplayObject>>>>):Bool;
	
	/**
	* Resets the TileSprite. This places the TileSprite at the given x/y world coordinates, resets the tilePosition and then
	* sets alive, exists, visible and renderable all to true. Also resets the outOfBounds state.
	* If the TileSprite has a physics body that too is reset.
	* 
	* @param x The x coordinate (in world space) to position the Sprite at.
	* @param y The y coordinate (in world space) to position the Sprite at.
	* @return This instance.
	*/
	function reset(x:Float, y:Float, ?health:Float):phaser.TileSprite;
	
	/**
	* Resizes the Frame dimensions that the Game Object uses for rendering.
	* 
	* You shouldn't normally need to ever call this, but in the case of special texture types such as Video or BitmapData
	* it can be useful to adjust the dimensions directly in this way.
	* 
	* @param parent The parent texture object that caused the resize, i.e. a Phaser.Video object.
	* @param width The new width of the texture.
	* @param height The new height of the texture.
	*/
	function resizeFrame(parent:Dynamic, width:Float, height:Float):Void;
	
	/**
	* Resets the texture frame dimensions that the Game Object uses for rendering.
	*/
	function resetFrame():Void;
	
	/**
	* Sets the texture frame the Game Object uses for rendering.
	* 
	* This is primarily an internal method used by `loadTexture`, but is exposed for the use of plugins and custom classes.
	* 
	* @param frame The Frame to be used by the texture.
	*/
	function setFrame(frame:phaser.Frame):Void;
	
	/**
	* Stops an automatically scrolling TileSprite.
	* 
	* @return This instance.
	*/
	function stopScroll():Void;
	
	/**
	* Override this method in your own custom objects to handle any update requirements.
	* It is called immediately after `preUpdate` and before `postUpdate`.
	* Remember if this Game Object has any children you should call update on those too.
	*/
	function update():Void;
	
}

