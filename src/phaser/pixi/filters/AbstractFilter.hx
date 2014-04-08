package phaser.pixi.filters;

@:native("PIXI.AbstractFilter")
extern class AbstractFilter {
	function new (a0:Dynamic, a1:Dynamic);
	var passes:Array<Dynamic>;
	var shaders:Dynamic;
	var uniforms:Dynamic;
	var fragmentSrc:Dynamic;
}
