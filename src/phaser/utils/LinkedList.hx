package phaser.utils;

@:native("Phaser.LinkedList")
extern class LinkedList {
	
	/**
	 * A basic Linked List data structure.
	 * 
	 * This implementation <em>modifies</em> the prev and next properties of each item added:
	 * - The prev and next properties must be writable and should not be used for any other purpose.
	 * - Items <em>cannot</em> be added to multiple LinkedLists at the same time.
	 * - Only objects can be added.
	 */
	function new ();
	
	/**
	 * Next element in the list.
	 */
	var next:Dynamic;
	
	/**
	 * Previous element in the list.
	 */
	var prev:Dynamic;
	
	/**
	 * First element in the list.
	 */
	var first:Dynamic;
	
	/**
	 * Last element in the list.
	 */
	var last:Dynamic;
	
	/**
	 * Number of elements in the list.
	 */
	var total:Int;
	
	/**
	 * Adds a new element to this linked list.
	 */
	function add (item:Dynamic):Dynamic;
	
	/**
	 * Resets the first, last, next and previous node pointers in this list.
	 */
	function reset ():Void;
	
	/**
	 * Removes the given element from this linked list if it exists.
	 */
	function remove (item:Dynamic):Void;
	
	/**
	 * Calls a function on all members of this list, using the member as the context for the callback.
	 * The function must exist on the member.
	 */
	function callAll (callback:Dynamic):Void;
	
}
