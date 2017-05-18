package phaser;

import haxe.extern.EitherType;
import haxe.extern.Rest;

/**
* A Group is a container for {@link DisplayObject display objects} including {@link Phaser.Sprite Sprites} and {@link Phaser.Image Images}.
* 
* Groups form the logical tree structure of the display/scene graph where local transformations are applied to children.
* For instance, all children are also moved/rotated/scaled when the group is moved/rotated/scaled.
* 
* In addition, Groups provides support for fast pooling and object recycling.
* 
* Groups are also display objects and can be nested as children within other Groups.
*/
@:native("Phaser.Group")
extern class Group extends pixi.DisplayObjectContainer {

	/**
	* A Group is a container for {@link DisplayObject display objects} including {@link Phaser.Sprite Sprites} and {@link Phaser.Image Images}.
	* 
	* Groups form the logical tree structure of the display/scene graph where local transformations are applied to children.
	* For instance, all children are also moved/rotated/scaled when the group is moved/rotated/scaled.
	* 
	* In addition, Groups provides support for fast pooling and object recycling.
	* 
	* Groups are also display objects and can be nested as children within other Groups.
	* 
	* @param game A reference to the currently running game.
	* @param parent The parent Group (or other {
	* @link DisplayObject}) that this group will be added to.       If undefined/unspecified the Group will be added to the {
	* @link Phaser.Game#world Game World}; if null the Group will not be added to any parent. - Default: (game world)
	* @param name A name for this group. Not used internally but useful for debugging. - Default: 'group'
	* @param addToStage If true this group will be added directly to the Game.Stage instead of Game.World.
	* @param enableBody If true all Sprites created with {
	* @link #create} or {
	* @link #createMulitple} will have a physics body created on them. Change the body type with {
	* @link #physicsBodyType}.
	* @param physicsBodyType The physics body type to use when physics bodies are automatically added. See {
	* @link #physicsBodyType} for values.
	*/
	function new(game:phaser.Game, ?parent:pixi.DisplayObjectContainer, ?name:String, ?addToStage:Bool, ?enableBody:Bool, ?physicsBodyType:Float);
	
	/**
	* A returnType value, as specified in {@link Phaser.Group#iterate iterate} eg.
	*/
	static var RETURN_CHILD:Float;
	
	/**
	* A returnType value, as specified in {@link Phaser.Group#iterate iterate} eg.
	*/
	static var RETURN_NONE:Float;
	
	/**
	* A returnType value, as specified in {@link Phaser.Group#iterate iterate} eg.
	*/
	static var RETURN_TOTAL:Float;
	
	/**
	* A returnType value, as specified in {@link Phaser.Group#iterate iterate} eg.
	*/
	static var RETURN_ALL:Float;
	
	/**
	* A sort ordering value, as specified in {@link Phaser.Group#sort sort} eg.
	*/
	static var SORT_ASCENDING:Float;
	
	/**
	* A sort ordering value, as specified in {@link Phaser.Group#sort sort} eg.
	*/
	static var SORT_DESCENDING:Float;
	
	/**
	* The alpha value of the group container.
	*/
	@:native("alpha")
	var Group_alpha:Float;
	
	/**
	* The angle of rotation of the group container, in degrees.
	* 
	* This adjusts the group itself by modifying its local rotation transform.
	* 
	* This has no impact on the rotation/angle properties of the children, but it will update their worldTransform
	* and on-screen orientation and position.
	*/
	var angle:Float;
	
	/**
	* The alive property is useful for Groups that are children of other Groups and need to be included/excluded in checks like forEachAlive.
	* Default: true
	*/
	var alive:Bool;
	
	/**
	* The bottom coordinate of this Group.
	* 
	* It is derived by calling `getBounds`, calculating the Groups dimensions based on its
	* visible children.
	*/
	var bottom:Float;
	
	/**
	* If this object is {@link Phaser.Group#fixedToCamera fixedToCamera} then this stores the x/y position offset relative to the top-left of the camera view.
	* If the parent of this Group is also `fixedToCamera` then the offset here is in addition to that and should typically be disabled.
	*/
	var cameraOffset:phaser.Point;
	
	/**
	* The center x coordinate of this Group.
	* 
	* It is derived by calling `getBounds`, calculating the Groups dimensions based on its
	* visible children.
	*/
	var centerX:Float;
	
	/**
	* The center y coordinate of this Group.
	* 
	* It is derived by calling `getBounds`, calculating the Groups dimensions based on its
	* visible children.
	*/
	var centerY:Float;
	
	/**
	* The type of objects that will be created when using {@link Phaser.Group#create create} or {@link Phaser.Group#createMultiple createMultiple}.
	* 
	* It should extend either Sprite or Image and accept the same constructor arguments: `(game, x, y, key, frame)`.
	* Default: {@link Phaser.Sprite}
	*/
	var classType:Dynamic;
	
	/**
	* The current display object that the group cursor is pointing to, if any. (Can be set manually.)
	* 
	* The cursor is a way to iterate through the children in a Group using {@link Phaser.Group#next next} and {@link Phaser.Group#previous previous}.
	*/
	var cursor:Dynamic;
	
	/**
	* The current index of the Group cursor. Advance it with Group.next.
	*/
	var cursorIndex:Float;
	
	/**
	* If true all Sprites created by, or added to this group, will have a physics body enabled on them.
	* 
	* If there are children already in the Group at the time you set this property, they are not changed.
	* 
	* The default body type is controlled with {@link Phaser.Group#physicsBodyType physicsBodyType}.
	*/
	var enableBody:Bool;
	
	/**
	* If true when a physics body is created (via {@link Phaser.Group#enableBody enableBody}) it will create a physics debug object as well.
	* 
	* This only works for P2 bodies.
	*/
	var enableBodyDebug:Bool;
	
	/**
	* If exists is false the group will be excluded from collision checks and filters such as {@link forEachExists}. The group will not call `preUpdate` and `postUpdate` on its children and the children will not receive physics updates or camera/world boundary checks. The group will still be {@link Phaser.Group#visible visible} and will still call `update` on its children.
	* Default: true
	*/
	var exists:Bool;
	
	/**
	* A Group that is fixed to the camera uses its x/y coordinates as offsets from the top left of the camera. These are stored in Group.cameraOffset.
	* 
	* Note that the cameraOffset values are in addition to any parent in the display list.
	* So if this Group was in a Group that has x: 200, then this will be added to the cameraOffset.x
	*/
	var fixedToCamera:Bool;
	
	/**
	* A reference to the currently running Game.
	*/
	var game:phaser.Game;
	
	/**
	* The hash array is an array belonging to this Group into which you can add any of its children via Group.addToHash and Group.removeFromHash.
	* 
	* Only children of this Group can be added to and removed from the hash.
	* 
	* This hash is used automatically by Phaser Arcade Physics in order to perform non z-index based destructive sorting.
	* However if you don't use Arcade Physics, or this isn't a physics enabled Group, then you can use the hash to perform your own
	* sorting and filtering of Group children without touching their z-index (and therefore display draw order)
	*/
	var hash:Array<pixi.DisplayObject>;
	
	/**
	* A group with `ignoreDestroy` set to `true` ignores all calls to its `destroy` method.
	*/
	var ignoreDestroy:Bool;
	
	/**
	* A Group with `inputEnableChildren` set to `true` will automatically call `inputEnabled = true`
	* on any children _added_ to, or _created by_, this Group.
	* 
	* If there are children already in the Group at the time you set this property, they are not changed.
	*/
	var inputEnableChildren:Bool;
	
	/**
	* The left coordinate of this Group.
	* 
	* It is derived by calling `getBounds`, calculating the Groups dimensions based on its
	* visible children.
	*/
	var left:Float;
	
	/**
	* Total number of children in this group, regardless of exists/alive status.
	*/
	var length:Float;
	
	/**
	* A name for this group. Not used internally but useful for debugging.
	*/
	var name:String;
	
	/**
	* This Signal is dispatched whenever a child of this Group emits an onInputDown signal as a result
	* of having been interacted with by a Pointer. You can bind functions to this Signal instead of to
	* every child Sprite.
	* 
	* This Signal is sent 2 arguments: A reference to the Sprite that triggered the signal, and
	* a reference to the Pointer that caused it.
	*/
	var onChildInputDown:phaser.Signal;
	
	/**
	* This Signal is dispatched whenever a child of this Group emits an onInputUp signal as a result
	* of having been interacted with by a Pointer. You can bind functions to this Signal instead of to
	* every child Sprite.
	* 
	* This Signal is sent 3 arguments: A reference to the Sprite that triggered the signal,
	* a reference to the Pointer that caused it, and a boolean value `isOver` that tells you if the Pointer
	* is still over the Sprite or not.
	*/
	var onChildInputUp:phaser.Signal;
	
	/**
	* This Signal is dispatched whenever a child of this Group emits an onInputOver signal as a result
	* of having been interacted with by a Pointer. You can bind functions to this Signal instead of to
	* every child Sprite.
	* 
	* This Signal is sent 2 arguments: A reference to the Sprite that triggered the signal, and
	* a reference to the Pointer that caused it.
	*/
	var onChildInputOver:phaser.Signal;
	
	/**
	* This Signal is dispatched whenever a child of this Group emits an onInputOut signal as a result
	* of having been interacted with by a Pointer. You can bind functions to this Signal instead of to
	* every child Sprite.
	* 
	* This Signal is sent 2 arguments: A reference to the Sprite that triggered the signal, and
	* a reference to the Pointer that caused it.
	*/
	var onChildInputOut:phaser.Signal;
	
	/**
	* This signal is dispatched when the group is destroyed.
	*/
	var onDestroy:phaser.Signal;
	
	/**
	* A Group is that has `pendingDestroy` set to `true` is flagged to have its destroy method
	* called on the next logic update.
	* You can set it directly to flag the Group to be destroyed on its next update.
	* 
	* This is extremely useful if you wish to destroy a Group from within one of its own callbacks
	* or a callback of one of its children.
	*/
	var pendingDestroy:Bool;
	
	/**
	* If {@link Phaser.Group#enableBody enableBody} is true this is the type of physics body that is created on new Sprites.
	* 
	* The valid values are {@link Phaser.Physics.ARCADE}, {@link Phaser.Physics.P2JS}, {@link Phaser.Physics.NINJA}, etc.
	*/
	var physicsBodyType:Float;
	
	/**
	* The const physics body type of this object.
	*/
	var physicsType:Float;
	
	/**
	* If this Group contains Arcade Physics Sprites you can set a custom sort direction via this property.
	* 
	* It should be set to one of the Phaser.Physics.Arcade sort direction constants:
	* 
	* Phaser.Physics.Arcade.SORT_NONE
	* Phaser.Physics.Arcade.LEFT_RIGHT
	* Phaser.Physics.Arcade.RIGHT_LEFT
	* Phaser.Physics.Arcade.TOP_BOTTOM
	* Phaser.Physics.Arcade.BOTTOM_TOP
	* 
	* If set to `null` the Group will use whatever Phaser.Physics.Arcade.sortDirection is set to. This is the default behavior.
	*/
	var physicsSortDirection:Float;
	
	/**
	* The coordinates, in pixels, of this DisplayObject, relative to its parent container.
	* 
	* The value of this property does not reflect any positioning happening further up the display list.
	* To obtain that value please see the `worldPosition` property.
	*/
	@:native("position")
	var Group_position:phaser.Point;
	
	/**
	* The right coordinate of this Group.
	* 
	* It is derived by calling `getBounds`, calculating the Groups dimensions based on its
	* visible children.
	*/
	var right:Float;
	
	/**
	* The angle of rotation of the group container, in radians.
	* 
	* This will adjust the group container itself by modifying its rotation.
	* This will have no impact on the rotation value of its children, but it will update their worldTransform and on-screen position.
	*/
	@:native("rotation")
	var Group_rotation:Float;
	
	/**
	* The scale of this DisplayObject. A scale of 1:1 represents the DisplayObject
	* at its default size. A value of 0.5 would scale this DisplayObject by half, and so on.
	* 
	* The value of this property does not reflect any scaling happening further up the display list.
	* To obtain that value please see the `worldScale` property.
	*/
	@:native("scale")
	var Group_scale:phaser.Point;
	
	/**
	* The top coordinate of this Group.
	* 
	* It is derived by calling `getBounds`, calculating the Groups dimensions based on its
	* visible children.
	*/
	var top:Float;
	
	/**
	* Total number of existing children in the group.
	*/
	var total:Float;
	
	/**
	* Internal Phaser Type value.
	*/
	var type:Float;
	
	/**
	* Skip children with `exists = false` in {@link Phaser.Group#update update}.
	*/
	var updateOnlyExistingChildren:Bool;
	
	/**
	* The visible state of the group. Non-visible Groups and all of their children are not rendered.
	*/
	@:native("visible")
	var Group_visible:Bool;
	
	/**
	* The z-depth value of this object within its parent container/Group - the World is a Group as well.
	* This value must be unique for each child in a Group.
	*/
	var z:Float;
	
	/**
	* Adds an existing object as the top child in this group.
	* 
	* The child is automatically added to the top of the group, and is displayed above every previous child.
	* 
	* Or if the _optional_ index is specified, the child is added at the location specified by the index value,
	* this allows you to control child ordering.
	* 
	* If the child was already in this Group, it is simply returned, and nothing else happens to it.
	* 
	* If `Group.enableBody` is set, then a physics body will be created on the object, so long as one does not already exist.
	* 
	* If `Group.inputEnableChildren` is set, then an Input Handler will be created on the object, so long as one does not already exist.
	* 
	* Use {@link Phaser.Group#addAt addAt} to control where a child is added. Use {@link Phaser.Group#create create} to create and add a new child.
	* 
	* @param child The display object to add as a child.
	* @param silent If true the child will not dispatch the `onAddedToGroup` event.
	* @param index The index within the group to insert the child to. Where 0 is the bottom of the Group.
	* @return The child that was added to the group.
	*/
	function add(child:Dynamic, ?silent:Bool, ?index:Float):Dynamic;
	
	/**
	* Adds the amount to the given property on all children in this group.
	* 
	* `Group.addAll('x', 10)` will add 10 to the child.x value for each child.
	* 
	* @param property The property to increment, for example 'body.velocity.x' or 'angle'.
	* @param amount The amount to increment the property by. If child.x = 10 then addAll('x', 40) would make child.x = 50.
	* @param checkAlive If true the property will only be changed if the child is alive.
	* @param checkVisible If true the property will only be changed if the child is visible.
	*/
	function addAll(property:String, amount:Float, ?checkAlive:Bool, ?checkVisible:Bool):Void;
	
	/**
	* Adds an existing object to this group.
	* 
	* The child is added to the group at the location specified by the index value, this allows you to control child ordering.
	* 
	* If `Group.enableBody` is set, then a physics body will be created on the object, so long as one does not already exist.
	* 
	* If `Group.inputEnableChildren` is set, then an Input Handler will be created on the object, so long as one does not already exist.
	* 
	* @param child The display object to add as a child.
	* @param index The index within the group to insert the child to.
	* @param silent If true the child will not dispatch the `onAddedToGroup` event.
	* @return The child that was added to the group.
	*/
	function addAt(child:Dynamic, index:Float, ?silent:Bool):Dynamic;
	
	/**
	* Adds an array of existing Display Objects to this Group.
	* 
	* The Display Objects are automatically added to the top of this Group, and will render on-top of everything already in this Group.
	* 
	* As well as an array you can also pass another Group as the first argument. In this case all of the children from that
	* Group will be removed from it and added into this Group.
	* 
	* If `Group.enableBody` is set, then a physics body will be created on the objects, so long as one does not already exist.
	* 
	* If `Group.inputEnableChildren` is set, then an Input Handler will be created on the objects, so long as one does not already exist.
	* 
	* @param children An array of display objects or a Phaser.Group. If a Group is given then *all* children will be moved from it.
	* @param silent If true the children will not dispatch the `onAddedToGroup` event.
	* @return The array of children or Group of children that were added to this Group.
	*/
	function addMultiple(children:Array<Dynamic>, ?silent:Bool):Array<Dynamic>;
	
	/**
	* Adds a child of this Group into the hash array.
	* This call will return false if the child is not a child of this Group, or is already in the hash.
	* 
	* @param child The display object to add to this Groups hash. Must be a member of this Group already and not present in the hash.
	* @return True if the child was successfully added to the hash, otherwise false.
	*/
	function addToHash(child:pixi.DisplayObject):Bool;
	
	/**
	* This method iterates through all children in the Group (regardless if they are visible or exist)
	* and then changes their position so they are arranged in a Grid formation. Children must have
	* the `alignTo` method in order to be positioned by this call. All default Phaser Game Objects have
	* this.
	* 
	* The grid dimensions are determined by the first four arguments. The `width` and `height` arguments
	* relate to the width and height of the grid respectively.
	* 
	* For example if the Group had 100 children in it:
	* 
	* `Group.align(10, 10, 32, 32)`
	* 
	* This will align all of the children into a grid formation of 10x10, using 32 pixels per
	* grid cell. If you want a wider grid, you could do:
	* 
	* `Group.align(25, 4, 32, 32)`
	* 
	* This will align the children into a grid of 25x4, again using 32 pixels per grid cell.
	* 
	* You can choose to set _either_ the `width` or `height` value to -1. Doing so tells the method
	* to keep on aligning children until there are no children left. For example if this Group had
	* 48 children in it, the following:
	* 
	* `Group.align(-1, 8, 32, 32)`
	* 
	* ... will align the children so that there are 8 children vertically (the second argument),
	* and each row will contain 6 sprites, except the last one, which will contain 5 (totaling 48)
	* 
	* You can also do:
	* 
	* `Group.align(10, -1, 32, 32)`
	* 
	* In this case it will create a grid 10 wide, and as tall as it needs to be in order to fit
	* all of the children in.
	* 
	* The `position` property allows you to control where in each grid cell the child is positioned.
	* This is a constant and can be one of `Phaser.TOP_LEFT` (default), `Phaser.TOP_CENTER`,
	* `Phaser.TOP_RIGHT`, `Phaser.LEFT_CENTER`, `Phaser.CENTER`, `Phaser.RIGHT_CENTER`,
	* `Phaser.BOTTOM_LEFT`, `Phaser.BOTTOM_CENTER` or `Phaser.BOTTOM_RIGHT`.
	* 
	* The final argument; `offset` lets you start the alignment from a specific child index.
	* 
	* @param width The width of the grid in items (not pixels). Set to -1 for a dynamic width. If -1 then you must set an explicit height value.
	* @param height The height of the grid in items (not pixels). Set to -1 for a dynamic height. If -1 then you must set an explicit width value.
	* @param cellWidth The width of each grid cell, in pixels.
	* @param cellHeight The height of each grid cell, in pixels.
	* @param position The position constant. One of `Phaser.TOP_LEFT` (default), `Phaser.TOP_CENTER`, `Phaser.TOP_RIGHT`, `Phaser.LEFT_CENTER`, `Phaser.CENTER`, `Phaser.RIGHT_CENTER`, `Phaser.BOTTOM_LEFT`, `Phaser.BOTTOM_CENTER` or `Phaser.BOTTOM_RIGHT`.
	* @param offset Optional index to start the alignment from. Defaults to zero, the first child in the Group, but can be set to any valid child index value.
	* @return True if the Group children were aligned, otherwise false.
	*/
	function align(width:Float, height:Float, cellWidth:Float, cellHeight:Float, ?position:Float, ?offset:Float):Bool;
	
	/**
	* Aligns this Group within another Game Object, or Rectangle, known as the
	* 'container', to one of 9 possible positions.
	* 
	* The container must be a Game Object, or Phaser.Rectangle object. This can include properties
	* such as `World.bounds` or `Camera.view`, for aligning Groups within the world
	* and camera bounds. Or it can include other Sprites, Images, Text objects, BitmapText,
	* TileSprites or Buttons.
	* 
	* Please note that aligning a Group to another Game Object does **not** make it a child of
	* the container. It simply modifies its position coordinates so it aligns with it.
	* 
	* The position constants you can use are:
	* 
	* `Phaser.TOP_LEFT`, `Phaser.TOP_CENTER`, `Phaser.TOP_RIGHT`, `Phaser.LEFT_CENTER`,
	* `Phaser.CENTER`, `Phaser.RIGHT_CENTER`, `Phaser.BOTTOM_LEFT`,
	* `Phaser.BOTTOM_CENTER` and `Phaser.BOTTOM_RIGHT`.
	* 
	* Groups are placed in such a way that their _bounds_ align with the
	* container, taking into consideration rotation and scale of its children.
	* This allows you to neatly align Groups, irrespective of their position value.
	* 
	* The optional `offsetX` and `offsetY` arguments allow you to apply extra spacing to the final
	* aligned position of the Group. For example:
	* 
	* `group.alignIn(background, Phaser.BOTTOM_RIGHT, -20, -20)`
	* 
	* Would align the `group` to the bottom-right, but moved 20 pixels in from the corner.
	* Think of the offsets as applying an adjustment to the containers bounds before the alignment takes place.
	* So providing a negative offset will 'shrink' the container bounds by that amount, and providing a positive
	* one expands it.
	* 
	* @param container The Game Object or Rectangle with which to align this Group to. Can also include properties such as `World.bounds` or `Camera.view`.
	* @param position The position constant. One of `Phaser.TOP_LEFT` (default), `Phaser.TOP_CENTER`, `Phaser.TOP_RIGHT`, `Phaser.LEFT_CENTER`, `Phaser.CENTER`, `Phaser.RIGHT_CENTER`, `Phaser.BOTTOM_LEFT`, `Phaser.BOTTOM_CENTER` or `Phaser.BOTTOM_RIGHT`.
	* @param offsetX A horizontal adjustment of the Containers bounds, applied to the aligned position of the Game Object. Use a negative value to shrink the bounds, positive to increase it.
	* @param offsetY A vertical adjustment of the Containers bounds, applied to the aligned position of the Game Object. Use a negative value to shrink the bounds, positive to increase it.
	* @return This Group.
	*/
	function alignIn(container:EitherType<phaser.Rectangle, EitherType<phaser.Sprite, EitherType<phaser.Image, EitherType<phaser.Text, EitherType<phaser.BitmapText, EitherType<phaser.Button, EitherType<phaser.Graphics, phaser.TileSprite>>>>>>>, ?position:Float, ?offsetX:Float, ?offsetY:Float):phaser.Group;
	
	/**
	* Aligns this Group to the side of another Game Object, or Rectangle, known as the
	* 'parent', in one of 11 possible positions.
	* 
	* The parent must be a Game Object, or Phaser.Rectangle object. This can include properties
	* such as `World.bounds` or `Camera.view`, for aligning Groups within the world
	* and camera bounds. Or it can include other Sprites, Images, Text objects, BitmapText,
	* TileSprites or Buttons.
	* 
	* Please note that aligning a Group to another Game Object does **not** make it a child of
	* the parent. It simply modifies its position coordinates so it aligns with it.
	* 
	* The position constants you can use are:
	* 
	* `Phaser.TOP_LEFT` (default), `Phaser.TOP_CENTER`, `Phaser.TOP_RIGHT`, `Phaser.LEFT_TOP`,
	* `Phaser.LEFT_CENTER`, `Phaser.LEFT_BOTTOM`, `Phaser.RIGHT_TOP`, `Phaser.RIGHT_CENTER`,
	* `Phaser.RIGHT_BOTTOM`, `Phaser.BOTTOM_LEFT`, `Phaser.BOTTOM_CENTER`
	* and `Phaser.BOTTOM_RIGHT`.
	* 
	* Groups are placed in such a way that their _bounds_ align with the
	* parent, taking into consideration rotation and scale of the children.
	* This allows you to neatly align Groups, irrespective of their position value.
	* 
	* The optional `offsetX` and `offsetY` arguments allow you to apply extra spacing to the final
	* aligned position of the Group. For example:
	* 
	* `group.alignTo(background, Phaser.BOTTOM_RIGHT, -20, -20)`
	* 
	* Would align the `group` to the bottom-right, but moved 20 pixels in from the corner.
	* Think of the offsets as applying an adjustment to the parents bounds before the alignment takes place.
	* So providing a negative offset will 'shrink' the parent bounds by that amount, and providing a positive
	* one expands it.
	* 
	* @param parent The Game Object or Rectangle with which to align this Group to. Can also include properties such as `World.bounds` or `Camera.view`.
	* @param position The position constant. One of `Phaser.TOP_LEFT`, `Phaser.TOP_CENTER`, `Phaser.TOP_RIGHT`, `Phaser.LEFT_TOP`, `Phaser.LEFT_CENTER`, `Phaser.LEFT_BOTTOM`, `Phaser.RIGHT_TOP`, `Phaser.RIGHT_CENTER`, `Phaser.RIGHT_BOTTOM`, `Phaser.BOTTOM_LEFT`, `Phaser.BOTTOM_CENTER` or `Phaser.BOTTOM_RIGHT`.
	* @param offsetX A horizontal adjustment of the Containers bounds, applied to the aligned position of the Game Object. Use a negative value to shrink the bounds, positive to increase it.
	* @param offsetY A vertical adjustment of the Containers bounds, applied to the aligned position of the Game Object. Use a negative value to shrink the bounds, positive to increase it.
	* @return This Group.
	*/
	function alignTo(container:EitherType<phaser.Rectangle, EitherType<phaser.Sprite, EitherType<phaser.Image, EitherType<phaser.Text, EitherType<phaser.BitmapText, EitherType<phaser.Button, EitherType<phaser.Graphics, phaser.TileSprite>>>>>>>, ?position:Float, ?offsetX:Float, ?offsetY:Float):phaser.Group;
	
	/**
	* Brings the given child to the top of this group so it renders above all other children.
	* 
	* @param child The child to bring to the top of this group.
	* @return The child that was moved.
	*/
	function bringToTop(child:Dynamic):Dynamic;
	
	/**
	* Calls a function, specified by name, on all on children.
	* 
	* The function is called for all children regardless if they are dead or alive (see callAllExists for different options).
	* After the method parameter and context you can add as many extra parameters as you like, which will all be passed to the child.
	* 
	* @param method Name of the function on the child to call. Deep property lookup is supported.
	* @param context A string containing the context under which the method will be executed. Set to null to default to the child.
	* @param args Additional parameters that will be passed to the method.
	*/
	function callAll(method:String, context:Dynamic, parameters:Rest<Dynamic>):Void;
	
	/**
	* Calls a function, specified by name, on all children in the group who exist (or do not exist).
	* 
	* After the existsValue parameter you can add as many parameters as you like, which will all be passed to the child callback.
	* 
	* @param callback Name of the function on the children to call.
	* @param existsValue Only children with exists=existsValue will be called.
	* @param parameter Additional parameters that will be passed to the callback.
	*/
	function callAllExists(callback:String, existsValue:Bool, parameters:Rest<Dynamic>):Void;
	
	/**
	* Returns a reference to a function that exists on a child of the group based on the given callback array.
	* 
	* @param child The object to inspect.
	* @param callback The array of function names.
	* @param length The size of the array (pre-calculated in callAll).
	*/
	function callbackFromArray(child:Dynamic, callback:Dynamic, length:Float):Void;
	
	/**
	* Quickly check that the same property across all children of this group is equal to the given value.
	* 
	* This call doesn't descend down children, so if you have a Group inside of this group, the property will be checked on the group but not its children.
	* 
	* @param key The property, as a string, to be set. For example: 'body.velocity.x'
	* @param value The value that will be checked.
	* @param checkAlive If set then only children with alive=true will be checked. This includes any Groups that are children.
	* @param checkVisible If set then only children with visible=true will be checked. This includes any Groups that are children.
	* @param force If `force` is true then the property will be checked on the child regardless if it already exists or not. If true and the property doesn't exist, false will be returned.
	*/
	function checkAll(key:Array<String>, value:Dynamic, ?checkAlive:Bool, ?checkVisible:Bool, ?force:Bool):Bool;
	
	/**
	* Checks a property for the given value on the child.
	* 
	* @param child The child to check the property value on.
	* @param key An array of strings that make up the property that will be set.
	* @param value The value that will be checked.
	* @param force If `force` is true then the property will be checked on the child regardless if it already exists or not. If true and the property doesn't exist, false will be returned.
	* @return True if the property was was equal to value, false if not.
	*/
	function checkProperty(child:Dynamic, key:Array<String>, value:Dynamic, ?force:Bool):Bool;
	
	/**
	* Get the number of dead children in this group.
	* 
	* @return The number of children flagged as dead.
	*/
	function countDead():Float;
	
	/**
	* Get the number of living children in this group.
	* 
	* @return The number of children flagged as alive.
	*/
	function countLiving():Float;
	
	/**
	* Creates a new Phaser.Sprite object and adds it to the top of this group.
	* 
	* Use {@link Phaser.Group#classType classType} to change the type of object created.
	* 
	* The child is automatically added to the top of the group, and is displayed above every previous child.
	* 
	* Or if the _optional_ index is specified, the child is added at the location specified by the index value,
	* this allows you to control child ordering.
	* 
	* If `Group.enableBody` is set, then a physics body will be created on the object, so long as one does not already exist.
	* 
	* If `Group.inputEnableChildren` is set, then an Input Handler will be created on the object, so long as one does not already exist.
	* 
	* @param x The x coordinate to display the newly created Sprite at. The value is in relation to the group.x point.
	* @param y The y coordinate to display the newly created Sprite at. The value is in relation to the group.y point.
	* @param key This is the image or texture used by the Sprite during rendering. It can be a string which is a reference to the Cache Image entry, or an instance of a RenderTexture, BitmapData, Video or PIXI.Texture.
	* @param frame If this Sprite is using part of a sprite sheet or texture atlas you can specify the exact frame to use by giving a string or numeric index.
	* @param exists The default exists state of the Sprite. - Default: true
	* @param index The index within the group to insert the child to. Where 0 is the bottom of the Group.
	* @return The child that was created: will be a {
	* @link Phaser.Sprite} unless {
	* @link #classType} has been changed.
	*/
	function create(x:Float, y:Float, ?key:EitherType<String, EitherType<phaser.RenderTexture, EitherType<phaser.BitmapData, EitherType<phaser.Video, pixi.Texture>>>>, ?frame:EitherType<String, Float>, ?exists:Bool, ?index:Float):Dynamic;
	
	/**
	* Creates multiple Phaser.Sprite objects and adds them to the top of this Group.
	* 
	* This method is useful if you need to quickly generate a pool of sprites, such as bullets.
	* 
	* Use {@link Phaser.Group#classType classType} to change the type of object created.
	* 
	* You can provide an array as the `key` and / or `frame` arguments. When you do this
	* it will create `quantity` Sprites for every key (and frame) in the arrays.
	* 
	* For example:
	* 
	* `createMultiple(25, ['ball', 'carrot'])`
	* 
	* In the above code there are 2 keys (ball and carrot) which means that 50 sprites will be
	* created in total, 25 of each. You can also have the `frame` as an array:
	* 
	* `createMultiple(5, 'bricks', [0, 1, 2, 3])`
	* 
	* In the above there is one key (bricks), which is a sprite sheet. The frames array tells
	* this method to use frames 0, 1, 2 and 3. So in total it will create 20 sprites, because
	* the quantity was set to 5, so that is 5 brick sprites of frame 0, 5 brick sprites with
	* frame 1, and so on.
	* 
	* If you set both the key and frame arguments to be arrays then understand it will create
	* a total quantity of sprites equal to the size of both arrays times each other. I.e.:
	* 
	* `createMultiple(20, ['diamonds', 'balls'], [0, 1, 2])`
	* 
	* The above will create 20 'diamonds' of frame 0, 20 with frame 1 and 20 with frame 2.
	* It will then create 20 'balls' of frame 0, 20 with frame 1 and 20 with frame 2.
	* In total it will have created 120 sprites.
	* 
	* By default the Sprites will have their `exists` property set to `false`, and they will be
	* positioned at 0x0, relative to the `Group.x / y` values.
	* 
	* If `Group.enableBody` is set, then a physics body will be created on the objects, so long as one does not already exist.
	* 
	* If `Group.inputEnableChildren` is set, then an Input Handler will be created on the objects, so long as one does not already exist.
	* 
	* @param quantity The number of Sprites to create.
	* @param key The Cache key of the image that the Sprites will use. Or an Array of keys. See the description for details on how the quantity applies when arrays are used.
	* @param frame If the Sprite image contains multiple frames you can specify which one to use here. Or an Array of frames. See the description for details on how the quantity applies when arrays are used.
	* @param exists The default exists state of the Sprite.
	* @return An array containing all of the Sprites that were created.
	*/
	function createMultiple(quantity:Float, key:EitherType<String, Array<String>>, ?frame:EitherType<Dynamic, Array<Dynamic>>, ?exists:Bool):Array<Dynamic>;
	
	/**
	* Sort the children in the group according to custom sort function.
	* 
	* The `sortHandler` is provided the two parameters: the two children involved in the comparison (a and b).
	* It should return -1 if `a > b`, 1 if `a < b` or 0 if `a === b`.
	* 
	* @param sortHandler The custom sort function.
	* @param context The context in which the sortHandler is called.
	*/
	function customSort(sortHandler:Dynamic, ?context:Dynamic):Void;
	
	/**
	* Destroys this group.
	* 
	* Removes all children, then removes this group from its parent and nulls references.
	* 
	* @param destroyChildren If true `destroy` will be invoked on each removed child. - Default: true
	* @param soft A 'soft destroy' (set to true) doesn't remove this group from its parent or null the game reference. Set to false and it does.
	*/
	function destroy(?destroyChildren:Bool, ?soft:Bool):Void;
	
	/**
	* Divides the given property by the amount on all children in this group.
	* 
	* `Group.divideAll('x', 2)` will half the child.x value for each child.
	* 
	* @param property The property to divide, for example 'body.velocity.x' or 'angle'.
	* @param amount The amount to divide the property by. If child.x = 100 then divideAll('x', 2) would make child.x = 50.
	* @param checkAlive If true the property will only be changed if the child is alive.
	* @param checkVisible If true the property will only be changed if the child is visible.
	*/
	function divideAll(property:String, amount:Float, ?checkAlive:Bool, ?checkVisible:Bool):Void;
	
	/**
	* Call a function on each child in this group.
	* 
	* Additional arguments for the callback can be specified after the `checkExists` parameter. For example,
	* 
	*      Group.forEach(awardBonusGold, this, true, 100, 500)
	* 
	* would invoke `awardBonusGold` function with the parameters `(child, 100, 500)`.
	* 
	* Note: This check will skip any children which are Groups themselves.
	* 
	* @param callback The function that will be called for each applicable child. The child will be passed as the first argument.
	* @param callbackContext The context in which the function should be called (usually 'this').
	* @param checkExists If set only children matching for which `exists` is true will be passed to the callback, otherwise all children will be passed.
	* @param args Additional arguments to pass to the callback function, after the child item. - Default: (none)
	*/
	function forEach(callback:Dynamic, callbackContext:Dynamic, ?checkExists:Bool, args:Rest<Dynamic>):Void;
	
	/**
	* Call a function on each alive child in this group.
	* 
	* See {@link Phaser.Group#forEach forEach} for details.
	* 
	* @param callback The function that will be called for each applicable child. The child will be passed as the first argument.
	* @param callbackContext The context in which the function should be called (usually 'this').
	* @param args Additional arguments to pass to the callback function, after the child item. - Default: (none)
	*/
	function forEachAlive(callback:Dynamic, ?callbackContext:Dynamic, args:Rest<Dynamic>):Void;
	
	/**
	* Call a function on each dead child in this group.
	* 
	* See {@link Phaser.Group#forEach forEach} for details.
	* 
	* @param callback The function that will be called for each applicable child. The child will be passed as the first argument.
	* @param callbackContext The context in which the function should be called (usually 'this').
	* @param args Additional arguments to pass to the callback function, after the child item. - Default: (none)
	*/
	function forEachDead(callback:Dynamic, ?callbackContext:Dynamic, args:Rest<Dynamic>):Void;
	
	/**
	* Call a function on each existing child in this group.
	* 
	* See {@link Phaser.Group#forEach forEach} for details.
	* 
	* @param callback The function that will be called for each applicable child. The child will be passed as the first argument.
	* @param callbackContext The context in which the function should be called (usually 'this').
	* @param args Additional arguments to pass to the callback function, after the child item. - Default: (none)
	*/
	function forEachExists(callback:Dynamic, ?callbackContext:Dynamic):Void;
	
	/**
	* Find children matching a certain predicate.
	* 
	* For example:
	* 
	*      var healthyList = Group.filter(function(child, index, children) {
	*          return child.health > 10 ? true : false;
	*      }, true);
	*      healthyList.callAll('attack');
	* 
	* Note: Currently this will skip any children which are Groups themselves.
	* 
	* @param predicate The function that each child will be evaluated against. Each child of the group will be passed to it as its first parameter, the index as the second, and the entire child array as the third
	* @param checkExists If true, only existing can be selected; otherwise all children can be selected and will be passed to the predicate.
	* @return Returns an array list containing all the children that the predicate returned true for
	*/
	function filter(predicate:Dynamic, ?checkExists:Bool):ArraySet;
	
	/**
	* Returns all children in this Group.
	* 
	* You can optionally specify a matching criteria using the `property` and `value` arguments.
	* 
	* For example: `getAll('exists', true)` would return only children that have their exists property set.
	* 
	* Optionally you can specify a start and end index. For example if this Group had 100 children,
	* and you set `startIndex` to 0 and `endIndex` to 50, it would return a random child from only
	* the first 50 children in the Group.
	* 
	* @param property An optional property to test against the value argument.
	* @param value If property is set then Child.property must strictly equal this value to be included in the results.
	* @param startIndex The first child index to start the search from.
	* @param endIndex The last child index to search up until.
	* @return A random existing child of this Group.
	*/
	function getAll(property:String, value:Dynamic, startIndex:Float, endIndex:Float):Dynamic;
	
	/**
	* Returns the child found at the given index within this group.
	* 
	* @param index The index to return the child from.
	* @return The child that was found at the given index, or -1 for an invalid index.
	*/
	function getAt(index:Float):EitherType<pixi.DisplayObject, Float>;
	
	/**
	* Returns the child at the bottom of this group.
	* 
	* The bottom child the child being displayed (rendered) below every other child.
	* 
	* @return The child at the bottom of the Group.
	*/
	function getBottom():Dynamic;
	
	/**
	* Searches the Group for the first instance of a child with the `name`
	* property matching the given argument. Should more than one child have
	* the same name only the first instance is returned.
	* 
	* @param name The name to search for.
	* @return The first child with a matching name, or null if none were found.
	*/
	function getByName(name:String):Dynamic;
	
	/**
	* Get the closest child to given Object, with optional callback to filter children.
	* 
	* This can be a Sprite, Group, Image or any object with public x and y properties.
	* 
	* 'close' is determined by the distance from the objects `x` and `y` properties compared to the childs `x` and `y` properties.
	* 
	* You can use the optional `callback` argument to apply your own filter to the distance checks.
	* If the child is closer then the previous child, it will be sent to `callback` as the first argument,
	* with the distance as the second. The callback should return `true` if it passes your
	* filtering criteria, otherwise it should return `false`.
	* 
	* @param object The object used to determine the distance. This can be a Sprite, Group, Image or any object with public x and y properties.
	* @param callback The function that each child will be evaluated against. Each child of the group will be passed to it as its first parameter, with the distance as the second. It should return `true` if the child passes the matching criteria.
	* @param callbackContext The context in which the function should be called (usually 'this').
	* @return The child closest to given object, or `null` if no child was found.
	*/
	function getClosestTo(object:Dynamic, ?callback:Dynamic, ?callbackContext:Dynamic):Dynamic;
	
	/**
	* Get the first child that is alive (`child.alive === true`).
	* 
	* This is handy for choosing a squad leader, etc.
	* 
	* You can use the optional argument `createIfNull` to create a new Game Object if no alive ones were found in this Group.
	* 
	* It works by calling `Group.create` passing it the parameters given to this method, and returning the new child.
	* 
	* If a child *was* found , `createIfNull` is `false` and you provided the additional arguments then the child
	* will be reset and/or have a new texture loaded on it. This is handled by `Group.resetChild`.
	* 
	* @param createIfNull If `true` and no alive children are found a new one is created.
	* @param x The x coordinate to reset the child to. The value is in relation to the group.x point.
	* @param y The y coordinate to reset the child to. The value is in relation to the group.y point.
	* @param key This is the image or texture used by the Sprite during rendering. It can be a string which is a reference to the Cache Image entry, or an instance of a RenderTexture, BitmapData, Video or PIXI.Texture.
	* @param frame If this Sprite is using part of a sprite sheet or texture atlas you can specify the exact frame to use by giving a string or numeric index.
	* @return The alive dead child, or `null` if none found and `createIfNull` was false.
	*/
	function getFirstAlive(?createIfNull:Bool, ?x:Float, ?y:Float, ?key:EitherType<String, EitherType<phaser.RenderTexture, EitherType<phaser.BitmapData, EitherType<phaser.Video, pixi.Texture>>>>, ?frame:EitherType<String, Float>):Dynamic;
	
	/**
	* Get the first child that is dead (`child.alive === false`).
	* 
	* This is handy for checking if everything has been wiped out and adding to the pool as needed.
	* 
	* You can use the optional argument `createIfNull` to create a new Game Object if no dead ones were found in this Group.
	* 
	* It works by calling `Group.create` passing it the parameters given to this method, and returning the new child.
	* 
	* If a child *was* found , `createIfNull` is `false` and you provided the additional arguments then the child
	* will be reset and/or have a new texture loaded on it. This is handled by `Group.resetChild`.
	* 
	* @param createIfNull If `true` and no dead children are found a new one is created.
	* @param x The x coordinate to reset the child to. The value is in relation to the group.x point.
	* @param y The y coordinate to reset the child to. The value is in relation to the group.y point.
	* @param key This is the image or texture used by the Sprite during rendering. It can be a string which is a reference to the Cache Image entry, or an instance of a RenderTexture, BitmapData, Video or PIXI.Texture.
	* @param frame If this Sprite is using part of a sprite sheet or texture atlas you can specify the exact frame to use by giving a string or numeric index.
	* @return The first dead child, or `null` if none found and `createIfNull` was false.
	*/
	function getFirstDead(?createIfNull:Bool, ?x:Float, ?y:Float, ?key:EitherType<String, EitherType<phaser.RenderTexture, EitherType<phaser.BitmapData, EitherType<phaser.Video, pixi.Texture>>>>, ?frame:EitherType<String, Float>):Dynamic;
	
	/**
	* Get the first display object that exists, or doesn't exist.
	* 
	* You can use the optional argument `createIfNull` to create a new Game Object if none matching your exists argument were found in this Group.
	* 
	* It works by calling `Group.create` passing it the parameters given to this method, and returning the new child.
	* 
	* If a child *was* found , `createIfNull` is `false` and you provided the additional arguments then the child
	* will be reset and/or have a new texture loaded on it. This is handled by `Group.resetChild`.
	* 
	* @param exists If true, find the first existing child; otherwise find the first non-existing child. - Default: true
	* @param createIfNull If `true` and no alive children are found a new one is created.
	* @param x The x coordinate to reset the child to. The value is in relation to the group.x point.
	* @param y The y coordinate to reset the child to. The value is in relation to the group.y point.
	* @param key This is the image or texture used by the Sprite during rendering. It can be a string which is a reference to the Cache Image entry, or an instance of a RenderTexture, BitmapData, Video or PIXI.Texture.
	* @param frame If this Sprite is using part of a sprite sheet or texture atlas you can specify the exact frame to use by giving a string or numeric index.
	* @return The first child, or `null` if none found and `createIfNull` was false.
	*/
	function getFirstExists(exists:Bool, ?createIfNull:Bool, ?x:Float, ?y:Float, ?key:EitherType<String, EitherType<phaser.RenderTexture, EitherType<phaser.BitmapData, EitherType<phaser.Video, pixi.Texture>>>>, ?frame:EitherType<String, Float>):Dynamic;
	
	/**
	* Get the child furthest away from the given Object, with optional callback to filter children.
	* 
	* This can be a Sprite, Group, Image or any object with public x and y properties.
	* 
	* 'furthest away' is determined by the distance from the objects `x` and `y` properties compared to the childs `x` and `y` properties.
	* 
	* You can use the optional `callback` argument to apply your own filter to the distance checks.
	* If the child is closer then the previous child, it will be sent to `callback` as the first argument,
	* with the distance as the second. The callback should return `true` if it passes your
	* filtering criteria, otherwise it should return `false`.
	* 
	* @param object The object used to determine the distance. This can be a Sprite, Group, Image or any object with public x and y properties.
	* @param callback The function that each child will be evaluated against. Each child of the group will be passed to it as its first parameter, with the distance as the second. It should return `true` if the child passes the matching criteria.
	* @param callbackContext The context in which the function should be called (usually 'this').
	* @return The child furthest from the given object, or `null` if no child was found.
	*/
	function getFurthestFrom(object:Dynamic, ?callback:Dynamic, ?callbackContext:Dynamic):Dynamic;
	
	/**
	* Get the index position of the given child in this group, which should match the child's `z` property.
	* 
	* @param child The child to get the index for.
	* @return The index of the child or -1 if it's not a member of this group.
	*/
	function getIndex(child:Dynamic):Float;
	
	/**
	* Returns a random child from the group.
	* 
	* @param startIndex Offset from the front of the group (lowest child).
	* @param length Restriction on the number of values you want to randomly select from. - Default: (to top)
	* @return A random child of this Group.
	*/
	function getRandom(?startIndex:Float, ?length:Float):Dynamic;
	
	/**
	* Return the child at the top of this group.
	* 
	* The top child is the child displayed (rendered) above every other child.
	* 
	* @return The child at the top of the Group.
	*/
	function getTop():Dynamic;
	
	/**
	* Checks if the child has the given property.
	* 
	* Will scan up to 4 levels deep only.
	* 
	* @param child The child to check for the existence of the property on.
	* @param key An array of strings that make up the property.
	* @return True if the child has the property, otherwise false.
	*/
	function hasProperty(child:Dynamic, key:Array<String>):Bool;
	
	/**
	* Iterates over the children of the group performing one of several actions for matched children.
	* 
	* A child is considered a match when it has a property, named `key`, whose value is equal to `value`
	* according to a strict equality comparison.
	* 
	* The result depends on the `returnType`:
	* 
	* - {@link Phaser.Group.RETURN_TOTAL RETURN_TOTAL}:
	*      The callback, if any, is applied to all matching children. The number of matched children is returned.
	* - {@link Phaser.Group.RETURN_NONE RETURN_NONE}:
	*      The callback, if any, is applied to all matching children. No value is returned.
	* - {@link Phaser.Group.RETURN_CHILD RETURN_CHILD}:
	*      The callback, if any, is applied to the *first* matching child and the *first* matched child is returned.
	*      If there is no matching child then null is returned.
	* 
	* If `args` is specified it must be an array. The matched child will be assigned to the first
	* element and the entire array will be applied to the callback function.
	* 
	* @param key The child property to check, i.e. 'exists', 'alive', 'health'
	* @param value A child matches if `child[key] === value` is true.
	* @param returnType How to iterate the children and what to return.
	* @param callback Optional function that will be called on each matching child. The matched child is supplied as the first argument.
	* @param callbackContext The context in which the function should be called (usually 'this').
	* @param args The arguments supplied to to the callback; the first array index (argument) will be replaced with the matched child. - Default: (none)
	* @return Returns either an integer (for RETURN_TOTAL), the first matched child (for RETURN_CHILD), or null.
	*/
	function iterate(key:String, value:Dynamic, returnType:Float, ?callback:Dynamic, ?callbackContext:Dynamic, args:Rest<Dynamic>):Dynamic;
	
	/**
	* Moves all children from this Group to the Group given.
	* 
	* @param group The new Group to which the children will be moved to.
	* @param silent If true the children will not dispatch the `onAddedToGroup` event for the new Group.
	* @return The Group to which all the children were moved.
	*/
	function moveAll(group:phaser.Group, ?silent:Bool):phaser.Group;
	
	/**
	* Moves the given child down one place in this group unless it's already at the bottom.
	* 
	* @param child The child to move down in the group.
	* @return The child that was moved.
	*/
	function moveDown(child:Dynamic):Dynamic;
	
	/**
	* Moves the given child up one place in this group unless it's already at the top.
	* 
	* @param child The child to move up in the group.
	* @return The child that was moved.
	*/
	function moveUp(child:Dynamic):Dynamic;
	
	/**
	* Multiplies the given property by the amount on all children in this group.
	* 
	* `Group.multiplyAll('x', 2)` will x2 the child.x value for each child.
	* 
	* @param property The property to multiply, for example 'body.velocity.x' or 'angle'.
	* @param amount The amount to multiply the property by. If child.x = 10 then multiplyAll('x', 2) would make child.x = 20.
	* @param checkAlive If true the property will only be changed if the child is alive.
	* @param checkVisible If true the property will only be changed if the child is visible.
	*/
	function multiplyAll(property:String, amount:Float, checkAlive:Bool, checkVisible:Bool):Void;
	
	/**
	* Advances the group cursor to the next (higher) object in the group.
	* 
	* If the cursor is at the end of the group (top child) it is moved the start of the group (bottom child).
	* 
	* @return The child the cursor now points to.
	*/
	function next():Dynamic;
	
	/**
	* The core postUpdate - as called by World.
	*/
	function postUpdate():Void;
	
	/**
	* The core preUpdate - as called by World.
	*/
	function preUpdate():Void;
	
	/**
	* Moves the group cursor to the previous (lower) child in the group.
	* 
	* If the cursor is at the start of the group (bottom child) it is moved to the end (top child).
	* 
	* @return The child the cursor now points to.
	*/
	function previous():Void;
	
	/**
	* Removes the given child from this group.
	* 
	* This will dispatch an `onRemovedFromGroup` event from the child (if it has one), and optionally destroy the child.
	* 
	* If the group cursor was referring to the removed child it is updated to refer to the next child.
	* 
	* @param child The child to remove.
	* @param destroy If true `destroy` will be invoked on the removed child.
	* @param silent If true the the child will not dispatch the `onRemovedFromGroup` event.
	* @return true if the child was removed from this group, otherwise false.
	*/
	function remove(child:Dynamic, ?destroy:Bool, ?silent:Bool):Bool;
	
	/**
	* Removes all children from this Group, but does not remove the group from its parent.
	* 
	* The children can be optionally destroyed as they are removed.
	* 
	* You can also optionally also destroy the BaseTexture the Child is using. Be careful if you've
	* more than one Game Object sharing the same BaseTexture.
	* 
	* @param destroy If true `destroy` will be invoked on each removed child.
	* @param silent If true the children will not dispatch their `onRemovedFromGroup` events.
	* @param destroyTexture If true, and if the `destroy` argument is also true, the BaseTexture belonging to the Child is also destroyed. Note that if another Game Object is sharing the same BaseTexture it will invalidate it.
	*/
	function removeAll(?destroy:Bool, ?silent:Bool, ?destroyTexture:Bool):Void;
	
	/**
	* Removes all children from this group whose index falls beteen the given startIndex and endIndex values.
	* 
	* @param startIndex The index to start removing children from.
	* @param endIndex The index to stop removing children at. Must be higher than startIndex. If undefined this method will remove all children between startIndex and the end of the group.
	* @param destroy If true `destroy` will be invoked on each removed child.
	* @param silent If true the children will not dispatch their `onRemovedFromGroup` events.
	*/
	function removeBetween(startIndex:Float, ?endIndex:Float, ?destroy:Bool, ?silent:Bool):Void;
	
	/**
	* Removes a child of this Group from the hash array.
	* This call will return false if the child is not in the hash.
	* 
	* @param child The display object to remove from this Groups hash. Must be a member of this Group and in the hash.
	* @return True if the child was successfully removed from the hash, otherwise false.
	*/
	function removeFromHash(child:pixi.DisplayObject):Bool;
	
	/**
	* Replaces a child of this Group with the given newChild. The newChild cannot be a member of this Group.
	* 
	* If `Group.enableBody` is set, then a physics body will be created on the object, so long as one does not already exist.
	* 
	* If `Group.inputEnableChildren` is set, then an Input Handler will be created on the object, so long as one does not already exist.
	* 
	* @param oldChild The child in this group that will be replaced.
	* @param newChild The child to be inserted into this group.
	* @return Returns the oldChild that was replaced within this group.
	*/
	function replace(oldChild:Dynamic, newChild:Dynamic):Dynamic;
	
	/**
	* Takes a child and if the `x` and `y` arguments are given it calls `child.reset(x, y)` on it.
	* 
	* If the `key` and optionally the `frame` arguments are given, it calls `child.loadTexture(key, frame)` on it.
	* 
	* The two operations are separate. For example if you just wish to load a new texture then pass `null` as the x and y values.
	* 
	* @param child The child to reset and/or load the texture on.
	* @param x The x coordinate to reset the child to. The value is in relation to the group.x point.
	* @param y The y coordinate to reset the child to. The value is in relation to the group.y point.
	* @param key This is the image or texture used by the Sprite during rendering. It can be a string which is a reference to the Cache Image entry, or an instance of a RenderTexture, BitmapData, Video or PIXI.Texture.
	* @param frame If this Sprite is using part of a sprite sheet or texture atlas you can specify the exact frame to use by giving a string or numeric index.
	* @return The child that was reset: usually a {
	* @link Phaser.Sprite}.
	*/
	function resetChild(child:Dynamic, ?x:Float, ?y:Float, ?key:EitherType<String, EitherType<phaser.RenderTexture, EitherType<phaser.BitmapData, EitherType<phaser.Video, pixi.Texture>>>>, ?frame:EitherType<String, Float>):Dynamic;
	
	/**
	* Sets the group cursor to the first child in the group.
	* 
	* If the optional index parameter is given it sets the cursor to the object at that index instead.
	* 
	* @param index Set the cursor to point to a specific index.
	* @return The child the cursor now points to.
	*/
	function resetCursor(?index:Float):Dynamic;
	
	/**
	* Reverses all children in this group.
	* 
	* This operation applies only to immediate children and does not propagate to subgroups.
	*/
	function reverse():Void;
	
	/**
	* Sends the given child to the bottom of this group so it renders below all other children.
	* 
	* @param child The child to send to the bottom of this group.
	* @return The child that was moved.
	*/
	function sendToBack(child:Dynamic):Dynamic;
	
	/**
	* Quickly set a property on a single child of this group to a new value.
	* 
	* The operation parameter controls how the new value is assigned to the property, from simple replacement to addition and multiplication.
	* 
	* @param child The child to set the property on.
	* @param key The property, as a string, to be set. For example: 'body.velocity.x'
	* @param value The value that will be set.
	* @param checkAlive If set then the child will only be updated if alive=true.
	* @param checkVisible If set then the child will only be updated if visible=true.
	* @param operation Controls how the value is assigned. A value of 0 replaces the value with the new one. A value of 1 adds it, 2 subtracts it, 3 multiplies it and 4 divides it.
	* @param force If `force` is true then the property will be set on the child regardless if it already exists or not. If false and the property doesn't exist, nothing will be set.
	* @return True if the property was set, false if not.
	*/
	function set(child:Dynamic, key:Array<String>, value:Dynamic, ?operation:Float, ?force:Bool):Bool;
	
	/**
	* Quickly set the same property across all children of this group to a new value.
	* 
	* This call doesn't descend down children, so if you have a Group inside of this group, the property will be set on the group but not its children.
	* If you need that ability please see `Group.setAllChildren`.
	* 
	* The operation parameter controls how the new value is assigned to the property, from simple replacement to addition and multiplication.
	* 
	* @param key The property, as a string, to be set. For example: 'body.velocity.x'
	* @param value The value that will be set.
	* @param checkAlive If set then only children with alive=true will be updated. This includes any Groups that are children.
	* @param checkVisible If set then only children with visible=true will be updated. This includes any Groups that are children.
	* @param operation Controls how the value is assigned. A value of 0 replaces the value with the new one. A value of 1 adds it, 2 subtracts it, 3 multiplies it and 4 divides it.
	* @param force If `force` is true then the property will be set on the child regardless if it already exists or not. If false and the property doesn't exist, nothing will be set.
	*/
	function setAll(key:String, value:Dynamic, ?checkAlive:Bool, ?checkVisible:Bool, ?operation:Float, ?force:Bool):Void;
	
	/**
	* Quickly set the same property across all children of this group, and any child Groups, to a new value.
	* 
	* If this group contains other Groups then the same property is set across their children as well, iterating down until it reaches the bottom.
	* Unlike with `setAll` the property is NOT set on child Groups itself.
	* 
	* The operation parameter controls how the new value is assigned to the property, from simple replacement to addition and multiplication.
	* 
	* @param key The property, as a string, to be set. For example: 'body.velocity.x'
	* @param value The value that will be set.
	* @param checkAlive If set then only children with alive=true will be updated. This includes any Groups that are children.
	* @param checkVisible If set then only children with visible=true will be updated. This includes any Groups that are children.
	* @param operation Controls how the value is assigned. A value of 0 replaces the value with the new one. A value of 1 adds it, 2 subtracts it, 3 multiplies it and 4 divides it.
	* @param force If `force` is true then the property will be set on the child regardless if it already exists or not. If false and the property doesn't exist, nothing will be set.
	*/
	function setAllChildren(key:String, value:Dynamic, ?checkAlive:Bool, ?checkVisible:Bool, ?operation:Float, ?force:Bool):Void;
	
	/**
	* Sets a property to the given value on the child. The operation parameter controls how the value is set.
	* 
	* The operations are:
	* - 0: set the existing value to the given value; if force is `true` a new property will be created if needed
	* - 1: will add the given value to the value already present.
	* - 2: will subtract the given value from the value already present.
	* - 3: will multiply the value already present by the given value.
	* - 4: will divide the value already present by the given value.
	* 
	* @param child The child to set the property value on.
	* @param key An array of strings that make up the property that will be set.
	* @param value The value that will be set.
	* @param operation Controls how the value is assigned. A value of 0 replaces the value with the new one. A value of 1 adds it, 2 subtracts it, 3 multiplies it and 4 divides it.
	* @param force If `force` is true then the property will be set on the child regardless if it already exists or not. If false and the property doesn't exist, nothing will be set.
	* @return True if the property was set, false if not.
	*/
	function setProperty(child:Dynamic, key:Array<String>, value:Dynamic, ?operation:Float, ?force:Bool):Bool;
	
	/**
	* Sort the children in the group according to a particular key and ordering.
	* 
	* Call this function to sort the group according to a particular key value and order.
	* 
	* For example to depth sort Sprites for Zelda-style game you might call `group.sort('y', Phaser.Group.SORT_ASCENDING)` at the bottom of your `State.update()`.
	* 
	* Internally this uses a standard JavaScript Array sort, so everything that applies there also applies here, including
	* alphabetical sorting, mixing strings and numbers, and Unicode sorting. See MDN for more details.
	* 
	* @param key The name of the property to sort on. Defaults to the objects z-depth value. - Default: 'z'
	* @param order Order ascending ({
	* @link Phaser.Group.SORT_ASCENDING SORT_ASCENDING}) or descending ({
	* @link Phaser.Group.SORT_DESCENDING SORT_DESCENDING}). - Default: Phaser.Group.SORT_ASCENDING
	*/
	function sort(?key:String, ?order:Float):Void;
	
	/**
	* Subtracts the amount from the given property on all children in this group.
	* 
	* `Group.subAll('x', 10)` will minus 10 from the child.x value for each child.
	* 
	* @param property The property to decrement, for example 'body.velocity.x' or 'angle'.
	* @param amount The amount to subtract from the property. If child.x = 50 then subAll('x', 40) would make child.x = 10.
	* @param checkAlive If true the property will only be changed if the child is alive.
	* @param checkVisible If true the property will only be changed if the child is visible.
	*/
	function subAll(property:String, amount:Float, checkAlive:Bool, checkVisible:Bool):Void;
	
	/**
	* Swaps the position of two children in this group.
	* 
	* Both children must be in this group, a child cannot be swapped with itself, and unparented children cannot be swapped.
	* 
	* @param child1 The first child to swap.
	* @param child2 The second child to swap.
	*/
	function swap(child1:Dynamic, child2:Dynamic):Bool;
	
	/**
	* The core update - as called by World.
	* 
	* Children with `exists = false` are updated unless {@link Phaser.Group#updateOnlyExistingChildren updateOnlyExistingChildren} is true.
	*/
	function update():Void;
	
	/**
	* Internal method that re-applies all of the children's Z values.
	* 
	* This must be called whenever children ordering is altered so that their `z` indices are correctly updated.
	*/
	function updateZ():Void;
	
	/**
	* Positions the child found at the given index within this group to the given x and y coordinates.
	* 
	* @param index The index of the child in the group to set the position of.
	* @param x The new x position of the child.
	* @param y The new y position of the child.
	*/
	function xy(index:Float, x:Float, y:Float):Void;
	
}

