package pixi;

@:native("PIXI.Atlas")
extern class Atlas {

	static var FORMAT:{alpha:Float, intensity:Float, luminanceAlpha:Float, rgb565:Float, rgba4444:Float, rgb888:Float, rgba8888:Float};
	
	static var TextureFilter:{nearest:Float, linear:Float, mipMap:Float, mipMapNearestNearest:Float, mipMapLinearNearest:Float, mipMapNearestLinear:Float, mipMapLinearLinear:Float};
	
	static var textureWrap:{mirroredRepeat:Float, clampToEdge:Float, repeat:Float};
	
	function new(atlasText:String, textureLoader:AtlasLoader);
	
	var textureLoader:AtlasLoader;
	
	var pages:Array<AtlasPage>;
	
	var regions:Array<AtlasRegion>;
	
	function findRegion(name:String):AtlasRegion;
	
	function dispose():Void;
	
	function updateUVs(page:AtlasPage):Void;
	
}

