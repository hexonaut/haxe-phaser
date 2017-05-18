package pixi;

@:native("PIXI.ImageLoader")
extern class ImageLoader implements Mixin {

	function new(url:String, ?crossorigin:Bool);
	
	var texture:Texture;
	
	function listeners(eventName:String):Array<Dynamic>;
	
	function emit(eventName:String, ?data:Dynamic):Bool;
	
	function dispatchEvent(eventName:String, ?data:Dynamic):Bool;
	
	function on(eventName:String, fn:Dynamic):Dynamic;
	
	function addEventListener(eventName:String, fn:Dynamic):Dynamic;
	
	function once(eventName:String, fn:Dynamic):Dynamic;
	
	function off(eventName:String, fn:Dynamic):Dynamic;
	
	function removeAllEventListeners(eventName:String):Void;
	
	function load():Void;
	
	function loadFramedSpriteSheet(frameWidth:Float, frameHeight:Float, textureName:String):Void;
	
}

