package phaser;

/**
* A Camera is your view into the game world. It has a position and size and renders only those objects within its field of view.
* The game automatically creates a single Stage sized camera on boot. Move the camera around the world with Phaser.Camera.x/y
*/
@:native("Phaser.Camera")
extern class Camera {

	/**
	* A Camera is your view into the game world. It has a position and size and renders only those objects within its field of view.
	* The game automatically creates a single Stage sized camera on boot. Move the camera around the world with Phaser.Camera.x/y
	* 
	* @param game Game reference to the currently running game.
	* @param id Not being used at the moment, will be when Phaser supports multiple camera
	* @param x Position of the camera on the X axis
	* @param y Position of the camera on the Y axis
	* @param width The width of the view rectangle
	* @param height The height of the view rectangle
	*/
	function new(game:phaser.Game, id:Float, x:Float, y:Float, width:Float, height:Float);
	
	static var FOLLOW_LOCKON:Float;
	
	static var FOLLOW_PLATFORMER:Float;
	
	static var FOLLOW_TOPDOWN:Float;
	
	static var FOLLOW_TOPDOWN_TIGHT:Float;
	
	static var SHAKE_BOTH:Float;
	
	static var SHAKE_HORIZONTAL:Float;
	
	static var SHAKE_VERTICAL:Float;
	
	static var ENABLE_FX:Float;
	
	/**
	* Whether this camera is flush with the World Bounds or not.
	*/
	var atLimit:{x:Bool, y:Bool};
	
	/**
	* The Camera is bound to this Rectangle and cannot move outside of it. By default it is enabled and set to the size of the World.
	* The Rectangle can be located anywhere in the world and updated as often as you like. If you don't wish the Camera to be bound
	* at all then set this to null. The values can be anything and are in World coordinates, with 0,0 being the top-left of the world. The Rectangle in which the Camera is bounded. Set to null to allow for movement anywhere.
	*/
	var bounds:phaser.Rectangle;
	
	/**
	* Moving inside this Rectangle will not cause the camera to move.
	*/
	var deadzone:phaser.Rectangle;
	
	/**
	* The display object to which all game objects are added. Set by World.boot.
	*/
	var displayObject:pixi.DisplayObject;
	
	/**
	* Reserved for future multiple camera set-ups.
	*/
	var id:Float;
	
	/**
	* The Graphics object used to handle camera fx such as fade and flash.
	*/
	var fx:phaser.Graphics;
	
	/**
	* A reference to the currently running Game.
	*/
	var game:phaser.Game;
	
	/**
	* The Cameras height. By default this is the same as the Game size and should not be adjusted for now. Gets or sets the cameras height.
	*/
	var height:Float;
	
	/**
	* The linear interpolation value to use when following a target.
	* The default values of 1 means the camera will instantly snap to the target coordinates.
	* A lower value, such as 0.1 means the camera will more slowly track the target, giving
	* a smooth transition. You can set the horizontal and vertical values independently, and also
	* adjust this value in real-time during your game.
	*/
	var lerp:phaser.Point;
	
	/**
	* The Cameras position. This value is automatically clamped if it falls outside of the World bounds. Gets or sets the cameras xy position using Phaser.Point object.
	*/
	var position:phaser.Point;
	
	/**
	* If a Camera has roundPx set to `true` it will call `view.floor` as part of its update loop, keeping its boundary to integer values. Set this to `false` to disable this from happening.
	* Default: true
	*/
	var roundPx:Bool;
	
	/**
	* The scale of the display object to which all game objects are added. Set by World.boot.
	*/
	var scale:phaser.Point;
	
	/**
	* The Cameras shake intensity. Gets or sets the cameras shake intensity.
	*/
	var shakeIntensity:Float;
	
	/**
	* This signal is dispatched when the camera fade effect completes.
	* When the fade effect completes you will be left with the screen black (or whatever
	* color you faded to). In order to reset this call `Camera.resetFX`. This is called
	* automatically when you change State.
	*/
	var onFadeComplete:phaser.Signal;
	
	/**
	* This signal is dispatched when the camera flash effect completes.
	*/
	var onFlashComplete:phaser.Signal;
	
	/**
	* This signal is dispatched when the camera shake effect completes.
	*/
	var onShakeComplete:phaser.Signal;
	
	/**
	* If the camera is tracking a Sprite, this is a reference to it, otherwise null.
	*/
	var target:phaser.Sprite;
	
	/**
	* The total number of Sprites with `autoCull` set to `true` that are visible by this Camera.
	*/
	var totalInView:Float;
	
	/**
	* Camera view.
	* The view into the world we wish to render (by default the game dimensions).
	* The x/y values are in world coordinates, not screen coordinates, the width/height is how many pixels to render.
	* Sprites outside of this view are not rendered if Sprite.autoCull is set to `true`. Otherwise they are always rendered.
	*/
	var view:phaser.Rectangle;
	
	/**
	* Whether this camera is visible or not.
	* Default: true
	*/
	var visible:Bool;
	
	/**
	* The Cameras width. By default this is the same as the Game size and should not be adjusted for now. Gets or sets the cameras width.
	*/
	var width:Float;
	
	/**
	* A reference to the game world.
	*/
	var world:phaser.World;
	
	/**
	* The Cameras x coordinate. This value is automatically clamped if it falls outside of the World bounds. Gets or sets the cameras x position.
	*/
	var x:Float;
	
	/**
	* The Cameras y coordinate. This value is automatically clamped if it falls outside of the World bounds. Gets or sets the cameras y position.
	*/
	var y:Float;
	
	/**
	* Method called to ensure the camera doesn't venture outside of the game world.
	* Called automatically by Camera.update.
	*/
	function checkBounds():Void;
	
	/**
	* This creates a camera fade effect. It works by filling the game with the
	* color specified, over the duration given, ending with a solid fill.
	* 
	* You can use this for things such as transitioning to a new scene.
	* 
	* The game will be left 'filled' at the end of this effect, likely obscuring
	* everything. In order to reset it you can call `Camera.resetFX` and it will clear the
	* fade. Or you can call `Camera.flash` with the same color as the fade, and it will
	* reverse the process, bringing the game back into view again.
	* 
	* When the effect ends the signal Camera.onFadeComplete is dispatched.
	* 
	* @param color The color the game will fade to. I.e. 0x000000 for black, 0xff0000 for red, etc. - Default: 0x000000
	* @param duration The duration of the fade in milliseconds. - Default: 500
	* @param force If a camera flash or fade effect is already running and force is true it will replace the previous effect, resetting the duration.
	* @param alpha The alpha value of the color applied to the fade effect. - Default: 1
	* @return True if the effect was started, otherwise false.
	*/
	function fade(?color:Float, ?duration:Float, ?force:Bool, ?alpha:Float):Bool;
	
	/**
	* This creates a camera flash effect. It works by filling the game with the solid fill
	* color specified, and then fading it away to alpha 0 over the duration given.
	* 
	* You can use this for things such as hit feedback effects.
	* 
	* When the effect ends the signal Camera.onFlashComplete is dispatched.
	* 
	* @param color The color of the flash effect. I.e. 0xffffff for white, 0xff0000 for red, etc. - Default: 0xffffff
	* @param duration The duration of the flash effect in milliseconds. - Default: 500
	* @param force If a camera flash or fade effect is already running and force is true it will replace the previous effect, resetting the duration.
	* @param alpha The alpha value of the color applied to the flash effect. - Default: 1
	* @return True if the effect was started, otherwise false.
	*/
	function flash(?color:Float, ?duration:Float, ?force:Bool, ?alpha:Float):Bool;
	
	/**
	* Move the camera focus on a display object instantly.
	* 
	* @param displayObject The display object to focus the camera on. Must have visible x/y properties.
	*/
	function focusOn(displayObject:pixi.DisplayObject):Void;
	
	/**
	* Move the camera focus on a location instantly.
	* 
	* @param x X position.
	* @param y Y position.
	*/
	function focusOnXY(x:Float, y:Float):Void;
	
	/**
	* Tell the camera which sprite to follow.
	* 
	* You can set the follow type and a linear interpolation value.
	* Use low lerp values (such as 0.1) to automatically smooth the camera motion.
	* 
	* If you find you're getting a slight "jitter" effect when following a Sprite it's probably to do with sub-pixel rendering of the Sprite position.
	* This can be disabled by setting `game.renderer.renderSession.roundPixels = true` to force full pixel rendering.
	* 
	* @param target The object you want the camera to track. Set to null to not follow anything.
	* @param style Leverage one of the existing "deadzone" presets. If you use a custom deadzone, ignore this parameter and manually specify the deadzone after calling follow().
	* @param lerpX A value between 0 and 1. This value specifies the amount of linear interpolation to use when horizontally tracking the target. The closer the value to 1, the faster the camera will track. - Default: 1
	* @param lerpY A value between 0 and 1. This value specifies the amount of linear interpolation to use when vertically tracking the target. The closer the value to 1, the faster the camera will track. - Default: 1
	*/
	function follow(target:phaser.Sprite, ?style:Float, ?lerpX:Float, ?lerpY:Float):Void;
	
	/**
	* Resets the camera back to 0,0 and un-follows any object it may have been tracking.
	* Also immediately resets any camera effects that may have been running such as
	* shake, flash or fade.
	*/
	function reset():Void;
	
	/**
	* Resets any active FX, such as a fade or flash and immediately clears it.
	* Useful to calling after a fade in order to remove the fade from the Stage.
	*/
	function resetFX():Void;
	
	/**
	* Update the Camera bounds to match the game world.
	*/
	function setBoundsToWorld():Void;
	
	/**
	* A helper function to set both the X and Y properties of the camera at once
	* without having to use game.camera.x and game.camera.y.
	* 
	* @param x X position.
	* @param y Y position.
	*/
	function setPosition(x:Float, y:Float):Void;
	
	/**
	* Sets the size of the view rectangle given the width and height in parameters.
	* 
	* @param width The desired width.
	* @param height The desired height.
	*/
	function setSize(width:Float, height:Float):Void;
	
	/**
	* This creates a camera shake effect. It works by applying a random amount of additional
	* spacing on the x and y axis each frame. You can control the intensity and duration
	* of the effect, and if it should effect both axis or just one.
	* 
	* When the shake effect ends the signal Camera.onShakeComplete is dispatched.
	* 
	* @param intensity The intensity of the camera shake. Given as a percentage of the camera size representing the maximum distance that the camera can move while shaking. - Default: 0.05
	* @param duration The duration of the shake effect in milliseconds. - Default: 500
	* @param force If a camera shake effect is already running and force is true it will replace the previous effect, resetting the duration. - Default: true
	* @param direction The directions in which the camera can shake. Either Phaser.Camera.SHAKE_BOTH, Phaser.Camera.SHAKE_HORIZONTAL or Phaser.Camera.SHAKE_VERTICAL. - Default: Phaser.Camera.SHAKE_BOTH
	* @param shakeBounds Is the effect allowed to shake the camera beyond its bounds (if set?). - Default: true
	* @return True if the shake effect was started, otherwise false.
	*/
	function shake(?intensity:Float, ?duration:Float, ?force:Bool, ?direction:Float, ?shakeBounds:Bool):Bool;
	
	/**
	* Sets the Camera follow target to null, stopping it from following an object if it's doing so.
	*/
	function unfollow():Void;
	
	/**
	* The camera update loop. This is called automatically by the core game loop.
	*/
	function update():Void;
	
}

