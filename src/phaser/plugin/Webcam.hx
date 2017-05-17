package phaser.plugin;

import js.html.VideoElement as HTMLVideoElement;

/**
* Provides access to the Webcam (if available)
*/
@:native("Phaser.Plugin.Webcam")
extern class Webcam extends phaser.Plugin {

	/**
	* Provides access to the Webcam (if available)
	*/
	function new(game:phaser.Game, parent:pixi.DisplayObject);
	
	/**
	* Is this Webcam plugin capturing a video stream or not?
	*/
	@:native("active")
	var Webcam_active:Bool;
	
	var context:Dynamic;
	
	var stream:Dynamic;
	
	var video:HTMLVideoElement;
	
	var connectCallback:Dynamic->Void;
	
	var errorCallback:Dynamic->Void;
	
	var grab:Dynamic->Float->Float->Void;
	
	function start(width:Float, height:Float, context:Dynamic):Void;
	
	function stop():Void;
	
	@:native("update")
	function Webcam_update():Void;
	
}

