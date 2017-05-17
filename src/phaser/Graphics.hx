package phaser;

import haxe.extern.EitherType;
import js.html.Event;

/**
* A Graphics object is a way to draw primitives to your game. Primitives include forms of geometry, such as Rectangles,
* Circles and Polygons. They also include lines, arcs and curves. When you initially create a Graphics object it will
* be empty. To 'draw' to it you first specify a lineStyle or fillStyle (or both), and then draw a shape. For example:
* 
* ```
* graphics.beginFill(0xff0000);
* graphics.drawCircle(50, 50, 100);
* graphics.endFill();
* ```
* 
* This will draw a circle shape to the Graphics object, with a diameter of 100, located at x: 50, y: 50.
* 
* When a Graphics object is rendered it will render differently based on if the game is running under Canvas or
* WebGL. Under Canvas it will use the HTML Canvas context drawing operations to draw the path. Under WebGL the
* graphics data is decomposed into polygons. Both of these are expensive processes, especially with complex shapes.
* 
* If your Graphics object doesn't change much (or at all) once you've drawn your shape to it, then you will help
* performance by calling `Graphics.generateTexture`. This will 'bake' the Graphics object into a Texture, and return it.
* You can then use this Texture for Sprites or other display objects. If your Graphics object updates frequently then
* you should avoid doing this, as it will constantly generate new textures, which will consume memory.
* 
* As you can tell, Graphics objects are a bit of a trade-off. While they are extremely useful, you need to be careful
* in their complexity and quantity of them in your game.
*/
@:native("Phaser.Graphics")
extern class Graphics extends pixi.Graphics {

	/**
	* A Graphics object is a way to draw primitives to your game. Primitives include forms of geometry, such as Rectangles,
	* Circles and Polygons. They also include lines, arcs and curves. When you initially create a Graphics object it will
	* be empty. To 'draw' to it you first specify a lineStyle or fillStyle (or both), and then draw a shape. For example:
	* 
	* ```
	* graphics.beginFill(0xff0000);
	* graphics.drawCircle(50, 50, 100);
	* graphics.endFill();
	* ```
	* 
	* This will draw a circle shape to the Graphics object, with a diameter of 100, located at x: 50, y: 50.
	* 
	* When a Graphics object is rendered it will render differently based on if the game is running under Canvas or
	* WebGL. Under Canvas it will use the HTML Canvas context drawing operations to draw the path. Under WebGL the
	* graphics data is decomposed into polygons. Both of these are expensive processes, especially with complex shapes.
	* 
	* If your Graphics object doesn't change much (or at all) once you've drawn your shape to it, then you will help
	* performance by calling `Graphics.generateTexture`. This will 'bake' the Graphics object into a Texture, and return it.
	* You can then use this Texture for Sprites or other display objects. If your Graphics object updates frequently then
	* you should avoid doing this, as it will constantly generate new textures, which will consume memory.
	* 
	* As you can tell, Graphics objects are a bit of a trade-off. While they are extremely useful, you need to be careful
	* in their complexity and quantity of them in your game.
	* 
	* @param game Current game instance.
	* @param x X position of the new graphics object.
	* @param y Y position of the new graphics object.
	*/
	function new(game:phaser.Game, ?x:Float, ?y:Float);
	
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
	* The center x coordinate of the Game Object.
	* This is the same as `(x - offsetX) + (width / 2)`.
	*/
	var centerX:Float;
	
	/**
	* The center y coordinate of the Game Object.
	* This is the same as `(y - offsetY) + (height / 2)`.
	*/
	var centerY:Float;
	
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
	* Controls if this Game Object is processed by the core game loop.
	* If this Game Object has a physics body it also controls if its physics body is updated or not.
	* When `exists` is set to `false` it will remove its physics body from the physics world if it has one.
	* It also toggles the `visible` property to false as well.
	* 
	* Setting `exists` to true will add its physics body back in to the physics world, if it has one.
	* It will also set the `visible` property to `true`.
	*/
	var exists:Bool;
	
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
	* The key of the image or texture used by this Game Object during rendering.
	* If it is a string it's the string used to retrieve the texture from the Phaser Image Cache.
	* It can also be an instance of a RenderTexture, BitmapData, Video or PIXI.Texture.
	* If a Game Object is created without a key it is automatically assigned the key `__default` which is a 32x32 transparent PNG stored within the Cache.
	* If a Game Object is given a key which doesn't exist in the Image Cache it is re-assigned the key `__missing` which is a 32x32 PNG of a green box with a line through it.
	*/
	var key:EitherType<String, EitherType<phaser.RenderTexture, EitherType<phaser.BitmapData, EitherType<phaser.Video, pixi.Texture>>>>;
	
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
	* Checks if the Game Objects bounds intersect with the Game Camera bounds.
	* Returns `true` if they do, otherwise `false` if fully outside of the Cameras bounds.
	*/
	var inCamera:Bool;
	
	/**
	* Checks if the Game Objects bounds are within, or intersect at any point with the Game World bounds.
	*/
	var inWorld:Bool;
	
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
	* The lifespan allows you to give a Game Object a lifespan in milliseconds.
	* 
	* Once the Game Object is 'born' you can set this to a positive value.
	* 
	* It is automatically decremented by the millisecond equivalent of `game.time.physicsElapsed` each frame.
	* When it reaches zero it will call the `kill` method.
	* 
	* Very handy for particles, bullets, collectibles, or any other short-lived entity.
	*/
	var lifespan:Float;
	
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
	var Graphics_position:phaser.Point;
	
	/**
	* The position the Game Object was located in the previous frame.
	*/
	var previousPosition:phaser.Point;
	
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
	* Destroy this Graphics instance.
	* 
	* @param destroyChildren Should every child of this object have its destroy method called? - Default: true
	*/
	function destroy(?destroyChildren:Bool):Void;
	
	/**
	* Draws a single {Phaser.Polygon} triangle from a {Phaser.Point} array
	* 
	* @param points An array of Phaser.Points that make up the three vertices of this triangle
	* @param cull Should we check if the triangle is back-facing
	*/
	function drawTriangle(points:Array<phaser.Point>, ?cull:Bool):Void;
	
	/**
	* Draws {Phaser.Polygon} triangles
	* 
	* @param vertices An array of Phaser.Points or numbers that make up the vertices of the triangles
	* @param {indices An array of numbers that describe what order to draw the vertices in - Default: null}
	* @param cull Should we check if the triangle is back-facing
	*/
	function drawTriangles(vertices:EitherType<Array<phaser.Point>, Array<Float>>, ?indices:Array<Float>, ?cull:Bool):Void;
	
	/**
	* Kills a Game Object. A killed Game Object has its `alive`, `exists` and `visible` properties all set to false.
	* 
	* It will dispatch the `onKilled` event. You can listen to `events.onKilled` for the signal.
	* 
	* Note that killing a Game Object is a way for you to quickly recycle it in an object pool,
	* it doesn't destroy the object or free it up from memory.
	* 
	* If you don't need this Game Object any more you should call `destroy` instead.
	* 
	* @return This instance.
	*/
	function kill():phaser.Graphics;
	
	/**
	* Automatically called by World
	*/
	function postUpdate():Void;
	
	/**
	* Automatically called by World.preUpdate.
	*/
	function preUpdate():Void;
	
	/**
	* Resets the Game Object.
	* 
	* This moves the Game Object to the given x/y world coordinates and sets `fresh`, `exists`,
	* `visible` and `renderable` to true.
	* 
	* If this Game Object has the LifeSpan component it will also set `alive` to true and `health` to the given value.
	* 
	* If this Game Object has a Physics Body it will reset the Body.
	* 
	* @param x The x coordinate (in world space) to position the Game Object at.
	* @param y The y coordinate (in world space) to position the Game Object at.
	* @param health The health to give the Game Object if it has the Health component. - Default: 1
	* @return This instance.
	*/
	function reset(x:Float, y:Float, ?health:Float):phaser.Graphics;
	
	/**
	* Brings a 'dead' Game Object back to life, optionally resetting its health value in the process.
	* 
	* A resurrected Game Object has its `alive`, `exists` and `visible` properties all set to true.
	* 
	* It will dispatch the `onRevived` event. Listen to `events.onRevived` for the signal.
	* 
	* @param health The health to give the Game Object. Only set if the GameObject has the Health component. - Default: 100
	* @return This instance.
	*/
	function revive(?health:Float):phaser.Graphics;
	
	/**
	* Override this method in your own custom objects to handle any update requirements.
	* It is called immediately after `preUpdate` and before `postUpdate`.
	* Remember if this Game Object has any children you should call update on those too.
	*/
	function update():Void;
	
}

