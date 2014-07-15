package phaser.animation;

@:native("Phaser.AnimationParser")
extern class AnimationParser {
	
	/**
	 * Parse a Sprite Sheet and extract the animation frame data from it.
	 */
	function spriteSheet (game:phaser.core.Game, key:String, frameWidth:Float, frameHeight:Float, ?frameMax:Float, ?margin:Float = 0, ?spacing:Float = 0):phaser.animation.FrameData;
	
	/**
	 * Parse the JSON data and extract the animation frame data from it.
	 */
	function JSONData (game:phaser.core.Game, json:Dynamic):phaser.animation.FrameData;
	
	/**
	 * Parse the JSON data and extract the animation frame data from it.
	 */
	function JSONDataHash (game:phaser.core.Game, json:Dynamic):phaser.animation.FrameData;
	
	/**
	 * Parse the XML data and extract the animation frame data from it.
	 */
	function XMLData (game:phaser.core.Game, xml:Dynamic):phaser.animation.FrameData;
	
}
