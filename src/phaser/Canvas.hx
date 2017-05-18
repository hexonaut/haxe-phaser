package phaser;

import js.html.CanvasElement as HTMLCanvasElement;
import js.html.CanvasRenderingContext2D;
import js.html.HtmlElement as HTMLElement;
import js.html.DivElement as HTMLDivElement;

/**
* The Canvas class handles everything related to creating the `canvas` DOM tag that Phaser will use,
* including styles, offset and aspect ratio.
*/
@:native("Phaser.Canvas")
extern class Canvas {

	/**
	* Adds the given canvas element to the DOM. The canvas will be added as a child of the given parent.
	* If no parent is given it will be added as a child of the document.body.
	* 
	* @param canvas The canvas to be added to the DOM.
	* @param parent The DOM element to add the canvas to.
	* @param overflowHidden If set to true it will add the overflow='hidden' style to the parent DOM element. - Default: true
	* @return Returns the source canvas.
	*/
	static function addToDOM(canvas:HTMLCanvasElement, parent:HTMLElement, ?overflowHidden:Bool):HTMLCanvasElement;
	
	/**
	* Creates a `canvas` DOM element. The element is not automatically added to the document.
	* 
	* @param parent The object that will own the canvas that is created.
	* @param width The width of the canvas element. - Default: 256
	* @param height The height of the canvas element.. - Default: 256
	* @param id If specified, and not the empty string, this will be set as the ID of the canvas element. Otherwise no ID will be set. - Default: (none)
	* @param skipPool If `true` the canvas will not be placed in the CanvasPool global.
	* @return The newly created canvas element.
	*/
	static function create(parent:HTMLDivElement, ?width:Float, ?height:Float, ?id:String, ?skipPool:Bool):HTMLCanvasElement;
	
	/**
	* Returns `true` if the given context has image smoothing enabled, otherwise returns `false`.
	* 
	* @param context The context to check for smoothing on.
	* @return True if the given context has image smoothing enabled, otherwise false.
	*/
	static function getSmoothingEnabled(context:CanvasRenderingContext2D):Bool;
	
	/**
	* Gets the Smoothing Enabled vendor prefix being used on the given context, or null if not set.
	* 
	* @param context The context to enable or disable the image smoothing on.
	* @return Returns the smoothingEnabled vendor prefix, or null if not set on the context.
	*/
	static function getSmoothingPrefix(context:CanvasRenderingContext2D):String;
	
	/**
	* Removes the given canvas element from the DOM.
	* 
	* @param canvas The canvas to be removed from the DOM.
	*/
	static function removeFromDOM(canvas:HTMLCanvasElement):Void;
	
	/**
	* Sets the background color behind the canvas. This changes the canvas style property.
	* 
	* @param canvas The canvas to set the background color on.
	* @param color The color to set. Can be in the format 'rgb(r,g,b)', or '#RRGGBB' or any valid CSS color. - Default: 'rgb(0,0,0)'
	* @return Returns the source canvas.
	*/
	static function setBackgroundColor(canvas:HTMLCanvasElement, color:String):HTMLCanvasElement;
	
	/**
	* Sets the CSS image-rendering property on the given canvas to be 'bicubic' (aka 'auto').
	* Note that if this doesn't given the desired result then see the CanvasUtils.setSmoothingEnabled method.
	* 
	* @param canvas The canvas to set image-rendering bicubic on.
	* @return Returns the source canvas.
	*/
	static function setImageRenderingBicubic(canvas:HTMLCanvasElement):HTMLCanvasElement;
	
	/**
	* Sets the CSS image-rendering property on the given canvas to be 'crisp' (aka 'optimize contrast' on webkit).
	* Note that if this doesn't given the desired result then see the setSmoothingEnabled.
	* 
	* @param canvas The canvas to set image-rendering crisp on.
	* @return Returns the source canvas.
	*/
	static function setImageRenderingCrisp(canvas:HTMLCanvasElement):HTMLCanvasElement;
	
	/**
	* Sets the Image Smoothing property on the given context. Set to false to disable image smoothing.
	* By default browsers have image smoothing enabled, which isn't always what you visually want, especially
	* when using pixel art in a game. Note that this sets the property on the context itself, so that any image
	* drawn to the context will be affected. This sets the property across all current browsers but support is
	* patchy on earlier browsers, especially on mobile.
	* 
	* @param context The context to enable or disable the image smoothing on.
	* @param value If set to true it will enable image smoothing, false will disable it.
	* @return Returns the source context.
	*/
	static function setSmoothingEnabled(context:CanvasRenderingContext2D, value:Bool):CanvasRenderingContext2D;
	
	/**
	* Sets the touch-action property on the canvas style. Can be used to disable default browser touch actions.
	* 
	* @param canvas The canvas to set the touch action on.
	* @param value The touch action to set. Defaults to 'none'.
	* @return The source canvas.
	*/
	static function setTouchAction(canvas:HTMLCanvasElement, value:String):HTMLCanvasElement;
	
	/**
	* Sets the transform of the given canvas to the matrix values provided.
	* 
	* @param context The context to set the transform on.
	* @param translateX The value to translate horizontally by.
	* @param translateY The value to translate vertically by.
	* @param scaleX The value to scale horizontally by.
	* @param scaleY The value to scale vertically by.
	* @param skewX The value to skew horizontaly by.
	* @param skewY The value to skew vertically by.
	* @return Returns the source context.
	*/
	static function setTransform(context:CanvasRenderingContext2D, translateX:Float, translateY:Float, scaleX:Float, scaleY:Float, skewX:Float, skewY:Float):CanvasRenderingContext2D;
	
	/**
	* Sets the user-select property on the canvas style. Can be used to disable default browser selection actions.
	* 
	* @param canvas The canvas to set the touch action on.
	* @param value The touch action to set. Defaults to 'none'.
	* @return The source canvas.
	*/
	static function setUserSelect(canvas:HTMLCanvasElement, ?value:String):HTMLCanvasElement;
	
}

