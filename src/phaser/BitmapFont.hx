package phaser;

import js.html.ImageElement as HTMLImageElement;

@:native("Phaser.BitmapFont")
extern interface BitmapFont {

	var base:pixi.BaseTexture;
	
	var data:HTMLImageElement;
	
	var font:phaser.BMFont;
	
	var url:String;
	
}

