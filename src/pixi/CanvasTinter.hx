package pixi;

import js.html.CanvasElement as HTMLCanvasElement;

/**
* Utility methods for Sprite/Texture tinting.
*/
@:native("PIXI.CanvasTinter")
extern class CanvasTinter {

	/**
	* Basically this method just needs a sprite and a color and tints the sprite with the given color.
	* 
	* @param sprite the sprite to tint
	* @param color the color to use to tint the sprite with
	* @return The tinted canvas
	*/
	static function getTintedTexture(sprite:Sprite, color:Float):HTMLCanvasElement;
	
	/**
	* Tint a texture using the "multiply" operation.
	* 
	* @param texture the texture to tint
	* @param color the color to use to tint the sprite with
	* @param canvas the current canvas
	*/
	static function tintWithMultiply(texture:Texture, color:Float, canvas:HTMLCanvasElement):Void;
	
	static function tintWithOverlay(texture:Texture, color:Float, canvas:HTMLCanvasElement):Void;
	
	static function tintWithPerPixel(texture:Texture, color:Float, canvas:HTMLCanvasElement):Void;
	
	static var canUseMultiply:Bool;
	
	static var tintMethod:Dynamic;
	
}

