package phaser.plugin.juicy;

/**
* Creates a new `Juicy.Trail` object.
*/
@:native("Phaser.Plugin.Juicy.Trail")
extern class Trail {

	/**
	* Creates a new `Juicy.Trail` object.
	* 
	* @param game Current game instance.
	* @param trailLength The length of the trail - Default: 100
	* @param color The color of the trail - Default: 0xFFFFFF
	*/
	function new(game:phaser.Game, ?trailLength:Float, ?color:Float);
	
	/**
	* The target sprite whose movement we want to create the trail from
	*/
	var target:phaser.Sprite;
	
	/**
	* The number of segments to use to create the trail
	*/
	var trailLength:Float;
	
	/**
	* The width of the trail
	*/
	var trailWidth:Float;
	
	/**
	* Whether or not to taper the trail towards the end
	*/
	var trailScaling:Bool;
	
	/**
	* The color of the trail
	*/
	var trailColor:Float;
	
	/**
	* Updates the Trail if a target is set
	*/
	function update():Void;
	
	/**
	* Adds a segment to the segments list and culls the list if it is too long
	* 
	* @param x The x position of the point
	* @param y The y position of the point
	*/
	function addSegment(x:Float, y:Float):Void;
	
	/**
	* Creates and draws the triangle trail from segments
	* 
	* @param offsetX The x position of the object
	* @param offsetY The y position of the object
	*/
	function redrawSegments(offsetX:Float, offsetY:Float):Void;
	
}

