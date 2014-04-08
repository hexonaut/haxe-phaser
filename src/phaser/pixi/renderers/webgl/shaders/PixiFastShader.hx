package phaser.pixi.renderers.webgl.shaders;

@:native("PIXI.PixiFastShader")
extern class PixiFastShader {
	function new (WebGLContext:Dynamic);
	var gl:Dynamic;
	var program:Dynamic;
	var fragmentSrc:Dynamic;
	var vertexSrc:Dynamic;
	var textureCount:Float;
}
