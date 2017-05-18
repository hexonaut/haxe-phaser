package pixi;

@:native("PIXI.BitmapFontLoader")
extern class BitmapFontLoader implements Mixin {

	function new(url:String, crossorigin:Bool);
	
	var baseUrl:String;
	
	var crossorigin:Bool;
	
	var texture:Texture;
	
	var url:String;
	
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

