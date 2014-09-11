package phaser.core;

@:native("Phaser.ArrayList")
extern class ArrayList {
	
	/**
	 * A set data structure. Allows items to add themselves to and remove themselves from the set. Items can only exist once in the set.
	 */
	function new ();
	
	/**
	 * Number of objects in the list.
	 */
	var total:Float;
	
	/**
	 * Current cursor position.
	 */
	var position:Float;
	
	/**
	 * The list.
	 */
	var list:Array<Dynamic>;
	
	/**
	 * Adds a new element to this list. The item can only exist in the list once.
	 */
	function add (child:Dynamic):Dynamic;
	
	/**
	 * Gets the index of the child in the list, or -1 if it isn't in the list.
	 */
	function getIndex (child:Dynamic):Float;
	
	/**
	 * Checks for the child within this list.
	 */
	function exists (child:Dynamic):Bool;
	
	/**
	 * Resets the list length and drops all items in the list.
	 */
	function reset ():Void;
	
	/**
	 * Removes the given element from this list if it exists.
	 */
	function remove (child:Dynamic):Dynamic;
	
	/**
	 * Sets the property key to the given value on all members of this list.
	 */
	function setAll (key:Dynamic, value:Dynamic):Void;
	
	/**
	 * Calls a function on all members of this list, using the member as the context for the callback.
	 * The function must exist on the member.
	 */
	function callAll (callback:Dynamic, ?parameter0:Dynamic, ?parameter1:Dynamic, ?parameter2:Dynamic, ?parameter3:Dynamic, ?parameter4:Dynamic):Void;
	
	/**
	 * Resets the cursor to the first item in the list and returns it.
	 */
	var first:Dynamic;
	
	/**
	 * Gets the next item in the list and returns it, advancing the cursor.
	 */
	var next:Dynamic;
	
}
