package phaser.physics.p2;

/**
* Allow to access a list of created fixture (coming from Body#addPhaserPolygon)
* which itself parse the input from PhysicsEditor with the custom phaser exporter.
* You can access fixtures of a Body by a group index or even by providing a fixture Key.
* You can set the fixture key and also the group index for a fixture in PhysicsEditor.
* This gives you the power to create a complex body built of many fixtures and modify them
* during runtime (to remove parts, set masks, categories & sensor properties)
*/
@:native("Phaser.Physics.P2.FixtureList")
extern class FixtureList {

	/**
	* Allow to access a list of created fixture (coming from Body#addPhaserPolygon)
	* which itself parse the input from PhysicsEditor with the custom phaser exporter.
	* You can access fixtures of a Body by a group index or even by providing a fixture Key.
	* You can set the fixture key and also the group index for a fixture in PhysicsEditor.
	* This gives you the power to create a complex body built of many fixtures and modify them
	* during runtime (to remove parts, set masks, categories & sensor properties)
	* 
	* @param list A list of fixtures (from Phaser.Physics.P2.Body#addPhaserPolygon)
	*/
	function new(list:Array<Dynamic>);
	
	/**
	* A helper to flatten arrays. This is very useful as the fixtures are nested from time to time due to the way P2 creates and splits polygons.
	* 
	* @param array The array to flatten. Notice: This will happen recursive not shallow.
	*/
	function flatten(array:Array<Dynamic>):Array<Dynamic>;
	
	/**
	* Accessor to get either a list of specified fixtures by key or the whole fixture list
	* 
	* @param keys A list of fixture keys
	*/
	function getFixtures(keys:String):Array<Dynamic>;
	
	/**
	* Accessor to get either a single fixture by its key.
	* 
	* @param key The key of the fixture.
	*/
	function getFixtureByKey(key:String):Array<Dynamic>;
	
	/**
	* Accessor to get a group of fixtures by its group index.
	* 
	* @param groupID The group index.
	*/
	function getGroup(groupID:Float):Array<Dynamic>;
	
	function init():Void;
	
	/**
	* Parser for the output of Phaser.Physics.P2.Body#addPhaserPolygon
	*/
	function parse():Void;
	
	/**
	* undefined
	* 
	* @param bit The bit to set as the collision group.
	* @param fixtureKey Only apply to the fixture with the given key.
	*/
	function setCategory(bit:Float, fictureKey:String):Void;
	
	/**
	* undefined
	* 
	* @param bit The bit to set as the collision mask
	* @param fixtureKey Only apply to the fixture with the given key
	*/
	function setMask(bit:Float, fixtureKey:String):Void;
	
	/**
	* undefined
	* 
	* @param material The contact material for a fixture
	* @param fixtureKey Only apply to the fixture with the given key
	*/
	function setMaterial(material:Dynamic, fixtureKey:String):Void;
	
	/**
	* undefined
	* 
	* @param value sensor true or false
	* @param fixtureKey Only apply to the fixture with the given key
	*/
	function setSensor(value:Bool, fixtureKey:String):Void;
	
}

