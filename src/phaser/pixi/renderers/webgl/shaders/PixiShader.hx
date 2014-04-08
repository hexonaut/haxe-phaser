package phaser.pixi.renderers.webgl.shaders;

@:native("PIXI.PixiShader")
extern class PixiShader {
	function new ();
	var gl:Dynamic;
	var program:Dynamic;
	var fragmentSrc:Dynamic;
	var textureCount:Float;
	var defaultVertexSrc:String;
}
