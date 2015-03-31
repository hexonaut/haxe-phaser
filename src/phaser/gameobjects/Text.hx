package phaser.gameobjects;

@:native("Phaser.Text")
extern class Text extends phaser.pixi.text.Text
	implements phaser.gameobjects.components.Core
	implements phaser.gameobjects.components.Angle
	implements phaser.gameobjects.components.AutoCull
	implements phaser.gameobjects.components.Bounds
	implements phaser.gameobjects.components.BringToTop
	implements phaser.gameobjects.components.Destroy
	implements phaser.gameobjects.components.FixedToCamera
	implements phaser.gameobjects.components.InputEnabled
	implements phaser.gameobjects.components.InWorld
	implements phaser.gameobjects.components.LifeSpan
	implements phaser.gameobjects.components.Overlap
	implements phaser.gameobjects.components.PhysicsBody
	implements phaser.gameobjects.components.Reset
	implements phaser.gameobjects.components.Smoothed {
	
	/**
	 * Create a new game object for displaying Text.
	 * 
	 * This uses a local hidden Canvas object and renders the type into it. It then makes a texture from this for rendering to the view.
	 * Because of this you can only display fonts that are currently loaded and available to the browser: fonts must be pre-loaded.
	 * 
	 * See {@link <a href='http://www.jordanm.co.uk/tinytype'>http://www.jordanm.co.uk/tinytype</a> this compatibility table} for the available default fonts across mobile browsers.
	 */
	function new (game:phaser.core.Game, x:Float, y:Float, text:String, style:Dynamic);
	
	/**
	 * The const type of this object.
	 */
	var type:Float;
	
	/**
	 * The const physics body type of this object.
	 */
	var physicsType(default, null):Float;
	
	/**
	 * Specify a padding value which is added to the line width and height when calculating the Text size.
	 * ALlows you to add extra spacing if Phaser is unable to accurately determine the true font dimensions.
	 */
	var padding:phaser.geom.Point;
	
	/**
	 * Internal cache var.
	 */
	var _text:String;
	
	/**
	 * The font, broken down into components, set in setStyle.
	 */
	var _fontComponents:Dynamic;
	
	/**
	 * Additional spacing (in pixels) between each line of text if multi-line.
	 */
	var _lineSpacing:Float;
	
	/**
	 * Internal character counter used by the text coloring.
	 */
	var _charCount:Float;
	
	/**
	 * An array of the color values as specified by {@link Phaser.Text#addColor addColor}.
	 */
	var colors:Array<Dynamic>;
	
	/**
	 * Automatically called by World.preUpdate.
	 */
	function preUpdate ():Void;
	
	/**
	 * Override this function to handle any special update requirements.
	 */
	function update ():Void;
	
	/**
	 * Sets a drop shadow effect on the Text. You can specify the horizontal and vertical distance of the drop shadow with the x and y parameters.
	 * The color controls the shade of the shadow (default is black) and can be either an rgba or hex value.
	 * The blur is the strength of the shadow. A value of zero means a hard shadow, a value of 10 means a very soft shadow.
	 * To remove a shadow already in place you can call this method with no parameters set.
	 */
	function setShadow (?x:Float = 0, ?y:Float = 0, ?color:String = 'rgba(0,0,0,1)', ?blur:Float = 0):Void;
	
	/**
	 * Set the style of the text by passing a single style object to it.
	 */
	@:overload(function (?style:Dynamic, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:Float, ?style:Bool, ?style:Float):Void {})
	function setStyle (?style:Dynamic, ?style:String, ?style:String, ?style:String, ?style:String, ?style:Float, ?style:String, ?style:String, ?style:String, ?style:String, ?style:Float, ?style:Bool, ?style:Float):Void;
	
	/**
	 * Renders text. This replaces the Pixi.Text.updateText function as we need a few extra bits in here.
	 */
	function updateText ():Void;
	
	/**
	 * Updates a line of text.
	 */
	function updateLine ():Void;
	
	/**
	 * Clears any previously set color stops.
	 */
	function clearColors ():Void;
	
	/**
	 * Set specific colors for certain characters within the Text.
	 * 
	 * It works by taking a color value, which is a typical HTML string such as #ff0000 or rgb(255,0,0) and a position.
	 * The position value is the index of the character in the Text string to start applying this color to.
	 * Once set the color remains in use until either another color or the end of the string is encountered.
	 * For example if the Text was Photon Storm and you did Text.addColor('#ffff00', 6) it would color in the word Storm in yellow.
	 */
	function addColor (color:String, position:Float):Void;
	
	/**
	 * Greedy wrapping algorithm that will wrap words as the line grows longer than its horizontal bounds.
	 */
	function runWordWrap (text:String):Void;
	
	/**
	 * Updates the internal style.font if it now differs according to generation from components.
	 */
	function updateFont (components:Dynamic):Void;
	
	/**
	 * Converting a short CSS-font string into the relevant components.
	 */
	function fontToComponents (font:String):Void;
	
	/**
	 * Converts individual font components (see fontToComponents) to a short CSS font string.
	 */
	function componentsToFont (components:Dynamic):Void;
	
	/**
	 * The text string to be displayed by this Text object, taking into account the style settings.
	 */
	var text:String;
	
	/**
	 * Change the font used.
	 * 
	 * This is equivalent of the font property specified to {@link Phaser.Text#setStyle setStyle}, except
	 * that unlike using setStyle this will not change any current font fill/color settings.
	 * 
	 * The CSS font string can also be individually altered with the font, fontSize, fontWeight, fontStyle, and fontVariant properties.
	 */
	var cssFont:String;
	
	/**
	 * Change the font family that the text will be rendered in, such as 'Arial'.
	 * 
	 * Multiple CSS font families and generic fallbacks can be specified as long as
	 * {@link <a href='http://www.w3.org/TR/CSS2/fonts.html#propdef-font-family'>http://www.w3.org/TR/CSS2/fonts.html#propdef-font-family</a> CSS font-family rules} are followed.
	 * 
	 * To change the entire font string use {@link Phaser.Text#cssFont cssFont} instead: eg. text.cssFont = 'bold 20pt Arial'.
	 */
	var font:String;
	
	/**
	 * The size of the font.
	 * 
	 * If the font size is specified in pixels (eg. 32 or '32px') then a number (ie. 32) representing
	 * the font size in pixels is returned; otherwise the value with CSS unit is returned as a string (eg. '12pt').
	 */
	var fontSize:Dynamic;
	
	/**
	 * The weight of the font: 'normal', 'bold', or {@link <a href='http://www.w3.org/TR/CSS2/fonts.html#propdef-font-weight'>http://www.w3.org/TR/CSS2/fonts.html#propdef-font-weight</a> a valid CSS font weight}.
	 */
	var fontWeight:String;
	
	/**
	 * The style of the font: 'normal', 'italic', 'oblique'
	 */
	var fontStyle:String;
	
	/**
	 * The variant the font: 'normal', 'small-caps'
	 */
	var fontVariant:String;
	
	/**
	 * @name Phaser.Text#fill
	 */
	var fill:Dynamic;
	
	/**
	 * @name Phaser.Text#align
	 */
	var align:String;
	
	/**
	 * @name Phaser.Text#stroke
	 */
	var stroke:String;
	
	/**
	 * @name Phaser.Text#strokeThickness
	 */
	var strokeThickness:Float;
	
	/**
	 * @name Phaser.Text#wordWrap
	 */
	var wordWrap:Bool;
	
	/**
	 * @name Phaser.Text#wordWrapWidth
	 */
	var wordWrapWidth:Float;
	
	/**
	 * @name Phaser.Text#lineSpacing
	 */
	var lineSpacing:Float;
	
	/**
	 * @name Phaser.Text#shadowOffsetX
	 */
	var shadowOffsetX:Float;
	
	/**
	 * @name Phaser.Text#shadowOffsetY
	 */
	var shadowOffsetY:Float;
	
	/**
	 * @name Phaser.Text#shadowColor
	 */
	var shadowColor:String;
	
	/**
	 * @name Phaser.Text#shadowBlur
	 */
	var shadowBlur:Float;
	
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
	* Brings this Game Object to the top of its parents display list.
	* Visually this means it will render over the top of any old child in the same Group.
	* 
	* If this Game Object hasn't been added to a custom Group then this method will bring it to the top of the Game World, 
	* because the World is the root Group from which all Game Objects descend.
	*/
	function bringToTop ():Dynamic;
	
	/**
	* Sends this Game Object to the bottom of its parents display list.
	* Visually this means it will render below all other children in the same Group.
	* 
	* If this Game Object hasn't been added to a custom Group then this method will send it to the bottom of the Game World, 
	* because the World is the root Group from which all Game Objects descend.
	*/
	function sendToBack ():Dynamic;
	
	/**
	* Moves this Game Object up one place in its parents display list.
	* This call has no effect if the Game Object is already at the top of the display list.
	* 
	* If this Game Object hasn't been added to a custom Group then this method will move it one object up within the Game World, 
	* because the World is the root Group from which all Game Objects descend.
	*/
	function moveUp ():Dynamic;
	
	/**
	* Moves this Game Object down one place in its parents display list.
	* This call has no effect if the Game Object is already at the bottom of the display list.
	* 
	* If this Game Object hasn't been added to a custom Group then this method will move it one object down within the Game World, 
	* because the World is the root Group from which all Game Objects descend.
	*/
	function moveDown ():Dynamic;
	
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
	override function destroy (?destroyChildren:Bool = true):Void;
	
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
	
}
