package phaser.core;

@:native("Phaser.LinkedList")
extern class LinkedList {
	
	/**
	 * A basic linked list data structure.
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
	var total:Float;
	
	/**
	 * Adds a new element to this linked list.
	 */
	function add (child:Dynamic):Dynamic;
	
	/**
	 * Resets the first, last, next and previous node pointers in this list.
	 */
	function reset ():Void;
	
	/**
	 * Removes the given element from this linked list if it exists.
	 */
	function remove (child:Dynamic):Void;
	
	/**
	 * Calls a function on all members of this list, using the member as the context for the callback.
	 * The function must exist on the member.
	 */
	function callAll (callback:Dynamic):Void;
	
}
