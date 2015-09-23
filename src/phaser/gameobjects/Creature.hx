package phaser.gameobjects;

@:native("Phaser.Creature")
extern class Creature extends phaser.gameobjects.components.Reset {
	
	/**
	 * Creature is a custom Game Object used in conjunction with the Creature Runtime libraries by Kestrel Moon Studios.
	 * 
	 * It allows you to display animated Game Objects that were created with the <a href="http://www.kestrelmoon.com/creature/">Creature Automated Animation Tool</a>.
	 * 
	 * Note 1: You can only use Phaser.Creature objects in WebGL enabled games. They do not work in Canvas mode games.
	 * 
	 * Note 2: You must use a build of Phaser that includes the CreatureMeshBone.js runtime and gl-matrix.js, or have them
	 * loaded before your Phaser game boots.
	 * 
	 * See the Phaser custom build process for more details.
	 * 
	 * By default the Creature runtimes are NOT included in any pre-configured version of Phaser.
	 * 
	 * So you'll need to do grunt custom to create a build that includes them.
	 */
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, key:String, mesh:String, ?animation:String = 'default'):Void {})
	function new (game:phaser.core.Game, x:Float, y:Float, key:phaser.pixi.textures.Texture, mesh:String, ?animation:String = 'default');
	
	/**
	 * The const type of this object.
	 */
	var type(default, null):Float;
	
	/**
	 * The Creature instance.
	 */
	var _creature:Dynamic;
	
	/**
	 * The CreatureAnimation instance.
	 */
	var animation:Dynamic;
	
	/**
	 * The CreatureManager instance for this object.
	 */
	var manager:Dynamic;
	
	/**
	 * How quickly the animation advances.
	 */
	var timeDelta:Float;
	
	/**
	 * The texture the animation is using.
	 */
	var texture:phaser.pixi.textures.Texture;
	
	/**
	 * The minimum bounds point.
	 */
	var creatureBoundsMin:phaser.geom.Point;
	
	/**
	 * The maximum bounds point.
	 */
	var creatureBoundsMax:phaser.geom.Point;
	
	/**
	 * The vertices data.
	 */
	var vertices:Dynamic;
	
	/**
	 * The UV data.
	 */
	var uvs:Dynamic;
	
	/**
	 * @property {PIXI.Uint16Array} indices
	 */
	var indices:Dynamic;
	
	/**
	 * The vertices colors
	 */
	var colors:Dynamic;
	
	/**
	 * Automatically called by World.preUpdate.
	 */
	function preUpdate ():Void;
	
	/**
	 * Sets the Animation this Creature object will play, as defined in the mesh data.
	 */
	function setAnimation (key:String):Void;
	
	/**
	 * Plays the currently set animation.
	 */
	function play (?loop:Bool = false):Void;
	
	/**
	 * Stops the currently playing animation.
	 */
	function stop ():Void;
	
	/**
	 * @name Phaser.Creature#isPlaying
	 */
	var isPlaying:Bool;
	
	/**
	 * @name Phaser.Creature#loop
	 */
	var loop:Bool;
	
}
