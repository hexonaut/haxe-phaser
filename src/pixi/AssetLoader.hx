package pixi;

@:native("PIXI.AssetLoader")
extern class AssetLoader implements Mixin {

	var assetURLs:Array<String>;
	
	var crossorigin:Bool;
	
	var loadersByType:Dynamic;
	
	function new(assetURLs:Array<String>, crossorigin:Bool);
	
	function listeners(eventName:String):Array<Dynamic>;
	
	function emit(eventName:String, ?data:Dynamic):Bool;
	
	function dispatchEvent(eventName:String, ?data:Dynamic):Bool;
	
	function on(eventName:String, fn:Dynamic):Dynamic;
	
	function addEventListener(eventName:String, fn:Dynamic):Dynamic;
	
	function once(eventName:String, fn:Dynamic):Dynamic;
	
	function off(eventName:String, fn:Dynamic):Dynamic;
	
	function removeAllEventListeners(eventName:String):Void;
	
	function load():Void;
	
}

