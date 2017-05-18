package pixi;

import js.html.VideoElement as HTMLVideoElement;

@:native("PIXI.VideoTexture")
extern class VideoTexture extends BaseTexture {

	static function baseTextureFromVideo(video:HTMLVideoElement, scaleMode:Float):BaseTexture;
	
	static function textureFromVideo(video:HTMLVideoElement, scaleMode:Float):Texture;
	
	static function fromUrl(videoSrc:String, ?scaleMode:Float, ?autoPlay:Bool, ?type:String, ?loop:Bool):Texture;
	
	var controls:Bool;
	
	var autoUpdate:Bool;
	
	var type:String;
	
	function changeSource(src:String, type:String, loop:Bool):Void;
	
	function play():Void;
	
	function stop():Void;
	
	@:native("destroy")
	function VideoTexture_destroy():Void;
	
	function updateBound():Void;
	
	var onPlayStart:Void->Void;
	
	var onPlayStop:Void->Void;
	
	var onCanPlay:Dynamic->Void;
	
}

