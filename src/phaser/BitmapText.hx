package phaser;

import haxe.extern.EitherType;
import js.html.Event;

/**
* BitmapText objects work by taking a texture file and an XML or JSON file that describes the font structure.
* It then generates a new Sprite object for each letter of the text, proportionally spaced out and aligned to
* match the font structure.
* 
* BitmapText objects are less flexible than Text objects, in that they have less features such as shadows, fills and the ability
* to use Web Fonts, however you trade this flexibility for rendering speed. You can also create visually compelling BitmapTexts by
* processing the font texture in an image editor, applying fills and any other effects required.
* 
* To create multi-line text insert \r, \n or \r\n escape codes into the text string.
* 
* If you are having performance issues due to the volume of sprites being rendered, and do not require the text to be constantly
* updating, you can use BitmapText.generateTexture to create a static texture from this BitmapText.
* 
* To create a BitmapText data files you can use:
* 
* BMFont (Windows, free): http://www.angelcode.com/products/bmfont/
* Glyph Designer (OS X, commercial): http://www.71squared.com/en/glyphdesigner
* Littera (Web-based, free): http://kvazars.com/littera/
* 
* For most use cases it is recommended to use XML. If you wish to use JSON, the formatting should be equal to the result of
* converting a valid XML file through the popular X2JS library. An online tool for conversion can be found here: http://codebeautify.org/xmltojson
* 
* If you were using an older version of Phaser (< 2.4) and using the DOMish parser hack, please remove this. It isn't required any longer.
*/
@:native("Phaser.BitmapText")
extern class BitmapText extends pixi.DisplayObjectContainer {

	/**
	* BitmapText objects work by taking a texture file and an XML or JSON file that describes the font structure.
	* It then generates a new Sprite object for each letter of the text, proportionally spaced out and aligned to
	* match the font structure.
	* 
	* BitmapText objects are less flexible than Text objects, in that they have less features such as shadows, fills and the ability
	* to use Web Fonts, however you trade this flexibility for rendering speed. You can also create visually compelling BitmapTexts by
	* processing the font texture in an image editor, applying fills and any other effects required.
	* 
	* To create multi-line text insert \r, \n or \r\n escape codes into the text string.
	* 
	* If you are having performance issues due to the volume of sprites being rendered, and do not require the text to be constantly
	* updating, you can use BitmapText.generateTexture to create a static texture from this BitmapText.
	* 
	* To create a BitmapText data files you can use:
	* 
	* BMFont (Windows, free): http://www.angelcode.com/products/bmfont/
	* Glyph Designer (OS X, commercial): http://www.71squared.com/en/glyphdesigner
	* Littera (Web-based, free): http://kvazars.com/littera/
	* 
	* For most use cases it is recommended to use XML. If you wish to use JSON, the formatting should be equal to the result of
	* converting a valid XML file through the popular X2JS library. An online tool for conversion can be found here: http://codebeautify.org/xmltojson
	* 
	* If you were using an older version of Phaser (< 2.4) and using the DOMish parser hack, please remove this. It isn't required any longer.
	* 
	* @param game A reference to the currently running game.
	* @param x X coordinate to display the BitmapText object at.
	* @param y Y coordinate to display the BitmapText object at.
	* @param font The key of the BitmapText as stored in Phaser.Cache.
	* @param text The text that will be rendered. This can also be set later via BitmapText.text. - Default: ''
	* @param size The size the font will be rendered at in pixels. - Default: 32
	* @param align The alignment of multi-line text. Has no effect if there is only one line of text. - Default: 'left'
	*/
	function new(game:phaser.Game, x:Float, y:Float, font:String, ?text:String, ?size:Float, ?align:String);
	
	/**
	* Alignment for multi-line text ('left', 'center' or 'right'), does not affect single lines of text.
	*/
	var align:String;
	
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
	* The anchor value of this BitmapText.
	*/
	var anchor:phaser.Point;
	
	/**
	* If the Game Object is enabled for animation (such as a Phaser.Sprite) this is a reference to its AnimationManager instance.
	* Through it you can create, play, pause and stop animations.
	*/
	var animations:phaser.AnimationManager;
	
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
	* An empty Object that belongs to this Game Object.
	* This value isn't ever used internally by Phaser, but may be used by your own code, or
	* by Phaser Plugins, to store data that needs to be associated with the Game Object,
	* without polluting the Game Object directly.
	* Default: {}
	*/
	var data:Dynamic;
	
	/**
	* As a Game Object runs through its destroy method this flag is set to true,
	* and can be checked in any sub-systems or plugins it is being destroyed from.
	*/
	var destroyPhase:Bool;
	
	/**
	* A debug flag designed for use with `Game.enableStep`.
	*/
	var debug:Bool;
	
	/**
	* The dirty state of this object.
	*/
	var dirty:Bool;
	
	/**
	* All Phaser Game Objects have an Events class which contains all of the events that are dispatched when certain things happen to this
	* Game Object, or any of its components.
	*/
	var events:phaser.Events;
	
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
	* The font the text will be rendered in, i.e. 'Arial'. Must be loaded in the browser before use.
	*/
	var font:String;
	
	/**
	* The size of the font in pixels.
	*/
	var fontSize:Float;
	
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
	* The components this Game Object has installed.
	*/
	var components:Dynamic;
	
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
	* The maximum display width of this BitmapText in pixels.
	* 
	* If BitmapText.text is longer than maxWidth then the lines will be automatically wrapped
	* based on the last whitespace character found in the line.
	* 
	* If no whitespace was found then no wrapping will take place and consequently the maxWidth value will not be honored.
	* 
	* Disable maxWidth by setting the value to 0. The maximum width of this BitmapText in pixels.
	*/
	var maxWidth:Float;
	
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
	* The position the Game Object was located in the previous frame.
	*/
	var previousPosition:phaser.Point;
	
	/**
	* The rotation the Game Object was in set to in the previous frame. Value is in radians.
	*/
	var previousRotation:Float;
	
	/**
	* The coordinates, in pixels, of this DisplayObject, relative to its parent container.
	* 
	* The value of this property does not reflect any positioning happening further up the display list.
	* To obtain that value please see the `worldPosition` property.
	*/
	@:native("position")
	var BitmapText_position:phaser.Point;
	
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
	* The text to be displayed by this BitmapText object.
	*/
	var text:String;
	
	/**
	* Enable or disable texture smoothing for this BitmapText.
	* 
	* The smoothing is applied to the BaseTexture of this font, which all letters of the text reference.
	* 
	* Smoothing is enabled by default.
	*/
	var smoothed:Bool;
	
	/**
	* The width in pixels of the overall text area, taking into consideration multi-line text.
	*/
	var textWidth:Float;
	
	/**
	* The height in pixels of the overall text area, taking into consideration multi-line text.
	*/
	var textHeight:Float;
	
	/**
	* The tint applied to the BitmapText. This is a hex value. Set to white to disable (0xFFFFFF)
	*/
	var tint:Float;
	
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
	* Destroys the Game Object. This removes it from its parent group, destroys the input, event and animation handlers if present
	* and nulls its reference to `game`, freeing it up for garbage collection.
	* 
	* If this Game Object has the Events component it will also dispatch the `onDestroy` event.
	* 
	* You can optionally also destroy the BaseTexture this Game Object is using. Be careful if you've
	* more than one Game Object sharing the same BaseTexture.
	* 
	* @param destroyChildren Should every child of this object have its destroy method called as well? - Default: true
	* @param destroyTexture Destroy the BaseTexture this Game Object is using? Note that if another Game Object is sharing the same BaseTexture it will invalidate it.
	*/
	function destroy(?destroyChildren:Bool):Void;
	
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
	function kill():Void;
	
	/**
	* Automatically called by World.preUpdate.
	*/
	function postUpdate():Void;
	
	/**
	* Automatically called by World.preUpdate.
	* 
	* @return True if the BitmapText was rendered, otherwise false.
	*/
	function preUpdate():Void;
	
	/**
	* If a BitmapText changes from having a large number of characters to having very few characters it will cause lots of
	* Sprites to be retained in the BitmapText._glyphs array. Although they are not attached to the display list they
	* still take up memory while sat in the glyphs pool waiting to be re-used in the future.
	* 
	* If you know that the BitmapText will not grow any larger then you can purge out the excess glyphs from the pool
	* by calling this method.
	* 
	* Calling this doesn't prevent you from increasing the length of the text again in the future.
	* 
	* @return The amount of glyphs removed from the pool.
	*/
	function purgeGlyphs():Float;
	
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
	function reset(x:Float, y:Float, ?health:Float):phaser.BitmapText;
	
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
	function revive(?health:Float):phaser.BitmapText;
	
	/**
	* Given the input text this will scan the characters until either a newline is encountered,
	* or the line exceeds maxWidth, taking into account kerning, character widths and scaling.
	* 
	* @param data A reference to the font object in the Phaser.Cache.
	* @param scale The scale of the font in relation to the texture.
	* @param text The text to parse.
	* @return An object containing the parsed characters, total pixel width and x offsets.
	*/
	function scanLine(data:Dynamic, scale:Float, text:String):{width:Float, text:String, end:Bool, chars:Array<String>};
	
	/**
	* The text to be displayed by this BitmapText object.
	* 
	* It's faster to use `BitmapText.text = string`, but this is kept for backwards compatibility.
	* 
	* @param text The text to be displayed by this BitmapText object.
	*/
	function setText(text:String):Void;
	
	/**
	* Override this method in your own custom objects to handle any update requirements.
	* It is called immediately after `preUpdate` and before `postUpdate`.
	* Remember if this Game Object has any children you should call update on those too.
	*/
	function update():Void;
	
	/**
	* Renders text and updates it when needed.
	*/
	function updateText():Void;
	
	/**
	* Updates the transform of this object.
	*/
	@:native("updateTransform")
	function BitmapText_updateTransform():Void;
	
}

