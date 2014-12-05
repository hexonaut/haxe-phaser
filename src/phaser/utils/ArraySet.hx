package phaser.utils;

@:native("Phaser.ArrayList")
extern class ArraySet {
	
	/**
	 * ArraySet is a Set data structure (items must be unique within the set) that also maintains order.
	 * This allows specific items to be easily added or removed from the Set.
	 * 
	 * Item equality (and uniqueness) is determined by the behavior of Array.indexOf.
	 * 
	 * This used primarily by the Input subsystem.
	 */
	function new (list:Dynamic);
	
	/**
	 * Current cursor position as established by first and next.
	 */
	var position:Int;
	
	/**
	 * The backing array.
	 */
	var list:Dynamic;
	
	/**
	 * Adds a new element to the end of the list.
	 * If the item already exists in the list it is not moved.
	 */
	function add (item:Dynamic):Dynamic;
	
	/**
	 * Gets the index of the item in the list, or -1 if it isn't in the list.
	 */
	function getIndex (item:Dynamic):Int;
	
	/**
	 * Checks for the item within this list.
	 */
	function exists (item:Dynamic):Bool;
	
	/**
	 * Removes all the items.
	 */
	function reset ():Void;
	
	/**
	 * Removes the given element from this list if it exists.
	 */
	function remove (item:Dynamic):Dynamic;
	
	/**
	 * Sets the property key to the given value on all members of this list.
	 */
	function setAll (key:Dynamic, value:Dynamic):Void;
	
	/**
	 * Calls a function on all members of this list, using the member as the context for the callback.
	 * 
	 * If the key property is present it must be a function.
	 * The function is invoked using the item as the context.
	 */
	function callAll (key:String, ?parameter0:Dynamic, ?parameter1:Dynamic, ?parameter2:Dynamic, ?parameter3:Dynamic, ?parameter4:Dynamic):Void;
	
	/**
	 * Number of items in the ArraySet. Same as list.length.
	 */
	var total:Int;
	
	/**
	 * Returns the first item and resets the cursor to the start.
	 */
	var first:Dynamic;
	
	/**
	 * Returns the the next item (based on the cursor) and advances the cursor.
	 */
	var next:Dynamic;
	
}
