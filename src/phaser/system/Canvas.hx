package phaser.system;

@:native("Phaser.Canvas")
extern class Canvas {
	
	/**
	 * Creates a canvas DOM element. The element is not automatically added to the document.
	 */
	function create (?width:Float = 256, ?height:Float = 256, ?id:String = ''):Dynamic;
	
	/**
	 * Sets the background color behind the canvas. This changes the canvas style property.
	 */
	function setBackgroundColor (canvas:Dynamic, ?color:String):Dynamic;
	
	/**
	 * Sets the touch-action property on the canvas style. Can be used to disable default browser touch actions.
	 */
	function setTouchAction (canvas:Dynamic, ?value:String):Dynamic;
	
	/**
	 * Sets the user-select property on the canvas style. Can be used to disable default browser selection actions.
	 */
	function setUserSelect (canvas:Dynamic, ?value:String):Dynamic;
	
	/**
	 * Adds the given canvas element to the DOM. The canvas will be added as a child of the given parent.
	 * If no parent is given it will be added as a child of the document.body.
	 */
	@:overload(function (canvas:Dynamic, parent:String, ?overflowHidden:Bool = true):Dynamic {})
	function addToDOM (canvas:Dynamic, parent:Dynamic, ?overflowHidden:Bool = true):Dynamic;
	
	/**
	 * Removes the given canvas element from the DOM.
	 */
	function removeFromDOM (canvas:Dynamic):Void;
	
	/**
	 * Sets the transform of the given canvas to the matrix values provided.
	 */
	function setTransform (context:Dynamic, translateX:Float, translateY:Float, scaleX:Float, scaleY:Float, skewX:Float, skewY:Float):Dynamic;
	
	/**
	 * Sets the Image Smoothing property on the given context. Set to false to disable image smoothing.
	 * By default browsers have image smoothing enabled, which isn't always what you visually want, especially
	 * when using pixel art in a game. Note that this sets the property on the context itself, so that any image
	 * drawn to the context will be affected. This sets the property across all current browsers but support is
	 * patchy on earlier browsers, especially on mobile.
	 */
	function setSmoothingEnabled (context:Dynamic, value:Bool):Dynamic;
	
	/**
	 * Returns true if the given context has image smoothing enabled, otherwise returns false.
	 */
	function getSmoothingEnabled (context:Dynamic):Bool;
	
	/**
	 * Sets the CSS image-rendering property on the given canvas to be 'crisp' (aka 'optimize contrast' on webkit).
	 * Note that if this doesn't given the desired result then see the setSmoothingEnabled.
	 */
	function setImageRenderingCrisp (canvas:Dynamic):Dynamic;
	
	/**
	 * Sets the CSS image-rendering property on the given canvas to be 'bicubic' (aka 'auto').
	 * Note that if this doesn't given the desired result then see the CanvasUtils.setSmoothingEnabled method.
	 */
	function setImageRenderingBicubic (canvas:Dynamic):Dynamic;
	
	/**
	 * Get the DOM offset values of any given element
	 */
	function getOffset (element:Dynamic, ?point:phaser.geom.Point):phaser.geom.Point;
	
	/**
	 * Returns the aspect ratio of the given canvas.
	 */
	function getAspectRatio (canvas:Dynamic):Float;
	
}
