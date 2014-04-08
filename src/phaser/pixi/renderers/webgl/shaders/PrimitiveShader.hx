package phaser.pixi.renderers.webgl.shaders;

@:native("PIXI.PrimitiveShader")
extern class PrimitiveShader {
	function new (WebGLContext:Dynamic);
	var gl:Dynamic;
	var program:Dynamic;
	var fragmentSrc:Dynamic;
	var vertexSrc:Dynamic;
}
