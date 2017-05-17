package phaser;

@:native("Phaser.BMFontChar")
extern interface BMFontChar {

	var x:Float;
	
	var y:Float;
	
	var width:Float;
	
	var height:Float;
	
	var xOffset:Float;
	
	var yOffset:Float;
	
	var xAdvance:Float;
	
	var kerning:Array<Float>;
	
	var texture:pixi.BaseTexture;
	
}

