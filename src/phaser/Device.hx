package phaser;

/**
* Detects device support capabilities and is responsible for device initialization - see {@link Phaser.Device.whenReady whenReady}.
* 
* This class represents a singleton object that can be accessed directly as `game.device`
* (or, as a fallback, `Phaser.Device` when a game instance is not available) without the need to instantiate it.
* 
* Unless otherwise noted the device capabilities are only guaranteed after initialization. Initialization
* occurs automatically and is guaranteed complete before {@link Phaser.Game} begins its "boot" phase.
* Feature detection can be modified in the {@link Phaser.Device.onInitialized onInitialized} signal.
* 
* When checking features using the exposed properties only the *truth-iness* of the value should be relied upon
* unless the documentation states otherwise: properties may return `false`, `''`, `null`, or even `undefined`
* when indicating the lack of a feature.
* 
* Uses elements from System.js by MrDoob and Modernizr
*/
@:native("Phaser.Device")
extern class Device {

	/**
	* Same value as `littleEndian`.
	*/
	static var LITTLE_ENDIAN:Bool;
	
	/**
	* This signal is dispatched after device initialization occurs but before any of the ready
	* callbacks (see {@link Phaser.Device.whenReady whenReady}) have been invoked.
	* 
	* Local "patching" for a particular device can/should be done in this event.
	* 
	* _Note_: This signal is removed after the device has been readied; if a handler has not been
	* added _before_ `new Phaser.Game(..)` it is probably too late.
	*/
	static var onInitialized:phaser.Signal;
	
	static function checkFullScreenSupport():Void;
	
	/**
	* Check whether the host environment can play audio.
	* 
	* @param type One of 'mp3, 'ogg', 'm4a', 'wav', 'webm' or 'opus'.
	* @return True if the given file type is supported by the browser, otherwise false.
	*/
	static function canPlayAudio(type:String):Bool;
	
	/**
	* Check whether the host environment can play video files.
	* 
	* @param type One of 'mp4, 'ogg', 'webm' or 'mpeg'.
	* @return True if the given file type is supported by the browser, otherwise false.
	*/
	static function canPlayVideo(type:String):Bool;
	
	/**
	* Check whether the console is open.
	* Note that this only works in Firefox with Firebug and earlier versions of Chrome.
	* It used to work in Chrome, but then they removed the ability: {@link http://src.chromium.org/viewvc/blink?view=revision&revision=151136}
	*/
	static function isConsoleOpen():Bool;
	
	/**
	* Detect if the host is a an Android Stock browser.
	* This is available before the device "ready" event.
	* 
	* Authors might want to scale down on effects and switch to the CANVAS rendering method on those devices.
	*/
	static function isAndroidStockBrowser():String;
	
	static var whenReady:Dynamic->Dynamic->Void;
	
	/**
	* Is running on android?
	*/
	var android:Bool;
	
	/**
	* Set to true if running in Arora.
	*/
	var arora:Bool;
	
	/**
	* Are Audio tags available?
	*/
	var audioData:Bool;
	
	var cancelFullScreen:String;
	
	/**
	* If the browser isn't capable of handling tinting with alpha this will be false.
	*/
	var canHandleAlpha:Bool;
	
	/**
	* Whether or not the {@link http://caniuse.com/#feat=canvas-blending Canvas Blend Modes} are supported, consequently the ability to tint using the multiply method.
	* 
	* Expect `false` in Internet Explorer <= 11.
	*/
	var canUseMultiply:Bool;
	
	/**
	* Is canvas available?
	*/
	var canvas:Bool;
	
	/**
	* Set to true if running in Chrome.
	*/
	var chrome:Bool;
	
	/**
	* Is running on chromeOS?
	*/
	var chromeOS:Bool;
	
	/**
	* If running in Chrome this will contain the major version number.
	*/
	var chromeVersion:Float;
	
	/**
	* Is the game running under CocoonJS?
	*/
	var cocoonJS:Bool;
	
	/**
	* Is this game running with CocoonJS.App?
	*/
	var cocoonJSApp:Bool;
	
	/**
	* Is the game running under Apache Cordova?
	*/
	var cordova:Bool;
	
	/**
	* Is the game running under the Intel Crosswalk XDK?
	*/
	var crosswalk:Bool;
	
	/**
	* Is css3D available?
	*/
	var css3D:Bool;
	
	/**
	* Is running on a desktop?
	*/
	var desktop:Bool;
	
	/**
	* The time the device became ready.
	*/
	var deviceReadyAt:Float;
	
	/**
	* Is the game running under GitHub Electron?
	*/
	var electron:Bool;
	
	/**
	* Is the game running under Ejecta?
	*/
	var ejecta:Bool;
	
	/**
	* Set to true if running in Epiphany.
	*/
	var epiphany:Bool;
	
	/**
	* Is file available?
	*/
	var file:Bool;
	
	/**
	* Is fileSystem available?
	*/
	var fileSystem:Bool;
	
	/**
	* Set to true if running in Firefox.
	*/
	var firefox:Bool;
	
	/**
	* If running in Firefox this will contain the major version number.
	*/
	var firefoxVersion:Float;
	
	var fullScreen:Bool;
	
	var fullScreenKeyboard:Bool;
	
	/**
	* Does the device support the getUserMedia API?
	* Default: true
	*/
	var getUserMedia:Bool;
	
	var game:phaser.Game;
	
	/**
	* Can this device play h264 mp4 video files?
	*/
	var h264Video:Bool;
	
	/**
	* Can this device play hls video files?
	*/
	var hlsVideo:Bool;
	
	/**
	* Set to true if running in Internet Explorer.
	*/
	var ie:Bool;
	
	/**
	* If running in Internet Explorer this will contain the major version number. Beyond IE10 you should use Device.trident and Device.tridentVersion.
	*/
	var ieVersion:Float;
	
	/**
	* Is running on iOS?
	*/
	var iOS:Bool;
	
	/**
	* If running in iOS this will contain the major version number.
	*/
	var iOSVersion:Float;
	
	/**
	* The time as which initialization has completed.
	*/
	var initialized:Bool;
	
	/**
	* Is running on iPad?
	*/
	var iPad:Bool;
	
	/**
	* Is running on iPhone?
	*/
	var iPhone:Bool;
	
	/**
	* Is running on iPhone4?
	*/
	var iPhone4:Bool;
	
	var kindle:Bool;
	
	/**
	* Is running on linux?
	*/
	var linux:Bool;
	
	/**
	* Is the device big or little endian? (only detected if the browser supports TypedArrays)
	*/
	var littleEndian:Bool;
	
	/**
	* Is localStorage available?
	*/
	var localStorage:Bool;
	
	/**
	* Can this device play m4a files? True if this device can play m4a files.
	*/
	var m4a:Bool;
	
	/**
	* Is running on macOS?
	*/
	var macOS:Bool;
	
	/**
	* Set to true if running in Midori.
	*/
	var midori:Bool;
	
	/**
	* Set to true if running in Mobile Safari.
	*/
	var mobileSafari:Bool;
	
	/**
	* Can this device play mp3 files?
	*/
	var mp3:Bool;
	
	/**
	* Can this device play h264 mp4 video files?
	*/
	var mp4Video:Bool;
	
	/**
	* Is mspointer available?
	*/
	var mspointer:Bool;
	
	/**
	* Is the game running under Node.js?
	*/
	var node:Bool;
	
	/**
	* Is the game running under Node-Webkit?
	*/
	var nodeWebkit:Bool;
	
	/**
	* Can this device play ogg files?
	*/
	var ogg:Bool;
	
	/**
	* Can this device play ogg video files?
	*/
	var oggVideo:Float;
	
	/**
	* Set to true if running in Opera.
	*/
	var opera:Bool;
	
	/**
	* Can this device play opus files?
	*/
	var opus:Bool;
	
	/**
	* PixelRatio of the host device?
	*/
	var pixelRatio:Float;
	
	/**
	* Is Pointer Lock available?
	*/
	var pointerLock:Bool;
	
	/**
	* Is the browser running in strict mode (false) or quirks mode? (true)
	*/
	var quirksMode:Bool;
	
	var requestFullScreen:String;
	
	/**
	* Set to true if running in Safari.
	*/
	var safari:Bool;
	
	/**
	* Set to true if running in the Silk browser (as used on the Amazon Kindle)
	*/
	var silk:Bool;
	
	/**
	* Does the device context support 32bit pixel manipulation using array buffer views?
	*/
	var support32bit:Bool;
	
	/**
	* Is touch available?
	*/
	var touch:Bool;
	
	/**
	* Set to true if running a Trident version of Internet Explorer (IE11+)
	*/
	var trident:Bool;
	
	/**
	* If running in Internet Explorer 11 this will contain the major version number. See {@link http://msdn.microsoft.com/en-us/library/ie/ms537503(v=vs.85).aspx}
	*/
	var tridentVersion:Float;
	
	/**
	* Does the browser support TypedArrays?
	*/
	var typedArray:Bool;
	
	/**
	* Does the device support the Vibration API?
	*/
	var vibration:Bool;
	
	var vita:Bool;
	
	/**
	* Can this device play wav files?
	*/
	var wav:Bool;
	
	/**
	* Set to true if running as a WebApp, i.e. within a WebView
	*/
	var webApp:Bool;
	
	/**
	* Is the WebAudio API available?
	*/
	var webAudio:Bool;
	
	/**
	* Is webGL available?
	*/
	var webGL:Bool;
	
	/**
	* Can this device play webm files?
	*/
	var webm:Bool;
	
	/**
	* Can this device play webm video files?
	*/
	var webmVideo:Bool;
	
	/**
	* Is running on windows?
	*/
	var windows:Bool;
	
	/**
	* Is running on a Windows Phone?
	*/
	var windowsPhone:Bool;
	
	/**
	* The newest type of Wheel/Scroll event supported: 'wheel', 'mousewheel', 'DOMMouseScroll'
	*/
	var wheelEvent:String;
	
	/**
	* Is worker available?
	*/
	var worker:Bool;
	
	var wp9Video:Bool;
	
}

