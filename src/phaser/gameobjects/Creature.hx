package phaser.gameobjects;

@:native("Phaser.Creature")
extern class Creature extends phaser.pixi.display.DisplayObjectContainer
	implements phaser.gameobjects.components.Core
	implements phaser.gameobjects.components.Angle
	implements phaser.gameobjects.components.AutoCull
	implements phaser.gameobjects.components.BringToTop
	implements phaser.gameobjects.components.Destroy
	implements phaser.gameobjects.components.FixedToCamera
	implements phaser.gameobjects.components.LifeSpan
	implements phaser.gameobjects.components.Reset {
	
	/**
	 * Creature is a custom Game Object used in conjunction with the Creature Runtime libraries by Kestrel Moon Studios.
	 * 
	 * It allows you to display animated Game Objects that were created with the <a href="http://www.kestrelmoon.com/creature/">Creature Automated Animation Tool</a>.
	 * 
	 * Note 1: You can only use Phaser.Creature objects in WebGL enabled games. They do not work in Canvas mode games.
	 * 
	 * Note 2: You must use a build of Phaser that includes the CreatureMeshBone.js runtime and gl-matrix.js, or have them
	 * loaded before your Phaser game boots.
	 * 
	 * See the Phaser custom build process for more details.
	 * 
	 * By default the Creature runtimes are NOT included in any pre-configured version of Phaser.
	 * 
	 * So you'll need to do grunt custom to create a build that includes them.
	 */
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:String, mesh:String, ?animation:String = 'default'):Void {})
	function new (game:phaser.core.Game, x:Float, y:Float, key:phaser.pixi.textures.Texture, mesh:String, ?animation:String = 'default');
	
	/**
	 * The const type of this object.
	 */
	var type(default, null):Float;
	
	/**
	 * The Creature instance.
	 */
	var _creature:Dynamic;
	
	/**
	 * The CreatureAnimation instance.
	 */
	var animation:Dynamic;
	
	/**
	 * The CreatureManager instance for this object.
	 */
	var manager:Dynamic;
	
	/**
	 * How quickly the animation advances.
	 */
	var timeDelta:Float;
	
	/**
	 * The texture the animation is using.
	 */
	var texture:phaser.pixi.textures.Texture;
	
	/**
	 * The minimum bounds point.
	 */
	var creatureBoundsMin:phaser.geom.Point;
	
	/**
	 * The maximum bounds point.
	 */
	var creatureBoundsMax:phaser.geom.Point;
	
	/**
	 * The vertices data.
	 */
	var vertices:Dynamic;
	
	/**
	 * The UV data.
	 */
	var uvs:Dynamic;
	
	/**
	 * @property {PIXI.Uint16Array} indices
	 */
	var indices:Dynamic;
	
	/**
	 * The vertices colors
	 */
	var colors:Dynamic;
	
	/**
	 * Automatically called by World.preUpdate.
	 */
	function preUpdate ():Void;
	
	/**
	 * Sets the Animation this Creature object will play, as defined in the mesh data.
	 */
	function setAnimation (key:String):Void;
	
	/**
	 * Plays the currently set animation.
	 */
	function play (?loop:Bool = false):Void;
	
	/**
	 * Stops the currently playing animation.
	 */
	function stop ():Void;
	
	/**
	 * @name Phaser.Creature#isPlaying
	 */
	var isPlaying:Bool;
	
	/**
	 * @name Phaser.Creature#loop
	 */
	var loop:Bool;
	
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
