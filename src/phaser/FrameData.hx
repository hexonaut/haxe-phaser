package phaser;

/**
* FrameData is a container for Frame objects, which are the internal representation of animation data in Phaser.
*/
@:native("Phaser.FrameData")
extern class FrameData {

	/**
	* The total number of frames in this FrameData set.
	*/
	var total:Float;
	
	/**
	* Adds a new Frame to this FrameData collection. Typically called by the Animation.Parser and not directly.
	* 
	* @param frame The frame to add to this FrameData set.
	* @return The frame that was just added.
	*/
	function addFrame(frame:Frame):phaser.Frame;
	
	/**
	* Check if there is a Frame with the given name.
	* 
	* @param name The name of the frame you want to check.
	* @return True if the frame is found, otherwise false.
	*/
	function checkFrameName(name:String):Bool;
	
	/**
	* Makes a copy of this FrameData including copies (not references) to all of the Frames it contains.
	* 
	* @return A clone of this object, including clones of the Frame objects it contains.
	*/
	function clone():phaser.FrameData;
	
	/**
	* Get a Frame by its numerical index.
	* 
	* @param index The index of the frame you want to get.
	* @return The frame, if found.
	*/
	function getFrame(index:Float):phaser.Frame;
	
	/**
	* Get a Frame by its frame name.
	* 
	* @param name The name of the frame you want to get.
	* @return The frame, if found.
	*/
	function getFrameByName(name:String):phaser.Frame;
	
	/**
	* Returns all of the Frame indexes in this FrameData set.
	* The frames indexes are returned in the output array, or if none is provided in a new Array object.
	* 
	* @param frames An Array containing the indexes of the frames to retrieve. If undefined or the array is empty then all frames in the FrameData are returned.
	* @param useNumericIndex Are the given frames using numeric indexes (default) or strings? (false) - Default: true
	* @param output If given the results will be appended to the end of this array otherwise a new array will be created.
	* @return An array of all Frame indexes matching the given names or IDs.
	*/
	function getFrameIndexes(?frames:Array<Float>, ?useNumericIndex:Bool, ?output:Array<Float>):Array<Float>;
	
	/**
	* Returns a range of frames based on the given start and end frame indexes and returns them in an Array.
	* 
	* @param start The starting frame index.
	* @param end The ending frame index.
	* @param output If given the results will be appended to the end of this array otherwise a new array will be created.
	* @return An array of Frames between the start and end index values, or an empty array if none were found.
	*/
	function getFrameRange(start:Float, end:Float, output:Array<phaser.Frame>):Array<phaser.Frame>;
	
	/**
	* Returns all of the Frames in this FrameData set where the frame index is found in the input array.
	* The frames are returned in the output array, or if none is provided in a new Array object.
	* 
	* @param frames An Array containing the indexes of the frames to retrieve. If the array is empty or undefined then all frames in the FrameData are returned.
	* @param useNumericIndex Are the given frames using numeric indexes (default) or strings? (false) - Default: true
	* @param output If given the results will be appended to the end of this array otherwise a new array will be created.
	* @return An array of all Frames in this FrameData set matching the given names or IDs.
	*/
	function getFrames(?frames:Array<Float>, ?useNumericIndex:Bool, ?output:Array<phaser.Frame>):Array<phaser.Frame>;
	
}

