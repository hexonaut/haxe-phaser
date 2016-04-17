package phaser.input;

@:native("Phaser.InputHandler")
extern class InputHandler {
	
	/**
	 * The Input Handler is bound to a specific Sprite and is responsible for managing all Input events on that Sprite.
	 */
	function new (sprite:phaser.gameobjects.Sprite);
	
	/**
	 * The Sprite object to which this Input Handler belongs.
	 */
	var sprite:phaser.gameobjects.Sprite;
	
	/**
	 * A reference to the currently running game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * If enabled the Input Handler will process input requests and monitor pointer activity.
	 */
	var enabled:Bool;
	
	/**
	 * A disposable flag used by the Pointer class when performing priority checks.
	 */
	var checked:Bool;
	
	/**
	 * The priorityID is used to determine which game objects should get priority when input events occur. For example if you have
	 * several Sprites that overlap, by default the one at the top of the display list is given priority for input events. You can
	 * stop this from happening by controlling the priorityID value. The higher the value, the more important they are considered to the Input events.
	 */
	var priorityID:Float;
	
	/**
	 * On a desktop browser you can set the 'hand' cursor to appear when moving over the Sprite.
	 */
	var useHandCursor:Bool;
	
	/**
	 * Did this Sprite trigger the hand cursor?
	 */
	var _setHandCursor:Bool;
	
	/**
	 * true if the Sprite is being currently dragged.
	 */
	var isDragged:Bool;
	
	/**
	 * Controls if the Sprite is allowed to be dragged horizontally.
	 */
	var allowHorizontalDrag:Bool;
	
	/**
	 * Controls if the Sprite is allowed to be dragged vertically.
	 */
	var allowVerticalDrag:Bool;
	
	/**
	 * If true when this Sprite is clicked or dragged it will automatically be bought to the top of the Group it is within.
	 */
	var bringToTop:Bool;
	
	/**
	 * A Point object that contains by how far the Sprite snap is offset.
	 */
	var snapOffset:phaser.geom.Point;
	
	/**
	 * When the Sprite is dragged this controls if the center of the Sprite will snap to the pointer on drag or not.
	 */
	var snapOnDrag:Bool;
	
	/**
	 * When the Sprite is dragged this controls if the Sprite will be snapped on release.
	 */
	var snapOnRelease:Bool;
	
	/**
	 * When a Sprite has snapping enabled this holds the width of the snap grid.
	 */
	var snapX:Float;
	
	/**
	 * When a Sprite has snapping enabled this holds the height of the snap grid.
	 */
	var snapY:Float;
	
	/**
	 * This defines the top-left X coordinate of the snap grid.
	 */
	var snapOffsetX:Float;
	
	/**
	 * This defines the top-left Y coordinate of the snap grid..
	 */
	var snapOffsetY:Float;
	
	/**
	 * Set to true to use pixel perfect hit detection when checking if the pointer is over this Sprite.
	 * The x/y coordinates of the pointer are tested against the image in combination with the InputHandler.pixelPerfectAlpha value.
	 * This feature only works for display objects with image based textures such as Sprites. It won't work on BitmapText or Rope.
	 * Warning: This is expensive, especially on mobile (where it's not even needed!) so only enable if required. Also see the less-expensive InputHandler.pixelPerfectClick.
	 */
	var pixelPerfectOver:Bool;
	
	/**
	 * Set to true to use pixel perfect hit detection when checking if the pointer is over this Sprite when it's clicked or touched.
	 * The x/y coordinates of the pointer are tested against the image in combination with the InputHandler.pixelPerfectAlpha value.
	 * This feature only works for display objects with image based textures such as Sprites. It won't work on BitmapText or Rope.
	 * Warning: This is expensive so only enable if you really need it.
	 */
	var pixelPerfectClick:Bool;
	
	/**
	 * The alpha tolerance threshold. If the alpha value of the pixel matches or is above this value, it's considered a hit.
	 */
	var pixelPerfectAlpha:Float;
	
	/**
	 * Is this sprite allowed to be dragged by the mouse? true = yes, false = no
	 */
	var draggable:Bool;
	
	/**
	 * A region of the game world within which the sprite is restricted during drag.
	 */
	var boundsRect:phaser.geom.Rectangle;
	
	/**
	 * A Sprite the bounds of which this sprite is restricted during drag.
	 */
	var boundsSprite:phaser.gameobjects.Sprite;
	
	/**
	 * EXPERIMENTAL: Please do not use this property unless you know what it does. Likely to change in the future.
	 */
	var scaleLayer:Bool;
	
	/**
	 * The offset from the Sprites position that dragging takes place from.
	 */
	var dragOffset:phaser.geom.Point;
	
	/**
	 * Is the Sprite dragged from its center, or the point at which the Pointer was pressed down upon it?
	 */
	var dragFromCenter:Bool;
	
	/**
	 * The Point from which the most recent drag started from. Useful if you need to return an object to its starting position.
	 */
	var dragStartPoint:phaser.geom.Point;
	
	/**
	 * If the sprite is set to snap while dragging this holds the point of the most recent 'snap' event.
	 */
	var snapPoint:phaser.geom.Point;
	
	/**
	 * Internal cache var.
	 */
	var _dragPoint:phaser.geom.Point;
	
	/**
	 * Internal cache var.
	 */
	var _dragPhase:Bool;
	
	/**
	 * Internal cache var.
	 */
	var _wasEnabled:Bool;
	
	/**
	 * Internal cache var.
	 */
	var _tempPoint:phaser.geom.Point;
	
	/**
	 * Internal cache var.
	 */
	var _pointerData:Array<Dynamic>;
	
	/**
	 * Starts the Input Handler running. This is called automatically when you enable input on a Sprite, or can be called directly if you need to set a specific priority.
	 */
	function start (priority:Float, useHandCursor:Bool):phaser.gameobjects.Sprite;
	
	/**
	 * Handles when the parent Sprite is added to a new Group.
	 */
	function addedToGroup ():Void;
	
	/**
	 * Handles when the parent Sprite is removed from a Group.
	 */
	function removedFromGroup ():Void;
	
	/**
	 * Resets the Input Handler and disables it.
	 */
	function reset ():Void;
	
	/**
	 * Stops the Input Handler from running.
	 */
	function stop ():Void;
	
	/**
	 * Clean up memory.
	 */
	function destroy ():Void;
	
	/**
	 * Checks if the object this InputHandler is bound to is valid for consideration in the Pointer move event.
	 * This is called by Phaser.Pointer and shouldn't typically be called directly.
	 */
	function validForInput (highestID:Float, highestRenderID:Float, ?includePixelPerfect:Bool = true):Bool;
	
	/**
	 * Is this object using pixel perfect checking?
	 */
	function isPixelPerfect ():Bool;
	
	/**
	 * The x coordinate of the Input pointer, relative to the top-left of the parent Sprite.
	 * This value is only set when the pointer is over this Sprite.
	 */
	function pointerX (?pointerId:Int = 0):Float;
	
	/**
	 * The y coordinate of the Input pointer, relative to the top-left of the parent Sprite
	 * This value is only set when the pointer is over this Sprite.
	 */
	function pointerY (?pointerId:Int = 0):Float;
	
	/**
	 * If the Pointer is down this returns true.
	 * This <em>only</em> checks if the Pointer is down, not if it's down over any specific Sprite.
	 */
	function pointerDown (?pointerId:Int = 0):Bool;
	
	/**
	 * If the Pointer is up this returns true.
	 * This <em>only</em> checks if the Pointer is up, not if it's up over any specific Sprite.
	 */
	function pointerUp (?pointerId:Int = 0):Bool;
	
	/**
	 * A timestamp representing when the Pointer first touched the touchscreen.
	 */
	function pointerTimeDown (pointerId:Int):Float;
	
	/**
	 * A timestamp representing when the Pointer left the touchscreen.
	 */
	function pointerTimeUp (?pointerId:Int = 0):Float;
	
	/**
	 * Is the Pointer over this Sprite?
	 */
	function pointerOver (pointerId:Int):Bool;
	
	/**
	 * Is the Pointer outside of this Sprite?
	 */
	function pointerOut (pointerId:Int):Bool;
	
	/**
	 * A timestamp representing when the Pointer first touched the touchscreen.
	 */
	function pointerTimeOver (?pointerId:Int = 0):Float;
	
	/**
	 * A timestamp representing when the Pointer left the touchscreen.
	 */
	function pointerTimeOut (?pointerId:Int = 0):Float;
	
	/**
	 * Is this sprite being dragged by the mouse or not?
	 */
	function pointerDragged (?pointerId:Int = 0):Bool;
	
	/**
	 * Checks if the given pointer is both down and over the Sprite this InputHandler belongs to.
	 * Use the fastTest flag is to quickly check just the bounding hit area even if InputHandler.pixelPerfectOver is true.
	 */
	function checkPointerDown (pointer:Dynamic, ?fastTest:Bool = false):Bool;
	
	/**
	 * Checks if the given pointer is over the Sprite this InputHandler belongs to.
	 * Use the fastTest flag is to quickly check just the bounding hit area even if InputHandler.pixelPerfectOver is true.
	 */
	function checkPointerOver (pointer:Dynamic, ?fastTest:Bool = false):Bool;
	
	/**
	 * Runs a pixel perfect check against the given x/y coordinates of the Sprite this InputHandler is bound to.
	 * It compares the alpha value of the pixel and if >= InputHandler.pixelPerfectAlpha it returns true.
	 */
	function checkPixel (x:Float, y:Float, ?pointer:Dynamic):Bool;
	
	/**
	 * Update.
	 */
	function update (pointer:Dynamic):Void;
	
	/**
	 * Internal method handling the pointer over event.
	 */
	function _pointerOverHandler (pointer:Dynamic):Void;
	
	/**
	 * Internal method handling the pointer out event.
	 */
	function _pointerOutHandler (pointer:Dynamic):Void;
	
	/**
	 * Internal method handling the touched / clicked event.
	 */
	function _touchedHandler (pointer:Dynamic):Void;
	
	/**
	 * Internal method handling the pointer released event.
	 */
	function _releasedHandler (pointer:Dynamic):Void;
	
	/**
	 * Updates the Pointer drag on this Sprite.
	 */
	function updateDrag (pointer:Dynamic):Bool;
	
	/**
	 * Returns true if the pointer has entered the Sprite within the specified delay time (defaults to 500ms, half a second)
	 */
	function justOver (?pointerId:Int = 0, ?delay:Float):Bool;
	
	/**
	 * Returns true if the pointer has left the Sprite within the specified delay time (defaults to 500ms, half a second)
	 */
	function justOut (?pointerId:Int = 0, ?delay:Float):Bool;
	
	/**
	 * Returns true if the pointer has touched or clicked on the Sprite within the specified delay time (defaults to 500ms, half a second)
	 */
	function justPressed (?pointerId:Int = 0, ?delay:Float):Bool;
	
	/**
	 * Returns true if the pointer was touching this Sprite, but has been released within the specified delay time (defaults to 500ms, half a second)
	 */
	function justReleased (?pointerId:Int = 0, ?delay:Float):Bool;
	
	/**
	 * If the pointer is currently over this Sprite this returns how long it has been there for in milliseconds.
	 */
	function overDuration (?pointerId:Int = 0):Float;
	
	/**
	 * If the pointer is currently over this Sprite this returns how long it has been there for in milliseconds.
	 */
	function downDuration (?pointerId:Int = 0):Float;
	
	/**
	 * Allow this Sprite to be dragged by any valid pointer.
	 * 
	 * When the drag begins the Sprite.events.onDragStart event will be dispatched.
	 * 
	 * When the drag completes by way of the user letting go of the pointer that was dragging the sprite, the Sprite.events.onDragStop event is dispatched.
	 * 
	 * For the duration of the drag the Sprite.events.onDragUpdate event is dispatched. This event is only dispatched when the pointer actually
	 * changes position and moves. The event sends 5 parameters: sprite, pointer, dragX, dragY and snapPoint.
	 */
	function enableDrag (?lockCenter:Bool = false, ?bringToTop:Bool = false, ?pixelPerfect:Bool = false, ?alphaThreshold:Bool = 255, ?boundsRect:phaser.geom.Rectangle, ?boundsSprite:phaser.gameobjects.Sprite):Void;
	
	/**
	 * Stops this sprite from being able to be dragged.
	 * If it is currently the target of an active drag it will be stopped immediately; also disables any set callbacks.
	 */
	function disableDrag ():Void;
	
	/**
	 * Called by Pointer when drag starts on this Sprite. Should not usually be called directly.
	 */
	function startDrag (pointer:Dynamic):Void;
	
	/**
	 * Warning: EXPERIMENTAL
	 */
	function globalToLocalX (x:Float):Void;
	
	/**
	 * Warning: EXPERIMENTAL
	 */
	function globalToLocalY (y:Float):Void;
	
	/**
	 * Called by Pointer when drag is stopped on this Sprite. Should not usually be called directly.
	 */
	function stopDrag (pointer:Dynamic):Void;
	
	/**
	 * Restricts this sprite to drag movement only on the given axis. Note: If both are set to false the sprite will never move!
	 */
	function setDragLock (?allowHorizontal:Bool = true, ?allowVertical:Bool = true):Void;
	
	/**
	 * Make this Sprite snap to the given grid either during drag or when it's released.
	 * For example 16x16 as the snapX and snapY would make the sprite snap to every 16 pixels.
	 */
	function enableSnap (snapX:Float, snapY:Float, ?onDrag:Bool = true, ?onRelease:Bool = false, ?snapOffsetX:Float = 0, ?snapOffsetY:Float = 0):Void;
	
	/**
	 * Stops the sprite from snapping to a grid during drag or release.
	 */
	function disableSnap ():Void;
	
	/**
	 * Bounds Rect check for the sprite drag
	 */
	function checkBoundsRect ():Void;
	
	/**
	 * Parent Sprite Bounds check for the sprite drag.
	 */
	function checkBoundsSprite ():Void;
	
}
