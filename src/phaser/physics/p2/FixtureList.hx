package phaser.physics.p2;

@:native("Phaser.Physics.P2.FixtureList")
extern class FixtureList {
	
	/**
	 * Allow to access a list of created fixture (coming from Body#addPhaserPolygon)
	 * which itself parse the input from PhysicsEditor with the custom phaser exporter.
	 * You can access fixtures of a Body by a group index or even by providing a fixture Key.
	 * 
	 * You can set the fixture key and also the group index for a fixture in PhysicsEditor.
	 * This gives you the power to create a complex body built of many fixtures and modify them
	 * during runtime (to remove parts, set masks, categories &amp; sensor properties)
	 */
	function new (list:Array<Dynamic>);
	
	/**
	 * Collect all fixtures with a key
	 */
	var namedFixtures:Dynamic;
	
	/**
	 * Collect all given fixtures per group index. Notice: Every fixture with a key also belongs to a group
	 */
	var groupedFixtures:Array<Dynamic>;
	
	/**
	 * This is a list of everything in this collection
	 */
	var allFixtures:Array<Dynamic>;
	
	/**
	 * Accessor to get either a list of specified fixtures by key or the whole fixture list
	 */
	function getFixtures (keys:Array<Dynamic>):Void;
	
	/**
	 * Accessor to get either a single fixture by its key.
	 */
	function getFixtureByKey (key:String):Void;
	
	/**
	 * Accessor to get a group of fixtures by its group index.
	 */
	function getGroup (groupID:Float):Void;
	
	/**
	 * Parser for the output of Phaser.Physics.P2.Body#addPhaserPolygon
	 */
	function parse ():Void;
	
	/**
	 * A helper to flatten arrays. This is very useful as the fixtures are nested from time to time due to the way P2 creates and splits polygons.
	 */
	function flatten (array:Array<Dynamic>):Void;
	
}
