package phaser;

/**
* A basic Linked List data structure.
* 
* This implementation _modifies_ the `prev` and `next` properties of each item added:
* - The `prev` and `next` properties must be writable and should not be used for any other purpose.
* - Items _cannot_ be added to multiple LinkedLists at the same time.
* - Only objects can be added.
*/
@:native("Phaser.LinkedList")
extern class LinkedList {

	/**
	* First element in the list.
	*/
	var first:Dynamic;
	
	/**
	* Last element in the list.
	*/
	var last:Dynamic;
	
	/**
	* Next element in the list.
	*/
	var next:Dynamic;
	
	/**
	* Previous element in the list.
	*/
	var prev:Dynamic;
	
	/**
	* Number of elements in the list.
	*/
	var total:Float;
	
	/**
	* Adds a new element to this linked list.
	* 
	* @param item The element to add to this list. Can be a Phaser.Sprite or any other object you need to quickly iterate through.
	* @return The item that was added.
	*/
	function add(item:Dynamic):Dynamic;
	
	/**
	* Calls a function on all members of this list, using the member as the context for the callback.
	* The function must exist on the member.
	* 
	* @param callback The function to call.
	*/
	function callAll(callback:Dynamic):Void;
	
	/**
	* Removes the given element from this linked list if it exists.
	* 
	* @param item The item to be removed from the list.
	*/
	function remove(item:Dynamic):Void;
	
	/**
	* Resets the first, last, next and previous node pointers in this list.
	*/
	function reset():Void;
	
}

