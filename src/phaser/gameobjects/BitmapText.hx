package phaser.gameobjects;

@:native("Phaser.BitmapText")
extern class BitmapText extends phaser.pixi.display.DisplayObjectContainer
	implements phaser.gameobjects.components.Core
	implements phaser.gameobjects.components.Angle
	implements phaser.gameobjects.components.AutoCull
	implements phaser.gameobjects.components.Bounds
	implements phaser.gameobjects.components.Destroy
	implements phaser.gameobjects.components.FixedToCamera
	implements phaser.gameobjects.components.InputEnabled
	implements phaser.gameobjects.components.InWorld
	implements phaser.gameobjects.components.LifeSpan
	implements phaser.gameobjects.components.PhysicsBody
	implements phaser.gameobjects.components.Reset {
	
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
	 * BMFont (Windows, free): <a href='http://www.angelcode.com/products/bmfont/'>http://www.angelcode.com/products/bmfont/</a>
	 * Glyph Designer (OS X, commercial): <a href='http://www.71squared.com/en/glyphdesigner'>http://www.71squared.com/en/glyphdesigner</a>
	 * Littera (Web-based, free): <a href='http://kvazars.com/littera/'>http://kvazars.com/littera/</a>
	 * 
	 * For most use cases it is recommended to use XML. If you wish to use JSON, the formatting should be equal to the result of
	 * converting a valid XML file through the popular X2JS library. An online tool for conversion can be found here: <a href='http://codebeautify.org/xmltojson'>http://codebeautify.org/xmltojson</a>
	 * 
	 * If you were using an older version of Phaser (&lt; 2.4) and using the DOMish parser hack, please remove this. It isn't required any longer.
	 */
	function new (game:phaser.core.Game, x:Float, y:Float, font:String, ?text:String = '', ?size:Float = 32, ?align:String = 'left');
	
	/**
	 * The const type of this object.
	 */
	var type(default, null):Float;
	
	/**
	 * The const physics body type of this object.
	 */
	var physicsType(default, null):Float;
	
	/**
	 * The width in pixels of the overall text area, taking into consideration multi-line text.
	 */
	var textWidth:Float;
	
	/**
	 * The height in pixels of the overall text area, taking into consideration multi-line text.
	 */
	var textHeight:Float;
	
	/**
	 * The anchor value of this BitmapText.
	 */
	var anchor:phaser.geom.Point;
	
	/**
	 * The previous anchor value.
	 */
	var _prevAnchor:phaser.geom.Point;
	
	/**
	 * Private tracker for the letter sprite pool.
	 */
	var _glyphs:Array<Dynamic>;
	
	/**
	 * Internal cache var.
	 */
	var _maxWidth:Float;
	
	/**
	 * Internal cache var.
	 */
	var _text:String;
	
	/**
	 * Internal cache var.
	 */
	var _data:String;
	
	/**
	 * Internal cache var.
	 */
	var _font:String;
	
	/**
	 * Internal cache var.
	 */
	var _fontSize:Float;
	
	/**
	 * Internal cache var.
	 */
	var _align:String;
	
	/**
	 * Internal cache var.
	 */
	var _tint:Float;
	
	/**
	 * The dirty state of this object.
	 */
	var dirty:Bool;
	
	/**
	 * Automatically called by World.preUpdate.
	 */
	function postUpdate ():Void;
	
	/**
	 * The text to be displayed by this BitmapText object.
	 * 
	 * It's faster to use BitmapText.text = string, but this is kept for backwards compatibility.
	 */
	function setText (text:String):Void;
	
	/**
	 * Given the input text this will scan the characters until either a newline is encountered, 
	 * or the line exceeds maxWidth, taking into account kerning, character widths and scaling.
	 */
	function scanLine (data:Dynamic, scale:Dynamic, text:String):Dynamic;
	
	/**
	 * Given a text string this will scan each character in the string to ensure it exists
	 * in the BitmapText font data. If it doesn't the character is removed, or replaced with the replace argument.
	 * 
	 * If no font data has been loaded at all this returns an empty string, as nothing can be rendered.
	 */
	function cleanText (text:String, ?replace:String = ''):String;
	
	/**
	 * Renders text and updates it when needed.
	 */
	function updateText ():Void;
	
	/**
	 * If a BitmapText changes from having a large number of characters to having very few characters it will cause lots of
	 * Sprites to be retained in the BitmapText._glyphs array. Although they are not attached to the display list they
	 * still take up memory while sat in the glyphs pool waiting to be re-used in the future.
	 * 
	 * If you know that the BitmapText will not grow any larger then you can purge out the excess glyphs from the pool 
	 * by calling this method.
	 * 
	 * Calling this doesn't prevent you from increasing the length of the text again in the future.
	 */
	function purgeGlyphs ():Int;
	
	/**
	 * Updates the transform of this object.
	 */
	function updateTransform ():Void;
	
	/**
	 * @name Phaser.BitmapText#align
	 */
	var align:String;
	
	/**
	 * @name Phaser.BitmapText#tint
	 */
	var tint:Float;
	
	/**
	 * @name Phaser.BitmapText#font
	 */
	var font:String;
	
	/**
	 * @name Phaser.BitmapText#fontSize
	 */
	var fontSize:Float;
	
	/**
	 * @name Phaser.BitmapText#text
	 */
	var text:String;
	
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
	 * A useful flag to control if the Game Object is alive or dead.
	 * 
	 * This is set automatically by the Health components damage method should the object run out of health.
	 * Or you can toggle it via your game code.
	 * 
	 * This property is mostly just provided to be used by your game - it doesn't effect rendering or logic updates.
	 * However you can use Group.getFirstAlive in conjunction with this property for fast object pooling and recycling.
	 */
	var alive:Bool;
	
	/**
	 * The lifespan allows you to give a Game Object a lifespan in milliseconds.
	 * 
	 * Once the Game Object is 'born' you can set this to a positive value.
	 * 
	 * It is automatically decremented by the millisecond equivalent of game.time.physicsElapsed each frame.
	 * When it reaches zero it will call the kill method.
	 * 
	 * Very handy for particles, bullets, collectibles, or any other short-lived entity.
	 */
	var lifespan:Float;
	
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
	 * The maximum display width of this BitmapText in pixels.
	 * 
	 * If BitmapText.text is longer than maxWidth then the lines will be automatically wrapped 
	 * based on the last whitespace character found in the line.
	 * 
	 * If no whitespace was found then no wrapping will take place and consequently the maxWidth value will not be honored.
	 * 
	 * Disable maxWidth by setting the value to 0.
	 */
	var maxWidth:Float;
	
	/**
	 * Enable or disable texture smoothing for this BitmapText.
	 * 
	 * The smoothing is applied to the BaseTexture of this font, which all letters of the text reference.
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
