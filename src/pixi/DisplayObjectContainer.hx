package pixi;

import haxe.extern.EitherType;

/**
* A DisplayObjectContainer represents a collection of display objects.
* It is the base class of all display objects that act as a container for other objects.
*/
@:native("PIXI.DisplayObjectContainer")
extern class DisplayObjectContainer extends DisplayObject {

	/**
	* A DisplayObjectContainer represents a collection of display objects.
	* It is the base class of all display objects that act as a container for other objects.
	*/
	function new();
	
	/**
	* [read-only] The array of children of this container.
	*/
	var children:Array<DisplayObject>;
	
	/**
	* The height of the displayObjectContainer, setting this will actually modify the scale to achieve the value set
	*/
	var height:Float;
	
	/**
	* The width of the displayObjectContainer, setting this will actually modify the scale to achieve the value set
	*/
	var width:Float;
	
	/**
	* If `ignoreChildInput`  is `false` it will allow this objects _children_ to be considered as valid for Input events.
	* 
	* If this property is `true` then the children will _not_ be considered as valid for Input events.
	* 
	* Note that this property isn't recursive: only immediate children are influenced, it doesn't scan further down.
	*/
	var ignoreChildInput:Bool;
	
	/**
	* Adds a child to the container.
	* 
	* @param child The DisplayObject to add to the container
	* @return The child that was added.
	*/
	function addChild(child:DisplayObject):DisplayObject;
	
	/**
	* Adds a child to the container at a specified index. If the index is out of bounds an error will be thrown
	* 
	* @param child The child to add
	* @param index The index to place the child in
	* @return The child that was added.
	*/
	function addChildAt(child:DisplayObject, index:Float):DisplayObject;
	
	/**
	* Retrieves the global bounds of the displayObjectContainer as a rectangle. The bounds calculation takes all visible children into consideration.
	* 
	* @param targetCoordinateSpace Returns a rectangle that defines the area of the display object relative to the coordinate system of the targetCoordinateSpace object.
	* @return The rectangular bounding area
	*/
	function getBounds(?targetCoordinateSpace:EitherType<DisplayObject, Matrix>):Rectangle;
	
	/**
	* Returns the child at the specified index
	* 
	* @param index The index to get the child from
	* @return The child at the given index, if any.
	*/
	function getChildAt(index:Float):DisplayObject;
	
	/**
	* Returns the index position of a child DisplayObject instance
	* 
	* @param child The DisplayObject instance to identify
	* @return The index position of the child display object to identify
	*/
	function getChildIndex(child:DisplayObject):Float;
	
	/**
	* Retrieves the non-global local bounds of the displayObjectContainer as a rectangle without any transformations. The calculation takes all visible children into consideration.
	* 
	* @return The rectangular bounding area
	*/
	function getLocalBounds():Rectangle;
	
	/**
	* Removes a child from the container.
	* 
	* @param child The DisplayObject to remove
	* @return The child that was removed.
	*/
	function removeChild(child:DisplayObject):DisplayObject;
	
	/**
	* Removes a child from the specified index position.
	* 
	* @param index The index to get the child from
	* @return The child that was removed.
	*/
	function removeChildAt(index:Float):DisplayObject;
	
	/**
	* Removes all children from this container that are within the begin and end indexes.
	* 
	* @param beginIndex The beginning position. Default value is 0.
	* @param endIndex The ending position. Default value is size of the container.
	*/
	function removeChildren(?beginIndex:Float, ?endIndex:Float):Array<DisplayObject>;
	
	function removeStageReference():Void;
	
	/**
	* Changes the position of an existing child in the display object container
	* 
	* @param child The child DisplayObject instance for which you want to change the index number
	* @param index The resulting index number for the child display object
	*/
	function setChildIndex(child:DisplayObject, index:Float):Void;
	
	/**
	* Swaps the position of 2 Display Objects within this container.
	* 
	* @param child -
	* @param child2 -
	*/
	function swapChildren(child:DisplayObject, child2:DisplayObject):Void;
	
	/**
	* Determines whether the specified display object is a child of the DisplayObjectContainer instance or the instance itself.
	* 
	* @param child -
	*/
	function contains(child:DisplayObject):Bool;
	
}

