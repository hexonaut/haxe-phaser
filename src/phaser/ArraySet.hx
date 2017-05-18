package phaser;

import haxe.extern.Rest;

/**
* ArraySet is a Set data structure (items must be unique within the set) that also maintains order.
* This allows specific items to be easily added or removed from the Set.
* 
* Item equality (and uniqueness) is determined by the behavior of `Array.indexOf`.
* 
* This used primarily by the Input subsystem.
*/
@:native("Phaser.ArraySet")
extern class ArraySet {

	/**
	* ArraySet is a Set data structure (items must be unique within the set) that also maintains order.
	* This allows specific items to be easily added or removed from the Set.
	* 
	* Item equality (and uniqueness) is determined by the behavior of `Array.indexOf`.
	* 
	* This used primarily by the Input subsystem.
	* 
	* @param list The backing array: if specified the items in the list _must_ be unique, per `Array.indexOf`, and the ownership of the array _should_ be relinquished to the ArraySet. - Default: (new array)
	*/
	function new(list:Array<Dynamic>);
	
	/**
	* Current cursor position as established by `first` and `next`.
	*/
	var position:Float;
	
	/**
	* The backing array.
	*/
	var list:Array<Dynamic>;
	
	/**
	* Number of items in the ArraySet. Same as `list.length`.
	*/
	var total:Float;
	
	/**
	* Returns the first item and resets the cursor to the start.
	*/
	var first:Dynamic;
	
	/**
	* Returns the the next item (based on the cursor) and advances the cursor.
	*/
	var next:Dynamic;
	
	/**
	* Adds a new element to the end of the list.
	* If the item already exists in the list it is not moved.
	* 
	* @param item The element to add to this list.
	* @return The item that was added.
	*/
	function add(item:Dynamic):Dynamic;
	
	/**
	* Gets an item from the set based on the property strictly equaling the value given.
	* Returns null if not found.
	* 
	* @param property The property to check against the value.
	* @param value The value to check if the property strictly equals.
	* @return The item that was found, or null if nothing matched.
	*/
	function getByKey(property:String, value:Dynamic):Dynamic;
	
	/**
	* Gets the index of the item in the list, or -1 if it isn't in the list.
	* 
	* @param item The element to get the list index for.
	* @return The index of the item or -1 if not found.
	*/
	function getIndex(item:Dynamic):Float;
	
	/**
	* Checks for the item within this list.
	* 
	* @param item The element to get the list index for.
	* @return True if the item is found in the list, otherwise false.
	*/
	function exists(item:Dynamic):Bool;
	
	/**
	* Removes all the items.
	*/
	function reset():Void;
	
	/**
	* Removes the given element from this list if it exists.
	* 
	* @param item The item to be removed from the list.
	* @return item - The item that was removed.
	*/
	function remove(item:Dynamic):Dynamic;
	
	/**
	* Removes every member from this ArraySet and optionally destroys it.
	* 
	* @param destroy Call `destroy` on each member as it's removed from this set.
	*/
	function removeAll(?destoy:Bool):Void;
	
	/**
	* Sets the property `key` to the given value on all members of this list.
	* 
	* @param key The property of the item to set.
	* @param value The value to set the property to.
	*/
	function setAll(key:Dynamic, value:Dynamic):Void;
	
	/**
	* Calls a function on all members of this list, using the member as the context for the callback.
	* 
	* If the `key` property is present it must be a function.
	* The function is invoked using the item as the context.
	* 
	* @param key The name of the property with the function to call.
	* @param args Additional parameters that will be passed to the callback.
	*/
	function callAll(key:String, parameter:Rest<Dynamic>):Void;
	
}

