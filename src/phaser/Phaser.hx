package phaser;

@:native("Phaser")
extern class Phaser {
	
	static var AUTO:Int;
	static var CANVAS:Int;
	static var WEBGL:Int;
	static var HEADLESS:Int;
	
	static var NONE:Int;
	static var LEFT:Int;
	static var RIGHT:Int;
	static var UP:Int;
	static var DOWN:Int;
	
	static var SPRITE:Int;
	static var BUTTON:Int;
	static var IMAGE:Int;
	static var GRAPHICS:Int;
	static var TEXT:Int;
	static var TILESPRITE:Int;
	static var BITMAPTEXT:Int;
	static var GROUP:Int;
	static var RENDERTEXTURE:Int;
	static var TILEMAP:Int;
	static var TILEMAPLAYER:Int;
	static var EMITTER:Int;
	static var POLYGON:Int;
	static var BITMAPDATA:Int;
	static var CANVAS_FILTER:Int;
	static var WEBGL_FILTER:Int;
	static var ELLIPSE:Int;
	static var SPRITEBATCH:Int;
	static var RETROFONT:Int;
	
	static var blendModes: {
        NORMAL:Int,
        ADD:Int,
        MULTIPLY:Int,
        SCREEN:Int,
        OVERLAY:Int,
        DARKEN:Int,
        LIGHTEN:Int,
        COLOR_DODGE:Int,
        COLOR_BURN:Int,
        HARD_LIGHT:Int,
        SOFT_LIGHT:Int,
        DIFFERENCE:Int,
        EXCLUSION:Int,
        HUE:Int,
        SATURATION:Int,
        COLOR:Int,
        LUMINOSITY:Int
    };
	
	static var scaleModes: {
        DEFAULT:Int,
        LINEAR:Int,
        NEAREST:Int
    };
	
}
