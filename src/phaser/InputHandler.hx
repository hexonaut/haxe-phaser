package phaser;

/**
* The Input Handler is bound to a specific Sprite and is responsible for managing all Input events on that Sprite.
*/
@:native("Phaser.InputHandler")
extern class InputHandler {

	/**
	* The Input Handler is bound to a specific Sprite and is responsible for managing all Input events on that Sprite.
	* 
	* @param sprite The Sprite object to which this Input Handler belongs.
	*/
	function new(sprite:phaser.Sprite);
	
	/**
	* Controls if the Sprite is allowed to be dragged horizontally.
	* Default: true
	*/
	var allowHorizontalDrag:Bool;
	
	/**
	* Controls if the Sprite is allowed to be dragged vertically.
	* Default: true
	*/
	var allowVerticalDrag:Bool;
	
	/**
	* A region of the game world within which the sprite is restricted during drag.
	*/
	var boundsRect:phaser.Rectangle;
	
	/**
	* A Sprite the bounds of which this sprite is restricted during drag.
	*/
	var boundsSprite:phaser.Sprite;
	
	/**
	* If true when this Sprite is clicked or dragged it will automatically be bought to the top of the Group it is within.
	*/
	var bringToTop:Bool;
	
	/**
	* A Point object containing the coordinates of the Pointer when it was first pressed down onto this Sprite.
	*/
	var downPoint:phaser.Point;
	
	/**
	* The distance, in pixels, the pointer has to move while being held down, before the Sprite thinks it is being dragged.
	*/
	var dragDistanceThreshold:Float;
	
	/**
	* The offset from the Sprites position that dragging takes place from.
	*/
	var dragOffset:phaser.Point;
	
	/**
	* Is the Sprite dragged from its center, or the point at which the Pointer was pressed down upon it?
	*/
	var dragFromCenter:Bool;
	
	/**
	* Is this sprite allowed to be dragged by the mouse? true = yes, false = no
	*/
	var draggable:Bool;
	
	/**
	* The Point from which the most recent drag started from. Useful if you need to return an object to its starting position.
	*/
	var dragStartPoint:phaser.Point;
	
	/**
	* If enabled, when the Sprite stops being dragged, it will only dispatch the `onDragStop` event, and not the `onInputUp` event. If set to `false` it will dispatch both events.
	*/
	var dragStopBlocksInputUp:Bool;
	
	/**
	* The amount of time, in ms, the pointer has to be held down over the Sprite before it thinks it is being dragged.
	*/
	var dragTimeThreshold:Float;
	
	/**
	* If enabled the Input Handler will process input requests and monitor pointer activity.
	*/
	var enabled:Bool;
	
	/**
	* A reference to the currently running game.
	*/
	var game:phaser.Game;
	
	/**
	* Warning: EXPERIMENTAL
	* 
	* @param x 
	*/
	function globalToLocalX(x:Float):Float;
	
	/**
	* Warning: EXPERIMENTAL
	* 
	* @param y 
	*/
	function globalToLocalY(y:Float):Float;
	
	/**
	* true if the Sprite is being currently dragged.
	*/
	var isDragged:Bool;
	
	/**
	* The alpha tolerance threshold. If the alpha value of the pixel matches or is above this value, it's considered a hit.
	* Default: 255
	*/
	var pixelPerfectAlpha:Float;
	
	/**
	* Set to true to use pixel perfect hit detection when checking if the pointer is over this Sprite when it's clicked or touched.
	* The x/y coordinates of the pointer are tested against the image in combination with the InputHandler.pixelPerfectAlpha value.
	* This feature only works for display objects with image based textures such as Sprites. It won't work on BitmapText or Rope.
	* Warning: This is expensive so only enable if you really need it. Use a pixel perfect check when testing for clicks or touches on the Sprite.
	*/
	var pixelPerfectClick:Bool;
	
	/**
	* Set to true to use pixel perfect hit detection when checking if the pointer is over this Sprite.
	* The x/y coordinates of the pointer are tested against the image in combination with the InputHandler.pixelPerfectAlpha value.
	* This feature only works for display objects with image based textures such as Sprites. It won't work on BitmapText or Rope.
	* Warning: This is expensive, especially on mobile (where it's not even needed!) so only enable if required. Also see the less-expensive InputHandler.pixelPerfectClick. Use a pixel perfect check when testing for pointer over.
	*/
	var pixelPerfectOver:Bool;
	
	/**
	* The priorityID is used to determine which game objects should get priority when input events occur. For example if you have
	* several Sprites that overlap, by default the one at the top of the display list is given priority for input events. You can
	* stop this from happening by controlling the priorityID value. The higher the value, the more important they are considered to the Input events.
	*/
	var priorityID:Float;
	
	/**
	* EXPERIMENTAL: Please do not use this property unless you know what it does. Likely to change in the future.
	*/
	var scaleLayer:Bool;
	
	/**
	* A Point object that contains by how far the Sprite snap is offset.
	*/
	var snapOffset:phaser.Point;
	
	/**
	* This defines the top-left X coordinate of the snap grid.
	*/
	var snapOffsetX:Float;
	
	/**
	* This defines the top-left Y coordinate of the snap grid..
	*/
	var snapOffsetY:Float;
	
	/**
	* When the Sprite is dragged this controls if the center of the Sprite will snap to the pointer on drag or not.
	*/
	var snapOnDrag:Bool;
	
	/**
	* When the Sprite is dragged this controls if the Sprite will be snapped on release.
	*/
	var snapOnRelease:Bool;
	
	/**
	* If the sprite is set to snap while dragging this holds the point of the most recent 'snap' event.
	*/
	var snapPoint:phaser.Point;
	
	/**
	* When a Sprite has snapping enabled this holds the width of the snap grid.
	*/
	var snapX:Float;
	
	/**
	* When a Sprite has snapping enabled this holds the height of the snap grid.
	*/
	var snapY:Float;
	
	/**
	* The Sprite object to which this Input Handler belongs.
	*/
	var sprite:phaser.Sprite;
	
	/**
	* On a desktop browser you can set the 'hand' cursor to appear when moving over the Sprite.
	*/
	var useHandCursor:Bool;
	
	/**
	* Bounds Rect check for the sprite drag
	*/
	function checkBoundsRect():Void;
	
	/**
	* Parent Sprite Bounds check for the sprite drag.
	*/
	function checkBoundsSprite():Void;
	
	/**
	* Runs a pixel perfect check against the given x/y coordinates of the Sprite this InputHandler is bound to.
	* It compares the alpha value of the pixel and if >= InputHandler.pixelPerfectAlpha it returns true.
	* 
	* @param x The x coordinate to check.
	* @param y The y coordinate to check.
	* @param pointer The pointer to get the x/y coordinate from if not passed as the first two parameters.
	* @return true if there is the alpha of the pixel is >= InputHandler.pixelPerfectAlpha
	*/
	function checkPixel(x:Float, y:Float, ?pointer:phaser.Pointer):Bool;
	
	/**
	* Checks if the given pointer is both down and over the Sprite this InputHandler belongs to.
	* Use the `fastTest` flag is to quickly check just the bounding hit area even if `InputHandler.pixelPerfectOver` is `true`.
	* 
	* @param pointer 
	* @param fastTest Force a simple hit area check even if `pixelPerfectOver` is true for this object?
	* @return True if the pointer is down, otherwise false.
	*/
	function checkPointerDown(pointer:phaser.Pointer, ?fastTest:Bool):Bool;
	
	/**
	* Checks if the given pointer is over the Sprite this InputHandler belongs to.
	* Use the `fastTest` flag is to quickly check just the bounding hit area even if `InputHandler.pixelPerfectOver` is `true`.
	* 
	* @param pointer 
	* @param fastTest Force a simple hit area check even if `pixelPerfectOver` is true for this object?
	*/
	function checkPointerOver(pointer:phaser.Pointer, ?fastTest:Bool):Bool;
	
	/**
	* Clean up memory.
	*/
	function destroy():Void;
	
	/**
	* Stops this sprite from being able to be dragged.
	* If it is currently the target of an active drag it will be stopped immediately; also disables any set callbacks.
	*/
	function disableDrag():Void;
	
	/**
	* Stops the sprite from snapping to a grid during drag or release.
	*/
	function disableSnap():Void;
	
	/**
	* If the pointer is currently over this Sprite this returns how long it has been there for in milliseconds.
	* 
	* @param pointerId 
	* @return The number of milliseconds the pointer has been pressed down on the Sprite, or -1 if not over.
	*/
	function downDuration(?pointerId:Float):Float;
	
	/**
	* Allow this Sprite to be dragged by any valid pointer.
	* 
	* When the drag begins the Sprite.events.onDragStart event will be dispatched.
	* 
	* When the drag completes by way of the user letting go of the pointer that was dragging the sprite, the Sprite.events.onDragStop event is dispatched.
	* 
	* You can control the thresholds over when a drag starts via the properties:
	* 
	* `Pointer.dragDistanceThreshold` the distance, in pixels, that the pointer has to move
	* before the drag will start.
	* 
	* `Pointer.dragTimeThreshold` the time, in ms, that the pointer must be held down on
	* the Sprite before the drag will start.
	* 
	* You can set either (or both) of these properties after enabling a Sprite for drag.
	* 
	* For the duration of the drag the Sprite.events.onDragUpdate event is dispatched. This event is only dispatched when the pointer actually
	* changes position and moves. The event sends 5 parameters: `sprite`, `pointer`, `dragX`, `dragY` and `snapPoint`.
	* 
	* @param lockCenter If false the Sprite will drag from where you click it minus the dragOffset. If true it will center itself to the tip of the mouse pointer.
	* @param bringToTop If true the Sprite will be bought to the top of the rendering list in its current Group.
	* @param pixelPerfect If true it will use a pixel perfect test to see if you clicked the Sprite. False uses the bounding box.
	* @param alphaThreshold If using pixel perfect collision this specifies the alpha level from 0 to 255 above which a collision is processed. - Default: 255
	* @param boundsRect If you want to restrict the drag of this sprite to a specific Rectangle, pass the Phaser.Rectangle here, otherwise it's free to drag anywhere.
	* @param boundsSprite If you want to restrict the drag of this sprite to within the bounding box of another sprite, pass it here.
	*/
	function enableDrag(?lockCenter:Bool, ?bringToTop:Bool, ?pixelPerfect:Bool, ?alphaThreshold:Float, ?boundsRect:phaser.Rectangle, ?boundsSprite:phaser.Sprite):Void;
	
	/**
	* Make this Sprite snap to the given grid either during drag or when it's released.
	* For example 16x16 as the snapX and snapY would make the sprite snap to every 16 pixels.
	* 
	* @param snapX The width of the grid cell to snap to.
	* @param snapY The height of the grid cell to snap to.
	* @param onDrag If true the sprite will snap to the grid while being dragged. - Default: true
	* @param onRelease If true the sprite will snap to the grid when released.
	* @param snapOffsetX Used to offset the top-left starting point of the snap grid.
	* @param snapOffsetY Used to offset the top-left starting point of the snap grid.
	*/
	function enableSnap(snapX:Float, snapY:Float, ?onDrag:Bool, ?onRelease:Bool, ?snapOffsetX:Float, ?snapOffsetY:Float):Void;
	
	/**
	* Is this object using pixel perfect checking?
	* 
	* @return True if the this InputHandler has either `pixelPerfectClick` or `pixelPerfectOver` set to `true`.
	*/
	function isPixelPerfect():Bool;
	
	/**
	* Returns true if the pointer has left the Sprite within the specified delay time (defaults to 500ms, half a second)
	* 
	* @param pointerId 
	* @param delay The time below which the pointer is considered as just out.
	*/
	function justOut(?pointerId:Float, ?delay:Float):Bool;
	
	/**
	* Returns true if the pointer has entered the Sprite within the specified delay time (defaults to 500ms, half a second)
	* 
	* @param pointerId 
	* @param delay The time below which the pointer is considered as just over.
	*/
	function justOver(?pointerId:Float, ?delay:Float):Bool;
	
	/**
	* Returns true if the pointer has touched or clicked on the Sprite within the specified delay time (defaults to 500ms, half a second)
	* 
	* @param pointerId 
	* @param delay The time below which the pointer is considered as just over.
	*/
	function justPressed(?pointerId:Float, ?delay:Float):Bool;
	
	/**
	* Returns true if the pointer was touching this Sprite, but has been released within the specified delay time (defaults to 500ms, half a second)
	* 
	* @param pointerId 
	* @param delay The time below which the pointer is considered as just out.
	*/
	function justReleased(?pointerId:Float, ?delay:Float):Bool;
	
	/**
	* If the pointer is currently over this Sprite this returns how long it has been there for in milliseconds.
	* 
	* @param pointerId 
	* @return The number of milliseconds the pointer has been over the Sprite, or -1 if not over.
	*/
	function overDuration(?pointerId:Float):Float;
	
	/**
	* If the Pointer is down this returns true.
	* This *only* checks if the Pointer is down, not if it's down over any specific Sprite.
	* 
	* @param pointerId 
	* @return - True if the given pointer is down, otherwise false.
	*/
	function pointerDown(?pointerId:Float):Bool;
	
	/**
	* Is this sprite being dragged by the mouse or not?
	* 
	* @param pointerId 
	* @return True if the pointer is dragging an object, otherwise false.
	*/
	function pointerDragged(?pointerId:Float):Bool;
	
	/**
	* Is the Pointer outside of this Sprite?
	* 
	* @param pointerId The ID number of a Pointer to check. If you don't provide a number it will check all Pointers. - Default: (check all)
	* @return True if the given pointer (if a index was given, or any pointer if not) is out of this object.
	*/
	function pointerOut(?pointerId:Float):Bool;
	
	/**
	* Is the Pointer over this Sprite?
	* 
	* @param pointerId The ID number of a Pointer to check. If you don't provide a number it will check all Pointers. - Default: (check all)
	* @return - True if the given pointer (if a index was given, or any pointer if not) is over this object.
	*/
	function pointerOver(?pointerId:Float):Bool;
	
	/**
	* A timestamp representing when the Pointer first touched the touchscreen.
	* 
	* @param pointerId - Default: (check all)
	*/
	function pointerTimeDown(?pointerId:Float):Float;
	
	/**
	* A timestamp representing when the Pointer left the touchscreen.
	* 
	* @param pointerId 
	*/
	function pointerTimeOut(?pointerId:Float):Float;
	
	/**
	* A timestamp representing when the Pointer first touched the touchscreen.
	* 
	* @param pointerId 
	*/
	function pointerTimeOver(?pointerId:Float):Float;
	
	/**
	* A timestamp representing when the Pointer left the touchscreen.
	* 
	* @param pointerId 
	*/
	function pointerTimeUp(?pointerId:Float):Float;
	
	/**
	* If the Pointer is up this returns true.
	* This *only* checks if the Pointer is up, not if it's up over any specific Sprite.
	* 
	* @param pointerId 
	* @return - True if the given pointer is up, otherwise false.
	*/
	function pointerUp(?pointerId:Float):Bool;
	
	/**
	* The x coordinate of the Input pointer, relative to the top-left of the parent Sprite.
	* This value is only set when the pointer is over this Sprite.
	* 
	* @param pointerId 
	* @return The x coordinate of the Input pointer.
	*/
	function pointerX(?pointerId:Float):Float;
	
	/**
	* The y coordinate of the Input pointer, relative to the top-left of the parent Sprite
	* This value is only set when the pointer is over this Sprite.
	* 
	* @param pointerId 
	* @return The y coordinate of the Input pointer.
	*/
	function pointerY(?pointerId:Float):Float;
	
	/**
	* Resets the Input Handler and disables it.
	*/
	function reset():Void;
	
	/**
	* Restricts this sprite to drag movement only on the given axis. Note: If both are set to false the sprite will never move!
	* 
	* @param allowHorizontal To enable the sprite to be dragged horizontally set to true, otherwise false. - Default: true
	* @param allowVertical To enable the sprite to be dragged vertically set to true, otherwise false. - Default: true
	*/
	function setDragLock(?allowHorizontal:Bool, ?allowVertical:Bool):Void;
	
	/**
	* Starts the Input Handler running. This is called automatically when you enable input on a Sprite, or can be called directly if you need to set a specific priority.
	* 
	* @param priority Higher priority sprites take click priority over low-priority sprites when they are stacked on-top of each other.
	* @param useHandCursor If true the Sprite will show the hand cursor on mouse-over (doesn't apply to mobile browsers)
	* @return The Sprite object to which the Input Handler is bound.
	*/
	function start(priority:Float, useHandCursor:Bool):phaser.Sprite;
	
	/**
	* Called by Pointer when drag starts on this Sprite. Should not usually be called directly.
	* 
	* @param pointer 
	*/
	function startDrag(pointer:phaser.Pointer):Void;
	
	/**
	* Stops the Input Handler from running.
	*/
	function stop():Void;
	
	/**
	* Called by Pointer when drag is stopped on this Sprite. Should not usually be called directly.
	* 
	* @param pointer 
	*/
	function stopDrag(pointer:phaser.Pointer):Void;
	
	/**
	* Internal Update method. This is called automatically and handles the Pointer
	* and drag update loops.
	* 
	* @param pointer 
	* @return True if the pointer is still active, otherwise false.
	*/
	function update(pointer:phaser.Pointer):Void;
	
	/**
	* Called as a Pointer actively drags this Game Object.
	* 
	* @param pointer The Pointer causing the drag update.
	* @param fromStart True if this is the first update, immediately after the drag has started.
	*/
	function updateDrag(pointer:phaser.Pointer):Bool;
	
	/**
	* Checks if the object this InputHandler is bound to is valid for consideration in the Pointer move event.
	* This is called by Phaser.Pointer and shouldn't typically be called directly.
	* 
	* @param highestID The highest ID currently processed by the Pointer.
	* @param highestRenderID The highest Render Order ID currently processed by the Pointer.
	* @param includePixelPerfect If this object has `pixelPerfectClick` or `pixelPerfectOver` set should it be considered as valid? - Default: true
	* @return True if the object this InputHandler is bound to should be considered as valid for input detection.
	*/
	function validForInput(highestID:Float, highestRenderID:Float, ?includePixelPerfect:Bool):Bool;
	
}

