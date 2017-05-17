package phaser;

@:native("Phaser.BMFont")
extern interface BMFont {

	var chars:Array<phaser.BMFontChar>;
	
	var font:String;
	
	var lineHeight:Float;
	
	var size:Float;
	
}

