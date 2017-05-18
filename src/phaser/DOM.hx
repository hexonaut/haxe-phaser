package phaser;

/**
* DOM utility class.
* 
* Provides a useful Window and Element functions as well as cross-browser compatibility buffer.
* 
* Some code originally derived from {@link https://github.com/ryanve/verge verge}.
* Some parts were inspired by the research of Ryan Van Etten, released under MIT License 2013.
*/
@:native("Phaser.DOM")
extern class DOM {

	/**
	* The bounds of the Visual viewport, as discussed in
	* {@link http://www.quirksmode.org/mobile/viewports.html A tale of two viewports — part one}
	* with one difference: the viewport size _excludes_ scrollbars, as found on some desktop browsers.
	* 
	* Supported mobile:
	*    iOS/Safari, Android 4, IE10, Firefox OS (maybe not Firefox Android), Opera Mobile 16
	* 
	* The properties change dynamically.
	*/
	static var visualBounds:phaser.Rectangle;
	
	/**
	* The bounds of the Layout viewport, as discussed in
	* {@link http://www.quirksmode.org/mobile/viewports2.html A tale of two viewports — part two};
	* but honoring the constraints as specified applicable viewport meta-tag.
	* 
	* The bounds returned are not guaranteed to be fully aligned with CSS media queries (see
	* {@link http://www.matanich.com/2013/01/07/viewport-size/ What size is my viewport?}).
	* 
	* This is _not_ representative of the Visual bounds: in particular the non-primary axis will
	* generally be significantly larger than the screen height on mobile devices when running with a
	* constrained viewport.
	* 
	* The properties change dynamically.
	*/
	static var layoutBounds:phaser.Rectangle;
	
	/**
	* The size of the document / Layout viewport.
	* 
	* This incorrectly reports the dimensions in IE.
	* 
	* The properties change dynamically.
	*/
	static var documentBounds:phaser.Rectangle;
	
	/**
	* Calibrates element coordinates for `inLayoutViewport` checks.
	* 
	* @param coords An object containing the following properties: `{top: number, right: number, bottom: number, left: number}`
	* @param cushion A value to adjust the coordinates by.
	* @return The calibrated element coordinates
	*/
	static function calibrate(coords:Dynamic, ?cushion:Float):Dynamic;
	
	/**
	* Get the Visual viewport aspect ratio (or the aspect ratio of an object or element)
	* 
	* @param object The object to determine the aspect ratio for. Must have public `width` and `height` properties or methods. - Default: (visualViewport)
	* @return The aspect ratio.
	*/
	static function getAspectRatio(object:Dynamic):Float;
	
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
	* - https://w3c.github.io/screen-orientation/ (conflicts with mozOrientation/msOrientation)
	* - https://developer.mozilla.org/en-US/docs/Web/API/Screen.orientation (mozOrientation)
	* - http://msdn.microsoft.com/en-us/library/ie/dn342934(v=vs.85).aspx
	* - https://developer.mozilla.org/en-US/docs/Web/Guide/CSS/Testing_media_queries
	* - http://stackoverflow.com/questions/4917664/detect-viewport-orientation
	* - http://www.matthewgifford.com/blog/2011/12/22/a-misconception-about-window-orientation
	* 
	* @param primaryFallback Specify 'screen', 'viewport', or 'window.orientation'. - Default: (none)
	*/
	static function getScreenOrientation(?primaryFallback:String):String;
	
	/**
	* A cross-browser element.getBoundingClientRect method with optional cushion.
	* 
	* Returns a plain object containing the properties `top/bottom/left/right/width/height` with respect to the top-left corner of the current viewport.
	* Its properties match the native rectangle.
	* The cushion parameter is an amount of pixels (+/-) to cushion the element.
	* It adjusts the measurements such that it is possible to detect when an element is near the viewport.
	* 
	* @param element The element or stack (uses first item) to get the bounds for.
	* @param cushion A +/- pixel adjustment amount.
	* @return A plain object containing the properties `top/bottom/left/right/width/height` or `false` if a non-valid element is given.
	*/
	static function getBounds(element:Dynamic, ?cushion:Float):Dynamic;
	
	/**
	* Get the [absolute] position of the element relative to the Document.
	* 
	* The value may vary slightly as the page is scrolled due to rounding errors.
	* 
	* @param element The targeted element that we want to retrieve the offset.
	* @param point The point we want to take the x/y values of the offset.
	* @return - A point objet with the offsetX and Y as its properties.
	*/
	static function getOffset(element:Dynamic, ?point:Point):Point;
	
	/**
	* Tests if the given DOM element is within the Layout viewport.
	* 
	* The optional cushion parameter allows you to specify a distance.
	* 
	* inLayoutViewport(element, 100) is `true` if the element is in the viewport or 100px near it.
	* inLayoutViewport(element, -100) is `true` if the element is in the viewport or at least 100px near it.
	* 
	* @param element The DOM element to check. If no element is given it defaults to the Phaser game canvas.
	* @param cushion The cushion allows you to specify a distance within which the element must be within the viewport.
	* @return True if the element is within the viewport, or within `cushion` distance from it.
	*/
	static function inLayoutViewport(element:Dynamic, ?cushion:Float):Bool;
	
}

