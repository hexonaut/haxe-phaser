package phaser.core;

@:native("Phaser.Camera")
extern class Camera {
	
	/**
	 * A Camera is your view into the game world. It has a position and size and renders only those objects within its field of view.
	 * The game automatically creates a single Stage sized camera on boot. Move the camera around the world with Phaser.Camera.x/y
	 */
	function new (game:phaser.core.Game, id:Float, x:Float, y:Float, width:Float, height:Float);
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * A reference to the game world.
	 */
	var world:phaser.core.World;
	
	/**
	 * Reserved for future multiple camera set-ups.
	 */
	var id:Float;
	
	/**
	 * Camera view.
	 * The view into the world we wish to render (by default the game dimensions).
	 * The x/y values are in world coordinates, not screen coordinates, the width/height is how many pixels to render.
	 * Sprites outside of this view are not rendered if Sprite.autoCull is set to true. Otherwise they are always rendered.
	 */
	var view:phaser.geom.Rectangle;
	
	/**
	 * Used by Sprites to work out Camera culling.
	 */
	var screenView:phaser.geom.Rectangle;
	
	/**
	 * The Camera is bound to this Rectangle and cannot move outside of it. By default it is enabled and set to the size of the World.
	 * The Rectangle can be located anywhere in the world and updated as often as you like. If you don't wish the Camera to be bound
	 * at all then set this to null. The values can be anything and are in World coordinates, with 0,0 being the top-left of the world.
	 */
	var bounds:phaser.geom.Rectangle;
	
	/**
	 * Moving inside this Rectangle will not cause the camera to move.
	 */
	var deadzone:phaser.geom.Rectangle;
	
	/**
	 * Whether this camera is visible or not.
	 */
	var visible:Bool;
	
	/**
	 * If a Camera has roundPx set to true it will call view.floor as part of its update loop, keeping its boundary to integer values. Set this to false to disable this from happening.
	 */
	var roundPx:Bool;
	
	/**
	 * Whether this camera is flush with the World Bounds or not.
	 */
	var atLimit:Bool;
	
	/**
	 * If the camera is tracking a Sprite, this is a reference to it, otherwise null.
	 */
	var target:phaser.gameobjects.Sprite;
	
	/**
	 * The display object to which all game objects are added. Set by World.boot
	 */
	var displayObject:phaser.pixi.display.DisplayObject;
	
	/**
	 * The scale of the display object to which all game objects are added. Set by World.boot
	 */
	var scale:phaser.geom.Point;
	
	/**
	 * The total number of Sprites with autoCull set to true that are visible by this Camera.
	 */
	var totalInView(default, null):Float;
	
	/**
	 * Internal point used to calculate target position
	 */
	var _targetPosition:phaser.geom.Point;
	
	/**
	 * Edge property.
	 */
	var _edge:Float;
	
	/**
	 * Current position of the camera in world.
	 */
	var _position:phaser.geom.Point;
	
	/**
	 * @constant
	 */
	static var FOLLOW_LOCKON:Float;
	
	/**
	 * @constant
	 */
	static var FOLLOW_PLATFORMER:Float;
	
	/**
	 * @constant
	 */
	static var FOLLOW_TOPDOWN:Float;
	
	/**
	 * @constant
	 */
	static var FOLLOW_TOPDOWN_TIGHT:Float;
	
	/**
	 * Tells this camera which sprite to follow.
	 */
	@:overload(function (target:phaser.gameobjects.Sprite, ?style:Float):Void {})
	@:overload(function (target:phaser.gameobjects.Image, ?style:Float):Void {})
	function follow (target:phaser.gameobjects.Text, ?style:Float):Void;
	
	/**
	 * Sets the Camera follow target to null, stopping it from following an object if it's doing so.
	 */
	function unfollow ():Void;
	
	/**
	 * Move the camera focus on a display object instantly.
	 */
	function focusOn (displayObject:Dynamic):Void;
	
	/**
	 * Move the camera focus on a location instantly.
	 */
	function focusOnXY (x:Float, y:Float):Void;
	
	/**
	 * Update focusing and scrolling.
	 */
	function update ():Void;
	
	/**
	 * Internal method
	 */
	function updateTarget ():Void;
	
	/**
	 * Update the Camera bounds to match the game world.
	 */
	function setBoundsToWorld ():Void;
	
	/**
	 * Method called to ensure the camera doesn't venture outside of the game world.
	 */
	function checkWorldBounds ():Void;
	
	/**
	 * A helper function to set both the X and Y properties of the camera at once
	 * without having to use game.camera.x and game.camera.y.
	 */
	function setPosition (x:Float, y:Float):Void;
	
	/**
	 * Sets the size of the view rectangle given the width and height in parameters.
	 */
	function setSize (width:Float, height:Float):Void;
	
	/**
	 * Resets the camera back to 0,0 and un-follows any object it may have been tracking.
	 */
	function reset ():Void;
	
	/**
	 * The Cameras x coordinate. This value is automatically clamped if it falls outside of the World bounds.
	 */
	var x:Float;
	
	/**
	 * The Cameras y coordinate. This value is automatically clamped if it falls outside of the World bounds.
	 */
	var y:Float;
	
	/**
	 * The Cameras position. This value is automatically clamped if it falls outside of the World bounds.
	 */
	var position:phaser.geom.Point;
	
	/**
	 * The Cameras width. By default this is the same as the Game size and should not be adjusted for now.
	 */
	var width:Float;
	
	/**
	 * The Cameras height. By default this is the same as the Game size and should not be adjusted for now.
	 */
	var height:Float;
	
}
