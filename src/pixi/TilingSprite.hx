package pixi;

@:native("PIXI.TilingSprite")
extern class TilingSprite extends Sprite {

	function new(texture:Texture, width:Float, height:Float);
	
	var canvasBuffer:pixi.CanvasBuffer;
	
	@:native("blendMode")
	var TilingSprite_blendMode:Float;
	
	var refreshTexture:Bool;
	
	@:native("texture")
	var TilingSprite_texture:Texture;
	
	var textureDebug:Bool;
	
	@:native("tint")
	var TilingSprite_tint:Float;
	
	var tilePosition:Point;
	
	var tilePattern:pixi.Texture;
	
	var tileScale:Point;
	
	var tileScaleOffset:Point;
	
	function destroy():Void;
	
	function generateTilingTexture(?forcePowerOfTwo:Bool):Void;
	
	@:native("setTexture")
	function TilingSprite_setTexture(texture:Texture):Void;
	
}

