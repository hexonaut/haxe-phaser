package pixi;

import js.html.CanvasElement as HTMLCanvasElement;
import js.html.ImageElement as HTMLImageElement;

@:native("PIXI.RenderTexture")
extern class RenderTexture extends Texture {

	function new(?width:Float, ?height:Float, ?renderer:PixiRenderer, ?scaleMode:ScaleModes, ?resolution:Float);
	
	@:native("frame")
	var RenderTexture_frame:Rectangle;
	
	@:native("baseTexture")
	var RenderTexture_baseTexture:BaseTexture;
	
	var renderer:PixiRenderer;
	
	var resolution:Float;
	
	@:native("valid")
	var RenderTexture_valid:Bool;
	
	function clear():Void;
	
	function getBase64():String;
	
	function getCanvas():HTMLCanvasElement;
	
	function getImage():HTMLImageElement;
	
	function resize(width:Float, height:Float, updateBase:Bool):Void;
	
	function render(displayObject:DisplayObject, ?matrix:Matrix, ?clear:Bool):Void;
	
}

