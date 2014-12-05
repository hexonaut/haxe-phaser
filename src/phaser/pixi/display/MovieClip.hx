package phaser.pixi.display;

@:native("PIXI.MovieClip")
extern class MovieClip extends phaser.pixi.display.Sprite {
	
	/**
	 * The array of textures that make up the animation
	 */
	var textures:Dynamic;
	
	/**
	 * The speed that the MovieClip will play at. Higher is faster, lower is slower
	 */
	var animationSpeed:Float;
	
	/**
	 * Whether or not the movie clip repeats after playing.
	 */
	var loop:Bool;
	
	/**
	 * Function to call when a MovieClip finishes playing
	 */
	var onComplete:Dynamic;
	
	/**
	 * [read-only] The MovieClips current frame index (this may not have to be a whole number)
	 */
	var currentFrame:Float;
	
	/**
	 * [read-only] Indicates if the MovieClip is currently playing
	 */
	var playing:Bool;
	
	/**
	 * [read-only] totalFrames is the total number of frames in the MovieClip. This is the same as number of textures
	 * assigned to the MovieClip.
	 */
	var totalFrames:Float;
	
}
