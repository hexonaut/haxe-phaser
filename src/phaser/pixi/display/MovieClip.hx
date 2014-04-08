package phaser.pixi.display;

@:native("PIXI.MovieClip")
extern class MovieClip extends phaser.pixi.display.Sprite {
	var textures:Array<Dynamic>;
	var animationSpeed:Dynamic;
	var loop:Dynamic;
	var onComplete:Dynamic;
	var currentFrame:Dynamic;
	var playing:Dynamic;
	var totalFrames:Dynamic;
}
