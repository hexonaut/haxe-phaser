package pixi;

import js.html.CanvasElement as HTMLCanvasElement;
import js.html.HtmlElement as HTMLElement;

@:native("PIXI.CanvasPool")
extern class CanvasPool {

	static function create(parent:HTMLElement, ?width:Float, ?height:Float):HTMLCanvasElement;
	
	static function getFirst():HTMLCanvasElement;
	
	static function remove(parent:HTMLElement):Void;
	
	static function removeByCanvas(canvas:HTMLCanvasElement):HTMLCanvasElement;
	
	static function getTotal():Float;
	
	static function getFree():Float;
	
}

