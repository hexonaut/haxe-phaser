package phaser.core;

@:native("Phaser.Group")
extern class Group {
	
	/**
	 * Phaser Group constructor.
	 */
	@:overload(function (game:phaser.core.Game, parent:phaser.core.Group, ?name:String, ?addToStage:Bool = false, ?enableBody:Bool = false, ?physicsBodyType:Float = 0):Void {})
	@:overload(function (game:phaser.core.Game, parent:phaser.gameobjects.Sprite, ?name:String, ?addToStage:Bool = false, ?enableBody:Bool = false, ?physicsBodyType:Float = 0):Void {})
	function new (game:phaser.core.Game, parent:Dynamic, ?name:String, ?addToStage:Bool = false, ?enableBody:Bool = false, ?physicsBodyType:Float = 0);
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * A name for this Group. Not used internally but useful for debugging.
	 */
	var name:String;
	
	/**
	 * The z-depth value of this object within its Group (remember the World is a Group as well). No two objects in a Group can have the same z value.
	 */
	var z:Float;
	
	/**
	 * Internal Phaser Type value.
	 */
	var type:Float;
	
	/**
	 * The alive property is useful for Groups that are children of other Groups and need to be included/excluded in checks like forEachAlive.
	 */
	var alive:Bool;
	
	/**
	 * If exists is true the Group is updated, otherwise it is skipped.
	 */
	var exists:Bool;
	
	/**
	 * The type of objects that will be created when you use Group.create or Group.createMultiple. Defaults to Phaser.Sprite.
	 * When a new object is created it is passed the following parameters to its constructor: game, x, y, key, frame.
	 */
	var classType:Dynamic;
	
	/**
	 * The scale of the Group container.
	 */
	var scale:Dynamic;
	
	/**
	 * The cursor is a simple way to iterate through the objects in a Group using the Group.next and Group.previous functions.
	 * The cursor is set to the first child added to the Group and doesn't change unless you call next, previous or set it directly with Group.cursor.
	 */
	var cursor:Dynamic;
	
	/**
	 * If this object is fixedToCamera then this stores the x/y offset that its drawn at, from the top-left of the camera view.
	 */
	var cameraOffset:Dynamic;
	
	/**
	 * If true all Sprites created by, or added to this Group, will have a physics body enabled on them. Change the body type with Group.physicsBodyType.
	 */
	var enableBody:Bool;
	
	/**
	 * If true when a physics body is created (via Group.enableBody) it will create a physics debug object as well. Only works for P2 bodies.
	 */
	var enableBodyDebug:Bool;
	
	/**
	 * If Group.enableBody is true this is the type of physics body that is created on new Sprites. Phaser.Physics.ARCADE, Phaser.Physics.P2, Phaser.Physics.NINJA, etc.
	 */
	var physicsBodyType:Float;
	
	/**
	 * This signal is dispatched when the parent is destoyed.
	 */
	var onDestroy:phaser.core.Signal;
	
	/**
	 * The property on which children are sorted.
	 */
	var _sortProperty:String;
	
	/**
	 * A small internal cache:
	 * 0 = previous position.x
	 * 1 = previous position.y
	 * 2 = previous rotation
	 * 3 = renderID
	 * 4 = fresh? (0 = no, 1 = yes)
	 * 5 = outOfBoundsFired (0 = no, 1 = yes)
	 * 6 = exists (0 = no, 1 = yes)
	 * 7 = fixed to camera (0 = no, 1 = yes)
	 * 8 = cursor index
	 * 9 = sort order
	 */
	var cache:Array<Dynamic>;
	
	/**
	 * @constant
	 */
	static var RETURN_NONE:Float;
	
	/**
	 * @constant
	 */
	static var RETURN_TOTAL:Float;
	
	/**
	 * @constant
	 */
	static var RETURN_CHILD:Float;
	
	/**
	 * @constant
	 */
	static var SORT_ASCENDING:Float;
	
	/**
	 * @constant
	 */
	static var SORT_DESCENDING:Float;
	
	/**
	 * Adds an existing object to this Group. The object can be an instance of Phaser.Sprite, Phaser.Button or any other display object.
	 * The child is automatically added to the top of the Group, so renders on-top of everything else within the Group. If you need to control
	 * that then see the addAt method.
	 */
	function add (child:Dynamic, ?silent:Bool = false):Dynamic;
	
	/**
	 * Adds an array existing objects to this Group. The objects can be instances of Phaser.Sprite, Phaser.Button or any other display object.
	 * The children are automatically added to the top of the Group, so render on-top of everything else within the Group.
	 * TODO: Add ability to pass the children as parameters rather than having to be an array.
	 */
	function addMultiple (children:Array<Dynamic>, ?silent:Bool = false):Dynamic;
	
	/**
	 * Adds an existing object to this Group. The object can be an instance of Phaser.Sprite, Phaser.Button or any other display object.
	 * The child is added to the Group at the location specified by the index value, this allows you to control child ordering.
	 */
	function addAt (child:Dynamic, index:Float, ?silent:Bool = false):Dynamic;
	
	/**
	 * Returns the child found at the given index within this Group.
	 */
	function getAt (index:Float):Dynamic;
	
	/**
	 * Automatically creates a new Phaser.Sprite object and adds it to the top of this Group.
	 * You can change Group.classType to any object and this call will create an object of that type instead, but it should extend either Sprite or Image.
	 */
	@:overload(function (x:Float, y:Float, key:String, ?frame:Float, ?exists:Bool = true):Dynamic {})
	function create (x:Float, y:Float, key:String, ?frame:String, ?exists:Bool = true):Dynamic;
	
	/**
	 * Automatically creates multiple Phaser.Sprite objects and adds them to the top of this Group.
	 * Useful if you need to quickly generate a pool of identical sprites, such as bullets. By default the sprites will be set to not exist
	 * and will be positioned at 0, 0 (relative to the Group.x/y)
	 * You can change Group.classType to any object and this call will create an object of that type instead, but it should extend either Sprite or Image.
	 */
	@:overload(function (quantity:Float, key:String, ?frame:Float, ?exists:Bool = false):Void {})
	function createMultiple (quantity:Float, key:String, ?frame:String, ?exists:Bool = false):Void;
	
	/**
	 * Internal method that re-applies all of the childrens Z values.
	 */
	function updateZ ():Void;
	
	/**
	 * Sets the Group cursor to the first object in the Group. If the optional index parameter is given it sets the cursor to the object at that index instead.
	 */
	function resetCursor (?index:Float = 0):Dynamic;
	
	/**
	 * Advances the Group cursor to the next object in the Group. If it's at the end of the Group it wraps around to the first object.
	 */
	function next ():Dynamic;
	
	/**
	 * Moves the Group cursor to the previous object in the Group. If it's at the start of the Group it wraps around to the last object.
	 */
	function previous ():Dynamic;
	
	/**
	 * Swaps the position of two children in this Group. Both children must be in this Group.
	 * You cannot swap a child with itself, or swap un-parented children.
	 */
	function swap (child1:Dynamic, child2:Dynamic):Void;
	
	/**
	 * Brings the given child to the top of this Group so it renders above all other children.
	 */
	function bringToTop (child:Dynamic):Dynamic;
	
	/**
	 * Sends the given child to the bottom of this Group so it renders below all other children.
	 */
	function sendToBack (child:Dynamic):Dynamic;
	
	/**
	 * Moves the given child up one place in this Group unless it's already at the top.
	 */
	function moveUp (child:Dynamic):Dynamic;
	
	/**
	 * Moves the given child down one place in this Group unless it's already at the top.
	 */
	function moveDown (child:Dynamic):Dynamic;
	
	/**
	 * Positions the child found at the given index within this Group to the given x and y coordinates.
	 */
	function xy (index:Float, x:Float, y:Float):Void;
	
	/**
	 * Reverses all children in this Group. Note that this does not propagate, only direct children are re-ordered.
	 */
	function reverse ():Void;
	
	/**
	 * Get the index position of the given child in this Group. This should always match the childs z property.
	 */
	function getIndex (child:Dynamic):Float;
	
	/**
	 * Replaces a child of this Group with the given newChild. The newChild cannot be a member of this Group.
	 */
	function replace (oldChild:Dynamic, newChild:Dynamic):Dynamic;
	
	/**
	 * Checks if the child has the given property. Will scan up to 4 levels deep only.
	 */
	function hasProperty (child:Dynamic, key:Array<Dynamic>):Bool;
	
	/**
	 * Sets a property to the given value on the child. The operation parameter controls how the value is set.
	 * Operation 0 means set the existing value to the given value, or if force is false create a new property with the given value.
	 * 1 will add the given value to the value already present.
	 * 2 will subtract the given value from the value already present.
	 * 3 will multiply the value already present by the given value.
	 * 4 will divide the value already present by the given value.
	 */
	function setProperty (child:Dynamic, key:Array<Dynamic>, value:Dynamic, ?operation:Float = 0, ?force:Bool = false):Bool;
	
	/**
	 * Checks a property for the given value on the child.
	 */
	function checkProperty (child:Dynamic, key:Array<Dynamic>, value:Dynamic, ?force:Bool = false):Bool;
	
	/**
	 * This function allows you to quickly set a property on a single child of this Group to a new value.
	 * The operation parameter controls how the new value is assigned to the property, from simple replacement to addition and multiplication.
	 */
	function set (child:phaser.gameobjects.Sprite, key:String, value:Dynamic, ?checkAlive:Bool = false, ?checkVisible:Bool = false, ?operation:Float = 0, ?force:Bool = false):Bool;
	
	/**
	 * This function allows you to quickly set the same property across all children of this Group to a new value.
	 * This call doesn't descend down children, so if you have a Group inside of this Group, the property will be set on the Group but not its children.
	 * If you need that ability please see Group.setAllChildren.
	 * 
	 * The operation parameter controls how the new value is assigned to the property, from simple replacement to addition and multiplication.
	 */
	function setAll (key:String, value:Dynamic, ?checkAlive:Bool = false, ?checkVisible:Bool = false, ?operation:Float = 0, ?force:Bool = false):Void;
	
	/**
	 * This function allows you to quickly set the same property across all children of this Group, and any child Groups, to a new value.
	 * 
	 * If this Group contains other Groups then the same property is set across their children as well, iterating down until it reaches the bottom.
	 * Unlike with Group.setAll the property is NOT set on child Groups itself.
	 * 
	 * The operation parameter controls how the new value is assigned to the property, from simple replacement to addition and multiplication.
	 */
	function setAllChildren (key:String, value:Dynamic, ?checkAlive:Bool = false, ?checkVisible:Bool = false, ?operation:Float = 0, ?force:Bool = false):Void;
	
	/**
	 * This function allows you to quickly check that the same property across all children of this Group is equal to the given value.
	 * This call doesn't descend down children, so if you have a Group inside of this Group, the property will be checked on the Group but not its children.
	 */
	function checkAll (key:String, value:Dynamic, ?checkAlive:Bool = false, ?checkVisible:Bool = false, ?force:Bool = false):Void;
	
	/**
	 * Adds the amount to the given property on all children in this Group.
	 * Group.addAll('x', 10) will add 10 to the child.x value.
	 */
	function addAll (property:String, amount:Float, checkAlive:Bool, checkVisible:Bool):Void;
	
	/**
	 * Subtracts the amount from the given property on all children in this Group.
	 * Group.subAll('x', 10) will minus 10 from the child.x value.
	 */
	function subAll (property:String, amount:Float, checkAlive:Bool, checkVisible:Bool):Void;
	
	/**
	 * Multiplies the given property by the amount on all children in this Group.
	 * Group.multiplyAll('x', 2) will x2 the child.x value.
	 */
	function multiplyAll (property:String, amount:Float, checkAlive:Bool, checkVisible:Bool):Void;
	
	/**
	 * Divides the given property by the amount on all children in this Group.
	 * Group.divideAll('x', 2) will half the child.x value.
	 */
	function divideAll (property:String, amount:Float, checkAlive:Bool, checkVisible:Bool):Void;
	
	/**
	 * Calls a function on all of the children that have exists=true in this Group.
	 * After the existsValue parameter you can add as many parameters as you like, which will all be passed to the child callback.
	 */
	function callAllExists (callback:Dynamic, existsValue:Bool, ?parameter0:Dynamic, ?parameter1:Dynamic, ?parameter2:Dynamic, ?parameter3:Dynamic, ?parameter4:Dynamic):Void;
	
	/**
	 * Returns a reference to a function that exists on a child of the Group based on the given callback array.
	 */
	function callbackFromArray (child:Dynamic, callback:Array<Dynamic>, length:Float):Void;
	
	/**
	 * Calls a function on all of the children regardless if they are dead or alive (see callAllExists if you need control over that)
	 * After the method parameter and context you can add as many extra parameters as you like, which will all be passed to the child.
	 */
	function callAll (method:String, ?context:String, ?parameter0:Dynamic, ?parameter1:Dynamic, ?parameter2:Dynamic, ?parameter3:Dynamic, ?parameter4:Dynamic):Void;
	
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
	 * Allows you to call your own function on each member of this Group. You must pass the callback and context in which it will run.
	 * After the checkExists parameter you can add as many parameters as you like, which will all be passed to the callback along with the child.
	 * For example: Group.forEach(awardBonusGold, this, true, 100, 500)
	 * Note: Currently this will skip any children which are Groups themselves.
	 */
	function forEach (callback:Dynamic, callbackContext:Dynamic, ?checkExists:Bool = false):Void;
	
	/**
	 * Allows you to call your own function on each member of this Group where child.exists=true. You must pass the callback and context in which it will run.
	 * You can add as many parameters as you like, which will all be passed to the callback along with the child.
	 * For example: Group.forEachExists(causeDamage, this, 500)
	 */
	function forEachExists (callback:Dynamic, callbackContext:Dynamic):Void;
	
	/**
	 * Allows you to call your own function on each alive member of this Group (where child.alive=true). You must pass the callback and context in which it will run.
	 * You can add as many parameters as you like, which will all be passed to the callback along with the child.
	 * For example: Group.forEachAlive(causeDamage, this, 500)
	 */
	function forEachAlive (callback:Dynamic, callbackContext:Dynamic):Void;
	
	/**
	 * Allows you to call your own function on each dead member of this Group (where alive=false). You must pass the callback and context in which it will run.
	 * You can add as many parameters as you like, which will all be passed to the callback along with the child.
	 * For example: Group.forEachDead(bringToLife, this)
	 */
	function forEachDead (callback:Dynamic, callbackContext:Dynamic):Void;
	
	/**
	 * Call this function to sort the group according to a particular value and order.
	 * For example to depth sort Sprites for Zelda-style game you might call group.sort('y', Phaser.Group.SORT_ASCENDING) at the bottom of your State.update().
	 */
	function sort (?index:String = 'z', ?order:Float):Void;
	
	/**
	 * This allows you to use your own sort handler function.
	 * It will be sent two parameters: the two children involved in the comparison (a and b). It should return -1 if a > b, 1 if a &lt; b or 0 if a === b.
	 */
	function customSort (sortHandler:Dynamic, context:Dynamic):Void;
	
	/**
	 * An internal helper function for the sort process.
	 */
	function ascendingSortHandler (a:Dynamic, b:Dynamic):Void;
	
	/**
	 * An internal helper function for the sort process.
	 */
	function descendingSortHandler (a:Dynamic, b:Dynamic):Void;
	
	/**
	 * Iterates over the children of the Group. When a child has a property matching key that equals the given value, it is considered as a match.
	 * Matched children can be sent to the optional callback, or simply returned or counted.
	 * You can add as many callback parameters as you like, which will all be passed to the callback along with the child, after the callbackContext parameter.
	 */
	function iterate (key:String, value:Dynamic, returnType:Float, ?callback:Dynamic, ?callbackContext:Dynamic):Dynamic;
	
	/**
	 * Call this function to retrieve the first object with exists == (the given state) in the Group.
	 */
	function getFirstExists (state:Bool):Dynamic;
	
	/**
	 * Call this function to retrieve the first object with alive === true in the group.
	 * This is handy for checking if everything has been wiped out, or choosing a squad leader, etc.
	 */
	function getFirstAlive ():Dynamic;
	
	/**
	 * Call this function to retrieve the first object with alive === false in the group.
	 * This is handy for checking if everything has been wiped out, or choosing a squad leader, etc.
	 */
	function getFirstDead ():Dynamic;
	
	/**
	 * Returns the child at the top of this Group. The top is the one being displayed (rendered) above every other child.
	 */
	function getTop ():Dynamic;
	
	/**
	 * Returns the child at the bottom of this Group. The bottom is the one being displayed (rendered) below every other child.
	 */
	function getBottom ():Dynamic;
	
	/**
	 * Call this function to find out how many members of the group are alive.
	 */
	function countLiving ():Float;
	
	/**
	 * Call this function to find out how many members of the group are dead.
	 */
	function countDead ():Float;
	
	/**
	 * Returns a member at random from the group.
	 */
	function getRandom (startIndex:Float, length:Float):Dynamic;
	
	/**
	 * Removes the given child from this Group. This will dispatch an onRemovedFromGroup event from the child (if it has one),
	 * reset the Group cursor and optionally destroy the child.
	 */
	function remove (child:Dynamic, ?destroy:Bool = false, ?silent:Bool = false):Bool;
	
	/**
	 * Removes all children from this Group, setting the group properties of the children to null.
	 * The Group container remains on the display list.
	 */
	function removeAll (?destroy:Bool = false, ?silent:Bool = false):Void;
	
	/**
	 * Removes all children from this Group whos index falls beteen the given startIndex and endIndex values.
	 */
	function removeBetween (startIndex:Float, ?endIndex:Float, ?destroy:Bool = false, ?silent:Bool = false):Void;
	
	/**
	 * Destroys this Group. Removes all children, then removes the container from the display list and nulls references.
	 */
	function destroy (?destroyChildren:Bool = true, ?soft:Bool = false):Void;
	
	/**
	 * @name Phaser.Group#total
	 */
	var total(default, null):Float;
	
	/**
	 * @name Phaser.Group#length
	 */
	var length(default, null):Float;
	
	/**
	 * The angle of rotation of the Group container. This will adjust the Group container itself by modifying its rotation.
	 * This will have no impact on the rotation value of its children, but it will update their worldTransform and on-screen position.
	 */
	var angle:Float;
	
	/**
	 * A Group that is fixed to the camera uses its x/y coordinates as offsets from the top left of the camera. These are stored in Group.cameraOffset.
	 * Note that the cameraOffset values are in addition to any parent in the display list.
	 * So if this Group was in a Group that has x: 200, then this will be added to the cameraOffset.x
	 */
	var fixedToCamera:Bool;
	
	/**
	 * The x coordinate of the Group container. You can adjust the Group container itself by modifying its coordinates.
	 * This will have no impact on the x/y coordinates of its children, but it will update their worldTransform and on-screen position.
	 */
	var x:Float;
	
	/**
	 * The y coordinate of the Group container. You can adjust the Group container itself by modifying its coordinates.
	 * This will have no impact on the x/y coordinates of its children, but it will update their worldTransform and on-screen position.
	 */
	var y:Float;
	
	/**
	 * The angle of rotation of the Group container. This will adjust the Group container itself by modifying its rotation.
	 * This will have no impact on the rotation value of its children, but it will update their worldTransform and on-screen position.
	 */
	var rotation:Float;
	
	/**
	 * @name Phaser.Group#visible
	 */
	var visible:Bool;
	
	/**
	 * @name Phaser.Group#alpha
	 */
	var alpha:Float;
	
}
