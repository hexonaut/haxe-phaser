package pixi;

import haxe.extern.EitherType;

/**
* The base class for all objects that are rendered. Contains properties for position, scaling,
* rotation, masks and cache handling.
* 
* This is an abstract class and should not be used on its own, rather it should be extended.
* 
* It is used internally by the likes of PIXI.Sprite.
*/
@:native("PIXI.DisplayObject")
extern class DisplayObject {

	/**
	* The alpha value of this DisplayObject. A value of 1 is fully opaque. A value of 0 is transparent.
	* Please note that an object with an alpha value of 0 is skipped during the render pass.
	* 
	* The value of this property does not reflect any alpha values set further up the display list.
	* To obtain that value please see the `worldAlpha` property.
	*/
	var alpha:Float;
	
	var buttonMode:Bool;
	
	/**
	* Sets if this DisplayObject should be cached as a bitmap.
	* 
	* When invoked it will take a snapshot of the DisplayObject, as it is at that moment, and store it
	* in a RenderTexture. This is then used whenever this DisplayObject is rendered. It can provide a
	* performance benefit for complex, but static, DisplayObjects. I.e. those with lots of children.
	* 
	* Cached Bitmaps do not track their parents. If you update a property of this DisplayObject, it will not
	* re-generate the cached bitmap automatically. To do that you need to call `DisplayObject.updateCache`.
	* 
	* To remove a cached bitmap, set this property to `null`.
	*/
	var cacheAsBitmap:Bool;
	
	var defaultCursor:String;
	
	/**
	* The rectangular area used by filters when rendering a shader for this DisplayObject.
	*/
	var filterArea:Rectangle;
	
	/**
	* Sets the filters for this DisplayObject. This is a WebGL only feature, and is ignored by the Canvas
	* Renderer. A filter is a shader applied to this DisplayObject. You can modify the placement of the filter
	* using `DisplayObject.filterArea`.
	* 
	* To remove filters, set this property to `null`.
	* 
	* Note: You cannot have a filter set, and a MULTIPLY Blend Mode active, at the same time. Setting a
	* filter will reset this DisplayObjects blend mode to NORMAL.
	*/
	var filters:Array<AbstractFilter>;
	
	/**
	* This is the defined area that will pick up mouse / touch events. It is null by default.
	* Setting it is a neat way of optimising the hitTest function that the interactionManager will use (as it will not need to hit test all the children)
	*/
	var hitArea:HitArea;
	
	var interactive:Bool;
	
	/**
	* Sets a mask for this DisplayObject. A mask is an instance of a Graphics object.
	* When applied it limits the visible area of this DisplayObject to the shape of the mask.
	* Under a Canvas renderer it uses shape clipping. Under a WebGL renderer it uses a Stencil Buffer.
	* To remove a mask, set this property to `null`.
	*/
	var mask:Graphics;
	
	/**
	* The parent DisplayObjectContainer that this DisplayObject is a child of.
	* All DisplayObjects must belong to a parent in order to be rendered.
	* The root parent is the Stage object. This property is set automatically when the
	* DisplayObject is added to, or removed from, a DisplayObjectContainer.
	*/
	var parent:DisplayObjectContainer;
	
	/**
	* The pivot point of this DisplayObject that it rotates around. The values are expressed
	* in pixel values.
	*/
	var pivot:Point;
	
	/**
	* The coordinates, in pixels, of this DisplayObject, relative to its parent container.
	* 
	* The value of this property does not reflect any positioning happening further up the display list.
	* To obtain that value please see the `worldPosition` property.
	*/
	var position:Point;
	
	/**
	* Should this DisplayObject be rendered by the renderer? An object with a renderable value of
	* `false` is skipped during the render pass.
	*/
	var renderable:Bool;
	
	/**
	* The rotation of this DisplayObject. The value is given, and expressed, in radians, and is based on
	* a right-handed orientation.
	* 
	* The value of this property does not reflect any rotation happening further up the display list.
	* To obtain that value please see the `worldRotation` property.
	*/
	var rotation:Float;
	
	/**
	* The scale of this DisplayObject. A scale of 1:1 represents the DisplayObject
	* at its default size. A value of 0.5 would scale this DisplayObject by half, and so on.
	* 
	* The value of this property does not reflect any scaling happening further up the display list.
	* To obtain that value please see the `worldScale` property.
	*/
	var scale:Point;
	
	var stage:DisplayObjectContainer;
	
	/**
	* The visibility of this DisplayObject. A value of `false` makes the object invisible.
	* A value of `true` makes it visible. Please note that an object with a visible value of
	* `false` is skipped during the render pass. Equally a DisplayObject with visible false will
	* not render any of its children.
	* 
	* The value of this property does not reflect any visible values set further up the display list.
	* To obtain that value please see the `worldVisible` property.
	*/
	var visible:Bool;
	
	/**
	* The multiplied alpha value of this DisplayObject. A value of 1 is fully opaque. A value of 0 is transparent.
	* This value is the calculated total, based on the alpha values of all parents of this DisplayObjects
	* in the display list.
	* 
	* To obtain, and set, the local alpha value, see the `alpha` property.
	* 
	* Note: This property is only updated at the end of the `updateTransform` call, once per render. Until
	* that happens this property will contain values based on the previous frame. Be mindful of this if
	* accessing this property outside of the normal game flow, i.e. from an asynchronous event callback.
	*/
	var worldAlpha:Float;
	
	/**
	* The coordinates, in pixels, of this DisplayObject within the world.
	* 
	* This property contains the calculated total, based on the positions of all parents of this
	* DisplayObject in the display list.
	* 
	* Note: This property is only updated at the end of the `updateTransform` call, once per render. Until
	* that happens this property will contain values based on the previous frame. Be mindful of this if
	* accessing this property outside of the normal game flow, i.e. from an asynchronous event callback.
	*/
	var worldPosition:Point;
	
	/**
	* The global scale of this DisplayObject.
	* 
	* This property contains the calculated total, based on the scales of all parents of this
	* DisplayObject in the display list.
	* 
	* Note: This property is only updated at the end of the `updateTransform` call, once per render. Until
	* that happens this property will contain values based on the previous frame. Be mindful of this if
	* accessing this property outside of the normal game flow, i.e. from an asynchronous event callback.
	*/
	var worldScale:Point;
	
	/**
	* The current transform of this DisplayObject.
	* 
	* This property contains the calculated total, based on the transforms of all parents of this
	* DisplayObject in the display list.
	* 
	* Note: This property is only updated at the end of the `updateTransform` call, once per render. Until
	* that happens this property will contain values based on the previous frame. Be mindful of this if
	* accessing this property outside of the normal game flow, i.e. from an asynchronous event callback.
	*/
	var worldTransform:Matrix;
	
	/**
	* The rotation, in radians, of this DisplayObject.
	* 
	* This property contains the calculated total, based on the rotations of all parents of this
	* DisplayObject in the display list.
	* 
	* Note: This property is only updated at the end of the `updateTransform` call, once per render. Until
	* that happens this property will contain values based on the previous frame. Be mindful of this if
	* accessing this property outside of the normal game flow, i.e. from an asynchronous event callback.
	*/
	var worldRotation:Float;
	
	/**
	* Indicates if this DisplayObject is visible, based on it, and all of its parents, `visible` property values.
	*/
	var worldVisible:Bool;
	
	/**
	* The horizontal position of the DisplayObject, in pixels, relative to its parent.
	* If you need the world position of the DisplayObject, use `DisplayObject.worldPosition` instead.
	*/
	var x:Float;
	
	/**
	* The vertical position of the DisplayObject, in pixels, relative to its parent.
	* If you need the world position of the DisplayObject, use `DisplayObject.worldPosition` instead.
	*/
	var y:Float;
	
	function click(e:InteractionData):Void;
	
	function displayObjectUpdateTransform(?parent:DisplayObjectContainer):Void;
	
	function generateTexture(?resolution:Float, ?scaleMode:Float, ?renderer:EitherType<PixiRenderer, Float>):RenderTexture;
	
	function mousedown(e:InteractionData):Void;
	
	function mouseout(e:InteractionData):Void;
	
	function mouseover(e:InteractionData):Void;
	
	function mouseup(e:InteractionData):Void;
	
	function mousemove(e:InteractionData):Void;
	
	function mouseupoutside(e:InteractionData):Void;
	
	function rightclick(e:InteractionData):Void;
	
	function rightdown(e:InteractionData):Void;
	
	function rightup(e:InteractionData):Void;
	
	function rightupoutside(e:InteractionData):Void;
	
	function setStageReference(stage:DisplayObjectContainer):Void;
	
	function tap(e:InteractionData):Void;
	
	function toGlobal(position:Point):Point;
	
	function toLocal(position:Point, from:DisplayObject):Point;
	
	function touchend(e:InteractionData):Void;
	
	function touchendoutside(e:InteractionData):Void;
	
	function touchstart(e:InteractionData):Void;
	
	function touchmove(e:InteractionData):Void;
	
	function updateTransform(?parent:DisplayObjectContainer):Void;
	
}

