package phaser.core;

@:native("Phaser.Group")
extern class Group extends phaser.pixi.display.DisplayObjectContainer {
	
	function new (game:phaser.core.Game, ?parent:phaser.pixi.display.DisplayObject=null, ?name:String, ?addToStage:Bool=false, ?enableBody:Bool=false,?physicsBodyType:Int=0);
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * A name for this group. Not used internally but useful for debugging.
	 */
	var name:String;
	
	/**
	 * The z-depth value of this object within its parent container/Group - the World is a Group as well.
	 * This value must be unique for each child in a Group.
	 */
	var z:Int;
	
	/**
	 * Internal Phaser Type value.
	 */
	var type:Int;
	
	/**
	 * The const physics body type of this object.
	 */
	var physicsType(default, null):Float;
	
	/**
	 * The alive property is useful for Groups that are children of other Groups and need to be included/excluded in checks like forEachAlive.
	 */
	var alive:Bool;
	
	/**
	 * If exists is true the group is updated, otherwise it is skipped.
	 */
	var exists:Bool;
	
	/**
	 * A group with ignoreDestroy set to true ignores all calls to its destroy method.
	 */
	var ignoreDestroy:Bool;
	
	/**
	 * A Group is that has pendingDestroy set to true is flagged to have its destroy method 
	 * called on the next logic update.
	 * You can set it directly to flag the Group to be destroyed on its next update.
	 * 
	 * This is extremely useful if you wish to destroy a Group from within one of its own callbacks 
	 * or a callback of one of its children.
	 */
	var pendingDestroy:Bool;
	
	/**
	 * The type of objects that will be created when using {@link #create} or {@link #createMultiple}.
	 * 
	 * Any object may be used but it should extend either Sprite or Image and accept the same constructor arguments:
	 * when a new object is created it is passed the following parameters to its constructor: (game, x, y, key, frame).
	 */
	var classType:Dynamic;
	
	/**
	 * The current display object that the group cursor is pointing to, if any. (Can be set manually.)
	 * 
	 * The cursor is a way to iterate through the children in a Group using {@link #next} and {@link #previous}.
	 */
	var cursor:Dynamic;
	
	/**
	 * If true all Sprites created by, or added to this group, will have a physics body enabled on them.
	 * 
	 * The default body type is controlled with {@link #physicsBodyType}.
	 */
	var enableBody:Bool;
	
	/**
	 * If true when a physics body is created (via {@link #enableBody}) it will create a physics debug object as well.
	 * 
	 * This only works for P2 bodies.
	 */
	var enableBodyDebug:Bool;
	
	/**
	 * If {@link #enableBody} is true this is the type of physics body that is created on new Sprites.
	 * 
	 * The valid values are {@link Phaser.Physics.ARCADE}, {@link Phaser.Physics.P2JS}, {@link Phaser.Physics.NINJA}, etc.
	 */
	var physicsBodyType:Int;
	
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
	 * If set to null the Group will use whatever Phaser.Physics.Arcade.sortDirection is set to. This is the default behavior.
	 */
	var physicsSortDirection:Int;
	
	/**
	 * This signal is dispatched when the group is destroyed.
	 */
	var onDestroy:phaser.core.Signal;
	
	/**
	 * The current index of the Group cursor. Advance it with Group.next.
	 */
	var cursorIndex:Int;
	
	/**
	 * A Group that is fixed to the camera uses its x/y coordinates as offsets from the top left of the camera. These are stored in Group.cameraOffset.
	 * 
	 * Note that the cameraOffset values are in addition to any parent in the display list.
	 * So if this Group was in a Group that has x: 200, then this will be added to the cameraOffset.x
	 */
	var fixedToCamera:Bool;
	
	/**
	 * If this object is {@link #fixedToCamera} then this stores the x/y position offset relative to the top-left of the camera view.
	 * If the parent of this Group is also fixedToCamera then the offset here is in addition to that and should typically be disabled.
	 */
	var cameraOffset:phaser.geom.Point;
	
	/**
	 * The hash array is an array belonging to this Group into which you can add any of its children via Group.addToHash and Group.removeFromHash.
	 * 
	 * Only children of this Group can be added to and removed from the hash.
	 * 
	 * This hash is used automatically by Phaser Arcade Physics in order to perform non z-index based destructive sorting.
	 * However if you don't use Arcade Physics, or this isn't a physics enabled Group, then you can use the hash to perform your own
	 * sorting and filtering of Group children without touching their z-index (and therefore display draw order)
	 */
	var hash:Array<Dynamic>;
	
	/**
	 * The property on which children are sorted.
	 */
	var sortProperty:String;
	
	/**
	 * Adds an existing object as the top child in this group.
	 * 
	 * The child is automatically added to the top of the group and is displayed on top of every previous child.
	 * 
	 * If Group.enableBody is set then a physics body will be created on the object, so long as one does not already exist.
	 * 
	 * Use {@link #addAt} to control where a child is added. Use {@link #create} to create and add a new child.
	 */
	function add (child:Dynamic, ?silent:Bool = false):Dynamic;
	
	/**
	 * Adds a child of this Group into the hash array.
	 * This call will return false if the child is not a child of this Group, or is already in the hash.
	 */
	function addToHash (child:Dynamic):Bool;
	
	/**
	 * Removes a child of this Group from the hash array.
	 * This call will return false if the child is not in the hash.
	 */
	function removeFromHash (child:Dynamic):Bool;
	
	/**
	 * Adds an array of existing Display Objects to this Group.
	 * 
	 * The Display Objects are automatically added to the top of this Group, and will render on-top of everything already in this Group.
	 * 
	 * As well as an array you can also pass another Group as the first argument. In this case all of the children from that
	 * Group will be removed from it and added into this Group.
	 */
	@:overload(function (children:Dynamic, ?silent:Bool = false):Dynamic {})
	function addMultiple (children:phaser.core.Group, ?silent:Bool = false):Dynamic;
	
	/**
	 * Adds an existing object to this group.
	 * 
	 * The child is added to the group at the location specified by the index value, this allows you to control child ordering.
	 */
	function addAt (child:Dynamic, ?index:Int = 0, ?silent:Bool = false):Dynamic;
	
	/**
	 * Returns the child found at the given index within this group.
	 */
	function getAt (index:Int):Dynamic;
	
	/**
	 * Creates a new Phaser.Sprite object and adds it to the top of this group.
	 * 
	 * Use {@link #classType} to change the type of object created.
	 */
	@:overload(function (x:Float, y:Float, ?key:String, ?frame:String, ?exists:Bool = true):Dynamic {})
	@:overload(function (x:Float, y:Float, ?key:phaser.gameobjects.RenderTexture, ?frame:String, ?exists:Bool = true):Dynamic {})
	@:overload(function (x:Float, y:Float, ?key:phaser.gameobjects.BitmapData, ?frame:String, ?exists:Bool = true):Dynamic {})
	@:overload(function (x:Float, y:Float, ?key:phaser.gameobjects.Video, ?frame:String, ?exists:Bool = true):Dynamic {})
	@:overload(function (x:Float, y:Float, ?key:phaser.pixi.textures.Texture, ?frame:String, ?exists:Bool = true):Dynamic {})
	@:overload(function (x:Float, y:Float, ?key:String, ?frame:Float, ?exists:Bool = true):Dynamic {})
	@:overload(function (x:Float, y:Float, ?key:phaser.gameobjects.RenderTexture, ?frame:Float, ?exists:Bool = true):Dynamic {})
	@:overload(function (x:Float, y:Float, ?key:phaser.gameobjects.BitmapData, ?frame:Float, ?exists:Bool = true):Dynamic {})
	@:overload(function (x:Float, y:Float, ?key:phaser.gameobjects.Video, ?frame:Float, ?exists:Bool = true):Dynamic {})
	function create (x:Float, y:Float, ?key:phaser.pixi.textures.Texture, ?frame:Float, ?exists:Bool = true):Dynamic;
	
	/**
	 * Creates multiple Phaser.Sprite objects and adds them to the top of this group.
	 * 
	 * Useful if you need to quickly generate a pool of identical sprites, such as bullets.
	 * 
	 * By default the sprites will be set to not exist and will be positioned at 0, 0 (relative to the group.x/y).
	 * Use {@link #classType} to change the type of object created.
	 */
	@:overload(function (quantity:Int, key:String, ?frame:Int, ?exists:Bool = false):Void {})
	function createMultiple (quantity:Int, key:String, ?frame:String, ?exists:Bool = false):Void;
	
	/**
	 * Internal method that re-applies all of the children's Z values.
	 * 
	 * This must be called whenever children ordering is altered so that their z indices are correctly updated.
	 */
	function updateZ ():Void;
	
	/**
	 * Sets the group cursor to the first child in the group.
	 * 
	 * If the optional index parameter is given it sets the cursor to the object at that index instead.
	 */
	function resetCursor (?index:Int = 0):Dynamic;
	
	/**
	 * Advances the group cursor to the next (higher) object in the group.
	 * 
	 * If the cursor is at the end of the group (top child) it is moved the start of the group (bottom child).
	 */
	function next ():Dynamic;
	
	/**
	 * Moves the group cursor to the previous (lower) child in the group.
	 * 
	 * If the cursor is at the start of the group (bottom child) it is moved to the end (top child).
	 */
	function previous ():Dynamic;
	
	/**
	 * Swaps the position of two children in this group.
	 * 
	 * Both children must be in this group, a child cannot be swapped with itself, and unparented children cannot be swapped.
	 */
	function swap (child1:Dynamic, child2:Dynamic):Void;
	
	/**
	 * Brings the given child to the top of this group so it renders above all other children.
	 */
	function bringToTop (child:Dynamic):Dynamic;
	
	/**
	 * Sends the given child to the bottom of this group so it renders below all other children.
	 */
	function sendToBack (child:Dynamic):Dynamic;
	
	/**
	 * Moves the given child up one place in this group unless it's already at the top.
	 */
	function moveUp (child:Dynamic):Dynamic;
	
	/**
	 * Moves the given child down one place in this group unless it's already at the bottom.
	 */
	function moveDown (child:Dynamic):Dynamic;
	
	/**
	 * Positions the child found at the given index within this group to the given x and y coordinates.
	 */
	function xy (index:Int, x:Float, y:Float):Void;
	
	/**
	 * Reverses all children in this group.
	 * 
	 * This operation applies only to immediate children and does not propagate to subgroups.
	 */
	function reverse ():Void;
	
	/**
	 * Get the index position of the given child in this group, which should match the child's z property.
	 */
	function getIndex (child:Dynamic):Int;
	
	/**
	 * Replaces a child of this group with the given newChild. The newChild cannot be a member of this group.
	 */
	function replace (oldChild:Dynamic, newChild:Dynamic):Dynamic;
	
	/**
	 * Checks if the child has the given property.
	 * 
	 * Will scan up to 4 levels deep only.
	 */
	function hasProperty (child:Dynamic, key:Dynamic):Bool;
	
	/**
	 * Sets a property to the given value on the child. The operation parameter controls how the value is set.
	 * 
	 * The operations are:
	 * - 0: set the existing value to the given value; if force is true a new property will be created if needed
	 * - 1: will add the given value to the value already present.
	 * - 2: will subtract the given value from the value already present.
	 * - 3: will multiply the value already present by the given value.
	 * - 4: will divide the value already present by the given value.
	 */
	function setProperty (child:Dynamic, key:Array<Dynamic>, value:Dynamic, ?operation:Int = 0, ?force:Bool = false):Bool;
	
	/**
	 * Checks a property for the given value on the child.
	 */
	function checkProperty (child:Dynamic, key:Array<Dynamic>, value:Dynamic, ?force:Bool = false):Bool;
	
	/**
	 * Quickly set a property on a single child of this group to a new value.
	 * 
	 * The operation parameter controls how the new value is assigned to the property, from simple replacement to addition and multiplication.
	 */
	function set (child:phaser.gameobjects.Sprite, key:String, value:Dynamic, ?checkAlive:Bool = false, ?checkVisible:Bool = false, ?operation:Int = 0, ?force:Bool = false):Bool;
	
	/**
	 * Quickly set the same property across all children of this group to a new value.
	 * 
	 * This call doesn't descend down children, so if you have a Group inside of this group, the property will be set on the group but not its children.
	 * If you need that ability please see Group.setAllChildren.
	 * 
	 * The operation parameter controls how the new value is assigned to the property, from simple replacement to addition and multiplication.
	 */
	function setAll (key:String, value:Dynamic, ?checkAlive:Bool = false, ?checkVisible:Bool = false, ?operation:Int = 0, ?force:Bool = false):Void;
	
	/**
	 * Quickly set the same property across all children of this group, and any child Groups, to a new value.
	 * 
	 * If this group contains other Groups then the same property is set across their children as well, iterating down until it reaches the bottom.
	 * Unlike with setAll the property is NOT set on child Groups itself.
	 * 
	 * The operation parameter controls how the new value is assigned to the property, from simple replacement to addition and multiplication.
	 */
	function setAllChildren (key:String, value:Dynamic, ?checkAlive:Bool = false, ?checkVisible:Bool = false, ?operation:Int = 0, ?force:Bool = false):Void;
	
	/**
	 * Quickly check that the same property across all children of this group is equal to the given value.
	 * 
	 * This call doesn't descend down children, so if you have a Group inside of this group, the property will be checked on the group but not its children.
	 */
	function checkAll (key:String, value:Dynamic, ?checkAlive:Bool = false, ?checkVisible:Bool = false, ?force:Bool = false):Void;
	
	/**
	 * Adds the amount to the given property on all children in this group.
	 * 
	 * Group.addAll('x', 10) will add 10 to the child.x value for each child.
	 */
	function addAll (property:String, amount:Float, checkAlive:Bool, checkVisible:Bool):Void;
	
	/**
	 * Subtracts the amount from the given property on all children in this group.
	 * 
	 * Group.subAll('x', 10) will minus 10 from the child.x value for each child.
	 */
	function subAll (property:String, amount:Float, checkAlive:Bool, checkVisible:Bool):Void;
	
	/**
	 * Multiplies the given property by the amount on all children in this group.
	 * 
	 * Group.multiplyAll('x', 2) will x2 the child.x value for each child.
	 */
	function multiplyAll (property:String, amount:Float, checkAlive:Bool, checkVisible:Bool):Void;
	
	/**
	 * Divides the given property by the amount on all children in this group.
	 * 
	 * Group.divideAll('x', 2) will half the child.x value for each child.
	 */
	function divideAll (property:String, amount:Float, checkAlive:Bool, checkVisible:Bool):Void;
	
	/**
	 * Calls a function, specified by name, on all children in the group who exist (or do not exist).
	 * 
	 * After the existsValue parameter you can add as many parameters as you like, which will all be passed to the child callback.
	 */
	function callAllExists (callback:String, existsValue:Bool, ?parameter0:Dynamic, ?parameter1:Dynamic, ?parameter2:Dynamic, ?parameter3:Dynamic, ?parameter4:Dynamic):Void;
	
	/**
	 * Returns a reference to a function that exists on a child of the group based on the given callback array.
	 */
	function callbackFromArray (child:Dynamic, callback:Array<Dynamic>, length:Int):Void;
	
	/**
	 * Calls a function, specified by name, on all on children.
	 * 
	 * The function is called for all children regardless if they are dead or alive (see callAllExists for different options).
	 * After the method parameter and context you can add as many extra parameters as you like, which will all be passed to the child.
	 */
	function callAll (method:String, ?context:String, ?args0:Dynamic, ?args1:Dynamic, ?args2:Dynamic, ?args3:Dynamic, ?args4:Dynamic):Void;
	
	/**
	 * The core preUpdate - as called by World.
	 */
	function preUpdate ():Void;
	
	/**
	 * The core update - as called by World.
	 */
	function update ():Void;
	
	/**
	 * The core postUpdate - as called by World.
	 */
	function postUpdate ():Void;
	
	/**
	 * Find children matching a certain predicate.
	 * 
	 * For example:
	 * 
	 * <pre>var healthyList = Group.filter(function(child, index, children) {
	 *     return child.health &gt; 10 ? true : false;
	 * }, true);
	 * healthyList.callAll('attack');
	 * </pre>
	 * 
	 * Note: Currently this will skip any children which are Groups themselves.
	 */
	function filter (predicate:Dynamic, ?checkExists:Bool = false):phaser.utils.ArraySet;
	
	/**
	 * Call a function on each child in this group.
	 * 
	 * Additional arguments for the callback can be specified after the checkExists parameter. For example,
	 * 
	 * <pre>Group.forEach(awardBonusGold, this, true, 100, 500)
	 * </pre>
	 * 
	 * would invoke awardBonusGold function with the parameters (child, 100, 500).
	 * 
	 * Note: This check will skip any children which are Groups themselves.
	 */
	function forEach (callback:Dynamic, callbackContext:Dynamic, ?checkExists:Bool = false, ?args0:Dynamic, ?args1:Dynamic, ?args2:Dynamic, ?args3:Dynamic, ?args4:Dynamic):Void;
	
	/**
	 * Call a function on each existing child in this group.
	 * 
	 * See {@link Phaser.Group#forEach forEach} for details.
	 */
	function forEachExists (callback:Dynamic, callbackContext:Dynamic, ?args0:Dynamic, ?args1:Dynamic, ?args2:Dynamic, ?args3:Dynamic, ?args4:Dynamic):Void;
	
	/**
	 * Call a function on each alive child in this group.
	 * 
	 * See {@link Phaser.Group#forEach forEach} for details.
	 */
	function forEachAlive (callback:Dynamic, callbackContext:Dynamic, ?args0:Dynamic, ?args1:Dynamic, ?args2:Dynamic, ?args3:Dynamic, ?args4:Dynamic):Void;
	
	/**
	 * Call a function on each dead child in this group.
	 * 
	 * See {@link Phaser.Group#forEach forEach} for details.
	 */
	function forEachDead (callback:Dynamic, callbackContext:Dynamic, ?args0:Dynamic, ?args1:Dynamic, ?args2:Dynamic, ?args3:Dynamic, ?args4:Dynamic):Void;
	
	/**
	 * Sort the children in the group according to a particular key and ordering.
	 * 
	 * Call this function to sort the group according to a particular key value and order.
	 * 
	 * For example to depth sort Sprites for Zelda-style game you might call group.sort('y', Phaser.Group.SORT_ASCENDING) at the bottom of your State.update().
	 * 
	 * Internally this uses a standard JavaScript Array sort, so everything that applies there also applies here, including
	 * alphabetical sorting, mixing strings and numbers, and Unicode sorting. See MDN for more details.
	 */
	function sort (?key:String = 'z', ?order:Int):Void;
	
	/**
	 * Sort the children in the group according to custom sort function.
	 * 
	 * The sortHandler is provided the two parameters: the two children involved in the comparison (a and b).
	 * It should return -1 if a &gt; b, 1 if a &lt; b or 0 if a === b.
	 */
	function customSort (sortHandler:Dynamic, ?context:Dynamic):Void;
	
	/**
	 * An internal helper function for the sort process.
	 */
	function ascendingSortHandler (a:Dynamic, b:Dynamic):Void;
	
	/**
	 * An internal helper function for the sort process.
	 */
	function descendingSortHandler (a:Dynamic, b:Dynamic):Void;
	
	/**
	 * Iterates over the children of the group performing one of several actions for matched children.
	 * 
	 * A child is considered a match when it has a property, named key, whose value is equal to value
	 * according to a strict equality comparison.
	 * 
	 * The result depends on the returnType:
	 * 
	 * <ul>
	 * <li>{@link Phaser.Group.RETURN_TOTAL RETURN_TOTAL}:
	 * The callback, if any, is applied to all matching children. The number of matched children is returned.</li>
	 * <li>{@link Phaser.Group.RETURN_NONE RETURN_NONE}:
	 * The callback, if any, is applied to all matching children. No value is returned.</li>
	 * <li>{@link Phaser.Group.RETURN_CHILD RETURN_CHILD}:
	 * The callback, if any, is applied to the <em>first</em> matching child and the <em>first</em> matched child is returned.
	 * If there is no matching child then null is returned.</li>
	 * </ul>
	 * 
	 * If args is specified it must be an array. The matched child will be assigned to the first
	 * element and the entire array will be applied to the callback function.
	 */
	function iterate (key:String, value:Dynamic, returnType:Int, ?callback:Dynamic, ?callbackContext:Dynamic, ?args:Dynamic):Dynamic;
	
	/**
	 * Get the first display object that exists, or doesn't exist.
	 * 
	 * You can use the optional argument createIfNull to create a new Game Object if none matching your exists argument were found in this Group.
	 * 
	 * It works by calling Group.create passing it the parameters given to this method, and returning the new child.
	 * 
	 * If a child <em>was</em> found , createIfNull is false and you provided the additional arguments then the child
	 * will be reset and/or have a new texture loaded on it. This is handled by Group.resetChild.
	 */
	@:overload(function (?exists:Bool = true, ?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:String, ?frame:String):Dynamic {})
	@:overload(function (?exists:Bool = true, ?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:phaser.gameobjects.RenderTexture, ?frame:String):Dynamic {})
	@:overload(function (?exists:Bool = true, ?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:phaser.gameobjects.BitmapData, ?frame:String):Dynamic {})
	@:overload(function (?exists:Bool = true, ?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:phaser.gameobjects.Video, ?frame:String):Dynamic {})
	@:overload(function (?exists:Bool = true, ?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:phaser.pixi.textures.Texture, ?frame:String):Dynamic {})
	@:overload(function (?exists:Bool = true, ?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:String, ?frame:Float):Dynamic {})
	@:overload(function (?exists:Bool = true, ?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:phaser.gameobjects.RenderTexture, ?frame:Float):Dynamic {})
	@:overload(function (?exists:Bool = true, ?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:phaser.gameobjects.BitmapData, ?frame:Float):Dynamic {})
	@:overload(function (?exists:Bool = true, ?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:phaser.gameobjects.Video, ?frame:Float):Dynamic {})
	function getFirstExists (?exists:Bool = true, ?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:phaser.pixi.textures.Texture, ?frame:Float):Dynamic;
	
	/**
	 * Get the first child that is alive (child.alive === true).
	 * 
	 * This is handy for choosing a squad leader, etc.
	 * 
	 * You can use the optional argument createIfNull to create a new Game Object if no alive ones were found in this Group.
	 * 
	 * It works by calling Group.create passing it the parameters given to this method, and returning the new child.
	 * 
	 * If a child <em>was</em> found , createIfNull is false and you provided the additional arguments then the child
	 * will be reset and/or have a new texture loaded on it. This is handled by Group.resetChild.
	 */
	@:overload(function (?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:String, ?frame:String):Dynamic {})
	@:overload(function (?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:phaser.gameobjects.RenderTexture, ?frame:String):Dynamic {})
	@:overload(function (?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:phaser.gameobjects.BitmapData, ?frame:String):Dynamic {})
	@:overload(function (?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:phaser.gameobjects.Video, ?frame:String):Dynamic {})
	@:overload(function (?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:phaser.pixi.textures.Texture, ?frame:String):Dynamic {})
	@:overload(function (?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:String, ?frame:Float):Dynamic {})
	@:overload(function (?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:phaser.gameobjects.RenderTexture, ?frame:Float):Dynamic {})
	@:overload(function (?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:phaser.gameobjects.BitmapData, ?frame:Float):Dynamic {})
	@:overload(function (?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:phaser.gameobjects.Video, ?frame:Float):Dynamic {})
	function getFirstAlive (?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:phaser.pixi.textures.Texture, ?frame:Float):Dynamic;
	
	/**
	 * Get the first child that is dead (child.alive === false).
	 * 
	 * This is handy for checking if everything has been wiped out and adding to the pool as needed.
	 * 
	 * You can use the optional argument createIfNull to create a new Game Object if no dead ones were found in this Group.
	 * 
	 * It works by calling Group.create passing it the parameters given to this method, and returning the new child.
	 * 
	 * If a child <em>was</em> found , createIfNull is false and you provided the additional arguments then the child
	 * will be reset and/or have a new texture loaded on it. This is handled by Group.resetChild.
	 */
	@:overload(function (?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:String, ?frame:String):Dynamic {})
	@:overload(function (?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:phaser.gameobjects.RenderTexture, ?frame:String):Dynamic {})
	@:overload(function (?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:phaser.gameobjects.BitmapData, ?frame:String):Dynamic {})
	@:overload(function (?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:phaser.gameobjects.Video, ?frame:String):Dynamic {})
	@:overload(function (?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:phaser.pixi.textures.Texture, ?frame:String):Dynamic {})
	@:overload(function (?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:String, ?frame:Float):Dynamic {})
	@:overload(function (?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:phaser.gameobjects.RenderTexture, ?frame:Float):Dynamic {})
	@:overload(function (?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:phaser.gameobjects.BitmapData, ?frame:Float):Dynamic {})
	@:overload(function (?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:phaser.gameobjects.Video, ?frame:Float):Dynamic {})
	function getFirstDead (?createIfNull:Bool = false, ?x:Float, ?y:Float, ?key:phaser.pixi.textures.Texture, ?frame:Float):Dynamic;
	
	/**
	 * Takes a child and if the x and y arguments are given it calls child.reset(x, y) on it.
	 * 
	 * If the key and optionally the frame arguments are given, it calls child.loadTexture(key, frame) on it.
	 * 
	 * The two operations are separate. For example if you just wish to load a new texture then pass null as the x and y values.
	 */
	@:overload(function (child:Dynamic, ?x:Float, ?y:Float, ?key:String, ?frame:String):Dynamic {})
	@:overload(function (child:Dynamic, ?x:Float, ?y:Float, ?key:phaser.gameobjects.RenderTexture, ?frame:String):Dynamic {})
	@:overload(function (child:Dynamic, ?x:Float, ?y:Float, ?key:phaser.gameobjects.BitmapData, ?frame:String):Dynamic {})
	@:overload(function (child:Dynamic, ?x:Float, ?y:Float, ?key:phaser.gameobjects.Video, ?frame:String):Dynamic {})
	@:overload(function (child:Dynamic, ?x:Float, ?y:Float, ?key:phaser.pixi.textures.Texture, ?frame:String):Dynamic {})
	@:overload(function (child:Dynamic, ?x:Float, ?y:Float, ?key:String, ?frame:Float):Dynamic {})
	@:overload(function (child:Dynamic, ?x:Float, ?y:Float, ?key:phaser.gameobjects.RenderTexture, ?frame:Float):Dynamic {})
	@:overload(function (child:Dynamic, ?x:Float, ?y:Float, ?key:phaser.gameobjects.BitmapData, ?frame:Float):Dynamic {})
	@:overload(function (child:Dynamic, ?x:Float, ?y:Float, ?key:phaser.gameobjects.Video, ?frame:Float):Dynamic {})
	function resetChild (child:Dynamic, ?x:Float, ?y:Float, ?key:phaser.pixi.textures.Texture, ?frame:Float):Dynamic;
	
	/**
	 * Return the child at the top of this group.
	 * 
	 * The top child is the child displayed (rendered) above every other child.
	 */
	function getTop ():Dynamic;
	
	/**
	 * Returns the child at the bottom of this group.
	 * 
	 * The bottom child the child being displayed (rendered) below every other child.
	 */
	function getBottom ():Dynamic;
	
	/**
	 * Get the number of living children in this group.
	 */
	function countLiving ():Int;
	
	/**
	 * Get the number of dead children in this group.
	 */
	function countDead ():Int;
	
	/**
	 * Returns a random child from the group.
	 */
	function getRandom (?startIndex:Int = 0, ?length:Int):Dynamic;
	
	/**
	 * Removes the given child from this group.
	 * 
	 * This will dispatch an onRemovedFromGroup event from the child (if it has one), and optionally destroy the child.
	 * 
	 * If the group cursor was referring to the removed child it is updated to refer to the next child.
	 */
	function remove (child:Dynamic, ?destroy:Bool = false, ?silent:Bool = false):Bool;
	
	/**
	 * Moves all children from this Group to the Group given.
	 */
	function moveAll (group:phaser.core.Group, ?silent:Bool = false):phaser.core.Group;
	
	/**
	 * Removes all children from this group, but does not remove the group from its parent.
	 */
	function removeAll (?destroy:Bool = false, ?silent:Bool = false):Void;
	
	/**
	 * Removes all children from this group whose index falls beteen the given startIndex and endIndex values.
	 */
	function removeBetween (startIndex:Int, ?endIndex:Int, ?destroy:Bool = false, ?silent:Bool = false):Void;
	
	/**
	 * Destroys this group.
	 * 
	 * Removes all children, then removes this group from its parent and nulls references.
	 */
	function destroy (?destroyChildren:Bool = true, ?soft:Bool = false):Void;
	
	/**
	 * Total number of existing children in the group.
	 */
	var total(default, null):Int;
	
	/**
	 * Total number of children in this group, regardless of exists/alive status.
	 */
	var length(default, null):Int;
	
	/**
	 * The angle of rotation of the group container, in degrees.
	 * 
	 * This adjusts the group itself by modifying its local rotation transform.
	 * 
	 * This has no impact on the rotation/angle properties of the children, but it will update their worldTransform
	 * and on-screen orientation and position.
	 */
	var angle:Float;
	
}
