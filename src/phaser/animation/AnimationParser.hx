package phaser.animation;

@:native("Phaser.AnimationParser")
extern class AnimationParser {
	function spriteSheet (game:phaser.core.Game, key:String, frameWidth:Float, frameHeight:Float, ?frameMax:Float, ?margin:Float = 0, ?spacing:Float = 0):phaser.animation.FrameData;
	function JSONData (game:phaser.core.Game, json:Dynamic, cacheKey:String):phaser.animation.FrameData;
	function JSONDataHash (game:phaser.core.Game, json:Dynamic, cacheKey:String):phaser.animation.FrameData;
	function XMLData (game:phaser.core.Game, xml:Dynamic, cacheKey:String):phaser.animation.FrameData;
}
