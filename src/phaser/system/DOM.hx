package phaser.system;

@:native("Phaser.DOM")
extern class DOM {
	
	/**
	 * Get the [absolute] position of the element relative to the Document.
	 * 
	 * The value may vary slightly as the page is scrolled due to rounding errors.
	 */
	function getOffset (element:Dynamic, ?point:phaser.geom.Point):phaser.geom.Point;
	
	/**
	 * A cross-browser element.getBoundingClientRect method with optional cushion.
	 * 
	 * Returns a plain object containing the properties top/bottom/left/right/width/height with respect to the top-left corner of the current viewport.
	 * Its properties match the native rectangle.
	 * The cushion parameter is an amount of pixels (+/-) to cushion the element.
	 * It adjusts the measurements such that it is possible to detect when an element is near the viewport.
	 */
	@:overload(function (element:Dynamic, ?cushion:Float):Dynamic {})
	function getBounds (element:Dynamic, ?cushion:Float):Dynamic;
	
	/**
	 * Calibrates element coordinates for inViewport checks.
	 */
	function calibrate (coords:Dynamic, ?cushion:Float):Dynamic;
	
	/**
	 * Get the Visual viewport aspect ratio (or the aspect ratio of an object or element)    
	 */
	@:overload(function (?object:Dynamic):Float {})
	function getAspectRatio (?object:Dynamic):Float;
	
	/**
	 * Tests if the given DOM element is within the Layout viewport.
	 * 
	 * The optional cushion parameter allows you to specify a distance.
	 * 
	 * inViewport(element, 100) is true if the element is in the viewport or 100px near it.
	 * inViewport(element, -100) is true if the element is in the viewport or at least 100px near it.
	 */
	@:overload(function (element:Dynamic, ?cushion:Float):Bool {})
	function inViewport (element:Dynamic, ?cushion:Float):Bool;
	
	/**
	 * Returns the device screen orientation.
	 * 
	 * Orientation values: 'portrait-primary', 'landscape-primary', 'portrait-secondary', 'landscape-secondary'.
	 * 
	 * Order of resolving:
	 * - Screen Orientation API, or variation of - Future track. Most desktop and mobile browsers.
	 * - Screen size ratio check - If fallback is 'screen', suited for desktops.
	 * - Viewport size ratio check - If fallback is 'viewport', suited for mobile.
	 * - window.orientation - If fallback is 'window.orientation', works iOS and probably most Android; non-recommended track.
	 * - Media query
	 * - Viewport size ratio check (probably only IE9 and legacy mobile gets here..)
	 * 
	 * See
	 * - <a href='https://w3c.github.io/screen-orientation/'>https://w3c.github.io/screen-orientation/</a> (conflicts with mozOrientation/msOrientation)
	 * - <a href='https://developer.mozilla.org/en-US/docs/Web/API/Screen.orientation'>https://developer.mozilla.org/en-US/docs/Web/API/Screen.orientation</a> (mozOrientation)
	 * - <a href='http://msdn.microsoft.com/en-us/library/ie/dn342934(v=vs.85).aspx'>http://msdn.microsoft.com/en-us/library/ie/dn342934(v=vs.85).aspx</a>
	 * - <a href='https://developer.mozilla.org/en-US/docs/Web/Guide/CSS/Testing_media_queries'>https://developer.mozilla.org/en-US/docs/Web/Guide/CSS/Testing_media_queries</a>
	 * - <a href='http://stackoverflow.com/questions/4917664/detect-viewport-orientation'>http://stackoverflow.com/questions/4917664/detect-viewport-orientation</a>
	 * - <a href='http://www.matthewgifford.com/blog/2011/12/22/a-misconception-about-window-orientation'>http://www.matthewgifford.com/blog/2011/12/22/a-misconception-about-window-orientation</a>
	 */
	function getScreenOrientation (?primaryFallback:String):Void;
	
	/**
	 * The bounds of the Visual viewport, as discussed in 
	 * {@link <a href='http://www.quirksmode.org/mobile/viewports.html'>http://www.quirksmode.org/mobile/viewports.html</a> A tale of two viewports — part one}
	 * with one difference: the viewport size <em>excludes</em> scrollbars, as found on some desktop browsers.   
	 * 
	 * Supported mobile:
	 *   iOS/Safari, Android 4, IE10, Firefox OS (maybe not Firefox Android), Opera Mobile 16
	 * 
	 * The properties change dynamically.
	 */
	var height(default, null):Float;
	
	/**
	 * A cross-browser window.scrollX.
	 */
	var scrollX(default, null):Float;
	
	/**
	 * A cross-browser window.scrollY.
	 */
	var scrollY(default, null):Float;
	
}
