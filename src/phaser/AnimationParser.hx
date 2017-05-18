package phaser;

/**
* Responsible for parsing sprite sheet and JSON data into the internal FrameData format that Phaser uses for animations.
*/
@:native("Phaser.AnimationParser")
extern class AnimationParser {

	/**
	* Parse the JSON data and extract the animation frame data from it.
	* 
	* @param game A reference to the currently running game.
	* @param json The JSON data from the Texture Atlas. Must be in Array format.
	* @return A FrameData object containing the parsed frames.
	*/
	static function JSONData(game:phaser.Game, json:Dynamic):phaser.FrameData;
	
	/**
	* Parse the JSON data and extract the animation frame data from it.
	* 
	* @param game A reference to the currently running game.
	* @param json The JSON data from the Texture Atlas. Must be in JSON Hash format.
	* @return A FrameData object containing the parsed frames.
	*/
	static function JSONDataHash(game:phaser.Game, json:Dynamic):phaser.FrameData;
	
	/**
	* Parse the JSON data and extract the animation frame data from it.
	* 
	* @param game A reference to the currently running game.
	* @param json The JSON data from the Texture Atlas. Must be in Pyxel JSON format.
	* @return A FrameData object containing the parsed frames.
	*/
	static function JSONDataPyxel(game:phaser.Game, json:Dynamic):phaser.FrameData;
	
	/**
	* Parse a Sprite Sheet and extract the animation frame data from it.
	* 
	* @param game A reference to the currently running game.
	* @param key The Game.Cache asset key of the Sprite Sheet image or an actual HTML Image element.
	* @param frameWidth The fixed width of each frame of the animation.
	* @param frameHeight The fixed height of each frame of the animation.
	* @param frameMax The total number of animation frames to extract from the Sprite Sheet. The default value of -1 means "extract all frames". - Default: -1
	* @param margin If the frames have been drawn with a margin, specify the amount here.
	* @param spacing If the frames have been drawn with spacing between them, specify the amount here.
	* @param skipFrames Skip a number of frames. Useful when there are multiple sprite sheets in one image.
	* @return A FrameData object containing the parsed frames.
	*/
	static function spriteSheet(game:phaser.Game, key:String, frameWidth:Float, frameHeight:Float, ?frameMax:Float, ?margin:Float, ?spacing:Float, ?skipFrames:Float):phaser.FrameData;
	
	/**
	* Parse the XML data and extract the animation frame data from it.
	* 
	* @param game A reference to the currently running game.
	* @param xml The XML data from the Texture Atlas. Must be in Starling XML format.
	* @return A FrameData object containing the parsed frames.
	*/
	static function XMLData(game:phaser.Game, xml:Dynamic):phaser.FrameData;
	
}

