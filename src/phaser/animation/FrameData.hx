package phaser.animation;

@:native("Phaser.FrameData")
extern class FrameData {
	
	/**
	 * FrameData is a container for Frame objects, which are the internal representation of animation data in Phaser.
	 */
	function new ();
	
	/**
	 * Local array of frames.
	 */
	var _frames:Array<Dynamic>;
	
	/**
	 * Local array of frame names for name to index conversions.
	 */
	var _frameNames:Array<Dynamic>;
	
	/**
	 * Adds a new Frame to this FrameData collection. Typically called by the Animation.Parser and not directly.
	 */
	function addFrame (frame:phaser.animation.Frame):phaser.animation.Frame;
	
	/**
	 * Get a Frame by its numerical index.
	 */
	function getFrame (index:Float):phaser.animation.Frame;
	
	/**
	 * Get a Frame by its frame name.
	 */
	function getFrameByName (name:String):phaser.animation.Frame;
	
	/**
	 * Check if there is a Frame with the given name.
	 */
	function checkFrameName (name:String):Bool;
	
	/**
	 * Makes a copy of this FrameData including copies (not references) to all of the Frames it contains.
	 */
	function clone ():phaser.animation.FrameData;
	
	/**
	 * Returns a range of frames based on the given start and end frame indexes and returns them in an Array.
	 */
	function getFrameRange (start:Float, end:Float, ?output:Array<Dynamic>):Array<Dynamic>;
	
	/**
	 * Returns all of the Frames in this FrameData set where the frame index is found in the input array.
	 * The frames are returned in the output array, or if none is provided in a new Array object.
	 */
	function getFrames (frames:Array<Dynamic>, ?useNumericIndex:Bool = true, ?output:Array<Dynamic>):Array<Dynamic>;
	
	/**
	 * Returns all of the Frame indexes in this FrameData set.
	 * The frames indexes are returned in the output array, or if none is provided in a new Array object.
	 */
	function getFrameIndexes (frames:Array<Dynamic>, ?useNumericIndex:Bool = true, ?output:Array<Dynamic>):Array<Dynamic>;
	
	/**
	 * @name Phaser.FrameData#total
	 */
	var total(default, null):Float;
	
}
